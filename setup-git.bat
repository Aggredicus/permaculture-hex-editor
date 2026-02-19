@echo off
echo ========================================
echo Permaculture Hex Editor - Git Setup
echo ========================================
echo.

REM Check if git is available
where git >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Git is not found in PATH
    echo.
    echo Please do one of the following:
    echo 1. Restart your terminal/PowerShell after installing Git
    echo 2. Or manually add Git to PATH:
    echo    - Usually installed at: C:\Program Files\Git\cmd
    echo    - Add to System Environment Variables
    echo.
    pause
    exit /b 1
)

echo Git found! Initializing repository...
echo.

cd /d "%~dp0"

REM Initialize git repository
git init
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Failed to initialize git repository
    pause
    exit /b 1
)

REM Add all files
echo.
echo Adding files...
git add .

REM Create initial commit
echo.
echo Creating initial commit...
git commit -m "Initial commit: Permaculture Hex Grid Design Map Editor"

echo.
echo ========================================
echo Repository initialized successfully!
echo ========================================
echo.
echo Next steps:
echo 1. Create a repository on GitHub at: https://github.com/new
echo 2. Name it: permaculture-hex-editor
echo 3. DO NOT initialize with README, .gitignore, or license
echo 4. Then run: push-to-github.bat
echo.
pause
