import hashlib
import subprocess

def check_hash(file_path, expected_hash):
    """Check the hash of a file against an expected value"""
    hasher = hashlib.sha256()
    with open(file_path, 'rb') as file:
        hasher.update(file.read())
    return hasher.hexdigest() == expected_hash

def execute_script(file_path, expected_hash):
    """Execute a script in its own address space if the file hash is valid"""
    if check_hash(file_path, expected_hash):
        subprocess.run(["python3",file_path])
    else:
        print("The file hash does not match the expected value. The file may have been tampered with.")

# Example usage
file_path = "script.py"
expected_hash = "07219cd9561b41ce1f39209958076c471b17855679c968b42767b0122423c782"
execute_script(file_path, expected_hash)
