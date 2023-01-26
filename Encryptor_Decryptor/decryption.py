import os
import base64
from cryptography.fernet import Fernet
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC
from cryptography.hazmat.backends import default_backend

def decrypt_folder(folder_path, password):
    # Generate a key from the password
    password = password.encode()
    salt = b'\x8c\x12\xa9\x08\xea\x06\x1a\x19'
    kdf = PBKDF2HMAC(
        algorithm=hashes.SHA256,
        length=32,
        salt=salt,
        iterations=100000,
        backend=default_backend()
    )
    key = base64.urlsafe_b64encode(kdf.derive(password))
    # Create Fernet object
    fernet = Fernet(key)

    for root, dirs, files in os.walk(folder_path):
        for file in files:
            file_path = os.path.join(root, file)
            with open(file_path, 'rb') as f:
                data = f.read()
            decrypted_data = fernet.decrypt(data)
            with open(file_path, 'wb') as f:
                f.write(decrypted_data)

decrypt_folder("data", "mypassword")
