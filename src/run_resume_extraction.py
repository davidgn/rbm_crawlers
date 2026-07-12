import subprocess
import os

platforms = {
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

os.chdir(os.path.dirname(os.path.abspath(__file__)))
import sys
python_bin = sys.executable

for platform, territory in platforms.items():
    print(f"--- Resuming {platform} ({territory}) ---")
    cmd = [python_bin, "batch_processor.py", "--platform", platform, "--territory", territory]
    subprocess.run(cmd)
