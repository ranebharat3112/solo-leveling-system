import os
import sys
import subprocess
import shutil
from pathlib import Path

def find_browser():
    candidates = [
        # Microsoft Edge (Standard on all modern Windows machines)
        r"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe",
        r"C:\Program Files\Microsoft\Edge\Application\msedge.exe",
        os.path.expandvars(r"%LOCALAPPDATA%\Microsoft\Edge\Application\msedge.exe"),
        # Google Chrome
        r"C:\Program Files\Google\Chrome\Application\chrome.exe",
        r"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe",
        os.path.expandvars(r"%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe"),
        # Brave
        r"C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe",
    ]
    for p in candidates:
        if os.path.isfile(p):
            return p
    return None

def launch():
    base_dir = Path(__file__).resolve().parent
    html_file = (base_dir / "index.html").resolve()
    profile_dir = (base_dir / ".app_profile").resolve()
    profile_dir.mkdir(exist_ok=True)

    browser = find_browser()
    if not browser:
        print("[!] No Chromium browser found. Opening default web browser...")
        import webbrowser
        webbrowser.open(html_file.as_uri())
        return

    file_uri = html_file.as_uri()
    
    # Launch in standalone application window mode (frameless app window, no tabs, no url bar)
    cmd = [
        browser,
        f"--app={file_uri}",
        f"--user-data-dir={profile_dir}",
        "--window-size=1260,920",
        "--window-position=120,60",
        "--disable-extensions",
        "--disable-sync",
        "--app-id=solo-leveling-system"
    ]

    print("========================================================")
    print("   [THE SYSTEM] Solo Leveling Hunter OS Initiating...   ")
    print(f"   Target: {file_uri}")
    print("========================================================")
    
    subprocess.Popen(cmd)

if __name__ == "__main__":
    launch()
