import subprocess
import os

platforms = {
    "antqcart": "India",
    "apnabook": "India",
    "askitab": "India",
    "bookaao": "India",
    "bookbazar": "India",
    "bookchor": "India",
    "bookflow": "India",
    "bookhub": "India",
    "bookloop": "India",
    "bookmamu": "India",
    "bookmandee": "India",
    "books n bobs": "Malaysia",
    "books_com_tw": "Taiwan",
    "bookspie": "India",
    "booksya": "India",
    "clankart": "India",
    "govtjobsindia": "India",
    "graffittibooks": "India",
    "kaidee": "Thailand",
    "kitabain": "Pakistan",
    "kitabwalah": "India",
    "myoldbooks": "India",
    "naiin": "Thailand",
    "padhaiseekers": "India",
    "pustakmarket": "India",
    "pustakmart": "India",
    "pustakstore": "India",
    "reread": "India",
    "resellbooks": "India",
    "reusebooks": "India",
    "shelfswap": "India",
    "sumrux": "India",
    "taaze_tw": "Taiwan",
    "tiki_vn": "Vietnam"
}

os.chdir("/home/davidgn/active_repos/rbm_crawlers/src")

for platform, territory in platforms.items():
    print(f"--- Processing {platform} ({territory}) ---")
    cmd = ["/home/davidgn/.venvs/work/bin/python3", "batch_processor.py", "--platform", platform, "--territory", territory]
    subprocess.run(cmd)
