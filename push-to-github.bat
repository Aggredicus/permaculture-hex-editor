@echo off
echo ========================================
echo Push to GitHub
echo ========================================
echo.

REM Check if git is available
where git >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Git is not found in PATH
    echo Please restart your terminal after installing Git
    pause
    exit /b 1
)

cd /d "%~dp0"

REM Check if .git exists
if not exist ".git" (
    echo ERROR: Git repository not initialized
    echo Please run setup-git.bat first
    pause
    exit /b 1
)

echo Enter your GitHub username:
set /p GITHUB_USERNAME=

echo Enter repository name (default: permaculture-hex-editor):
set /p REPO_NAME=
if "%REPO_NAME%"=="" set REPO_NAME=permaculture-hex-editor

echo.
echo Repository: https://github.com/%GITHUB_USERNAME%/%REPO_NAME%
echo.
set /p CONFIRM="Have you created this repository on GitHub? (y/n): "
if /i not "%CONFIRM%"=="y" (
    echo.
    echo Please create the repository first:
    echo 1. Go to: https://github.com/new
    echo 2. Repository name: %REPO_NAME%
    echo 3. DO NOT initialize with README, .gitignore, or license
    echo 4. Then run this script again
    pause
    exit /b 1
)

echo.
echo Setting up remote...
git remote remove origin 2>nul
git remote add origin https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git

echo.
echo Setting branch to 'main'...
git branch -M main

echo.
echo Pushing to GitHub...
echo (You may be prompted for credentials)
echo.
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo Success! Repository pushed to GitHub!
    echo ========================================
    echo.
    echo View your repository at:
    echo https://github.com/%GITHUB_USERNAME%/%REPO_NAME%
    echo.
) else (
    echo.
    echo ========================================
    echo Push failed
    echo ========================================
    echo.
    echo Common issues:
    echo 1. Authentication: Use GitHub Desktop or Personal Access Token
    echo 2. Repository doesn't exist: Create it first
    echo 3. Network issues: Check internet connection
    echo.
    echo For easier authentication, use GitHub Desktop:
    echo https://desktop.github.com/
    echo.
)

pause
