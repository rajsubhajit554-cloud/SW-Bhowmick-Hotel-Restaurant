@echo off
echo =========================================
echo    SW Bhowmick Hotel & Restaurant
echo       Git Auto Update Tool
echo =========================================
echo.

git status

echo.
set /p commit_msg="Enter commit message (or press ENTER for default): "
if "%commit_msg%"=="" set commit_msg="Updated website files and assets"

echo.
echo Adding files to git...
git add .

echo.
echo Committing changes...
git commit -m "%commit_msg%"

echo.
echo Pushing to GitHub repository...
git push origin main

echo.
echo =========================================
echo    Git Update Completed Successfully!
echo =========================================
echo.
pause
