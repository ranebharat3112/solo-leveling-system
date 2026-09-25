@echo off
title Upload Solo Leveling System to GitHub
cd /d "%~dp0"

echo ================================================================
echo       SOLO LEVELING SYSTEM - ONE-CLICK GITHUB UPLOADER
echo ================================================================
echo.
echo Step 1: Agar GitHub par repo nahi banayi hai, toh browser me
echo         https://github.com/new khol kar repository banayein.
echo.
echo Step 2: Wahan se apna repository link copy karein.
echo         (Example: https://github.com/username/solo-leveling-system.git)
echo.
echo ================================================================
echo.

set /p REPO_URL="Apna GitHub Repo Link yahan paste karein (ya enter dabayein help ke liye): "

if "%REPO_URL%"=="" (
    echo.
    echo Opening https://github.com/new in your browser...
    start https://github.com/new
    echo.
    echo Repo banane ke baad dobara is file ko open karein!
    pause
    exit
)

echo.
echo [1/3] Adding Git Remote...
git remote remove origin 2>nul
git remote add origin %REPO_URL%

echo [2/3] Setting Main Branch...
git branch -M main

echo [3/3] Uploading to GitHub...
git push -u origin main

echo.
if %ERRORLEVEL% EQU 0 (
    echo ================================================================
    echo [SUCCESS] Badhai ho! Aapka project GitHub par upload ho gaya hai!
    echo ================================================================
) else (
    echo ================================================================
    echo [NOTE] Agar login prompt aaya ho toh browser me authorize karein.
    echo ================================================================
)

pause
