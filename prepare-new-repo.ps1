# Script to prepare project for new repository
Write-Host "Preparing project for new repository..." -ForegroundColor Green

# Remove old git history
Write-Host "Removing old .git folder..." -ForegroundColor Yellow
Remove-Item -Recurse -Force .git -ErrorAction SilentlyContinue

# Initialize new git repository
Write-Host "Initializing new git repository..." -ForegroundColor Yellow
git init
git branch -M main

# Add all files
Write-Host "Adding all files..." -ForegroundColor Yellow
git add .

# Create initial commit
Write-Host "Creating initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit - fresh start"

Write-Host "`nDone! Next steps:" -ForegroundColor Green
Write-Host "1. Create a new repository on GitHub" -ForegroundColor Cyan
Write-Host "2. Run: git remote add origin <YOUR_NEW_REPO_URL>" -ForegroundColor Cyan
Write-Host "3. Run: git push -u origin main" -ForegroundColor Cyan
Write-Host "4. Create a new Vercel project and connect it to the new repository" -ForegroundColor Cyan
