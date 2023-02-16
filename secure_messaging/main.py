import os
import getpass
from cryptography.fernet import Fernet
from cryptography.hazmat.primitives import hashes, padding
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC


def generate_key(password):
    """Generate a key using PBKDF2HMAC with SHA-256."""
    password = password.encode()
    salt = os.urandom(16)
    kdf = PBKDF2HMAC(
        algorithm=hashes.SHA256(),
        length=32,
        salt=salt,
        iterations=100000,
    )
    key = kdf.derive(password)
    return key


def encrypt_file(filename, key):
    """Encrypt a file using AES in CBC mode with a random IV."""
    with open(filename, 'rb') as f:
        data = f.read()

    iv = os.urandom(16)
    padder = padding.PKCS7(algorithms.AES.block_size).padder()
    data_padded = padder.update(data) + padder.finalize()

    cipher = Cipher(algorithms.AES(key), modes.CBC(iv))
    encryptor = cipher.encryptor()
    encrypted_data = encryptor.update(data_padded) + encryptor.finalize()

    with open(filename, 'wb') as f:
        f.write(iv + encrypted_data)


def decrypt_file(filename, key):
    """Decrypt a file encrypted with AES in CBC mode with a random IV."""
    with open(filename, 'rb') as f:
        data = f.read()

    iv = data[:16]
    encrypted_data = data[16:]

    cipher = Cipher(algorithms.AES(key), modes.CBC(iv))
    decryptor = cipher.decryptor()
    data_padded = decryptor.update(encrypted_data) + decryptor.finalize()

    unpadder = padding.PKCS7(algorithms.AES.block_size).unpadder()
    data_unpadded = unpadder.update(data_padded) + unpadder.finalize()

    with open(filename, 'wb') as f:
        f.write(data_unpadded)


def main():
    """Prompt the user to encrypt or decrypt a file."""
    filename = input("Enter the name of the file to encrypt or decrypt: ")
    if not os.path.isfile(filename):
        print("File not found.")
        sys.exit(1)

    mode = input("Encrypt or decrypt? (e/d): ").lower()
    if mode not in ('e', 'd'):
        print("Invalid mode.")
        sys.exit(1)

    password = getpass.getpass("Enter a password: ")
    key = generate_key(password)

    if mode == 'e':
        encrypt_file(filename, key)
        print("File encrypted.")
    else:
        decrypt_file(filename, key)
        print("File decrypted.")


if __name__ == '__main__':
    main()

