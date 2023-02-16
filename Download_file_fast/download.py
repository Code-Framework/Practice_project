import os
import sys
import requests
from concurrent.futures import ThreadPoolExecutor

def download_file(url, chunk_size=128):
    local_filename = url.split('/')[-1]
    response = requests.get(url, stream=True)
    total_size = int(response.headers.get('content-length', 0))
    progress = 0
    with open(local_filename, "wb") as f:
        for chunk in response.iter_content(chunk_size=chunk_size):
            f.write(chunk)
            progress += chunk_size
            print(f'Downloaded {progress/total_size*100:.2f}%')

def download_part(url, start, end):
    headers = {'Range': f'bytes={start}-{end}'}
    response = requests.get(url, headers=headers, stream=True)
    return response.content

def download_parallel(url, parts):
    chunk_size = int(requests.head(url).headers['Content-Length']) / parts
    with ThreadPoolExecutor(max_workers=parts) as executor:
        futures = [executor.submit(download_part, url, chunk_size*i, chunk_size*(i+1)-1) for i in range(parts)]
        chunks = [f.result() for f in futures]
    with open(url.split("/")[-1], "wb") as f:
        for chunk in chunks:
            f.write(chunk)
    print(f"Download complete: {url.split('/')[-1]}")

if __name__ == '__main__':
    download_parallel("ok", 4)

