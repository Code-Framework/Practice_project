import sys
import os
import shutil

def replace_hosts_file():
    file_path = 'hosts'
    if not os.path.exists(file_path):
        print(f'Error: {file_path} does not exist')
        sys.exit(1)

    backup_path = '/etc/hosts.org'
    shutil.copy2('/etc/hosts', backup_path)

    with open(file_path, 'r') as f:
        new_hosts = f.read()

    with open('/etc/hosts', 'w') as f:
        f.write(new_hosts)

if __name__ == '__main__':
    replace_hosts_file()
    print('/etc/hosts file replaced successfully!')

