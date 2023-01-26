import zipfile

def bruteforce_zip(zip_file, password_file):
    with open(password_file, "r") as f:
        passwords = f.readlines()
    for password in passwords:
        try:
            with zipfile.ZipFile(zip_file, "r") as zf:
                zf.extractall(pwd=password.strip().encode())
                print(f"[+] Password found: {password.strip()}")
                return password.strip()
        except:
            pass
    print("[-] Password not found in the list")
    return None

zip_file = "file.zip"
password_file = "passwords.txt"
bruteforce_zip(zip_file, password_file)

