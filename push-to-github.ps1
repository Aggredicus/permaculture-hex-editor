# PowerShell script to push permaculture-hex-editor to GitHub
# Make sure Git is installed and you've created the repository on GitHub first

Write-Host "=== Permaculture Hex Editor - GitHub Upload ===" -ForegroundColor Green
Write-Host ""

# Check if git is installed
try {
    $gitVersion = git --version
    Write-Host "Git found: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Git is not installed or not in PATH" -ForegroundColor Red
    Write-Host "Please install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Write-Host "Or use GitHub Desktop: https://desktop.github.com/" -ForegroundColor Yellow
    exit 1
}

# Get GitHub username and repository name
$githubUsername = Read-Host "Enter your GitHub username"
$repoName = Read-Host "Enter repository name (default: permaculture-hex-editor)"
if ([string]::IsNullOrWhiteSpace($repoName)) {
    $repoName = "permaculture-hex-editor"
}

Write-Host ""
Write-Host "Repository will be: https://github.com/$githubUsername/$repoName" -ForegroundColor Cyan
Write-Host ""

# Confirm repository exists
$confirm = Read-Host "Have you created this repository on GitHub? (y/n)"
if ($confirm -ne "y" -and $confirm -ne "Y") {
    Write-Host "Please create the repository first at: https://github.com/new" -ForegroundColor Yellow
    Write-Host "Repository name: $repoName" -ForegroundColor Yellow
    Write-Host "DO NOT initialize with README, .gitignore, or license" -ForegroundColor Yellow
    exit 1
}

# Change to project directory
$projectPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $projectPath
Write-Host "Working directory: $projectPath" -ForegroundColor Cyan

# Initialize git if not already initialized
if (-not (Test-Path ".git")) {
    Write-Host "Initializing git repository..." -ForegroundColor Yellow
    git init
} else {
    Write-Host "Git repository already initialized" -ForegroundColor Green
}

# Add all files
Write-Host "Adding files..." -ForegroundColor Yellow
git add .

# Check if there are changes to commit
$status = git status --porcelain
if ([string]::IsNullOrWhiteSpace($status)) {
    Write-Host "No changes to commit" -ForegroundColor Yellow
} else {
    Write-Host "Creating initial commit..." -ForegroundColor Yellow
    git commit -m "Initial commit: Permaculture Hex Grid Design Map Editor"
}

# Check if remote already exists
$remoteExists = git remote get-url origin 2>$null
if ($LASTEXITCODE -eq 0) {
    Write-Host "Remote 'origin' already exists: $remoteExists" -ForegroundColor Yellow
    $updateRemote = Read-Host "Update remote URL? (y/n)"
    if ($updateRemote -eq "y" -or $updateRemote -eq "Y") {
        git remote set-url origin "https://github.com/$githubUsername/$repoName.git"
    }
} else {
    Write-Host "Adding remote repository..." -ForegroundColor Yellow
    git remote add origin "https://github.com/$githubUsername/$repoName.git"
}

# Set branch to main
Write-Host "Setting branch to 'main'..." -ForegroundColor Yellow
git branch -M main

# Push to GitHub
Write-Host ""
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
Write-Host "You may be prompted for GitHub credentials" -ForegroundColor Cyan
Write-Host ""

git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "=== Success! ===" -ForegroundColor Green
    Write-Host "Repository is now available at: https://github.com/$githubUsername/$repoName" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Optional: Enable GitHub Pages in repository Settings to host the app online" -ForegroundColor Yellow
} else {
    Write-Host ""
    Write-Host "=== Push failed ===" -ForegroundColor Red
    Write-Host "Common issues:" -ForegroundColor Yellow
    Write-Host "1. Authentication: Use GitHub Desktop or set up SSH keys" -ForegroundColor Yellow
    Write-Host "2. Repository doesn't exist: Create it at https://github.com/new" -ForegroundColor Yellow
    Write-Host "3. Network issues: Check your internet connection" -ForegroundColor Yellow
}
