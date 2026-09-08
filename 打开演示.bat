@echo off
rem ==== AI Pose Demo Launcher: open index.html with Chrome or Edge ====
set "PAGE=%~dp0index.html"
set "URL=file:///%PAGE:\=/%"

if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
  start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" "%URL%"
  exit /b
)
if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" (
  start "" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" "%URL%"
  exit /b
)
if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" (
  start "" "%LocalAppData%\Google\Chrome\Application\chrome.exe" "%URL%"
  exit /b
)
if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" (
  start "" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" "%URL%"
  exit /b
)
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
  start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" "%URL%"
  exit /b
)
if exist "%LocalAppData%\Microsoft\Edge\Application\msedge.exe" (
  start "" "%LocalAppData%\Microsoft\Edge\Application\msedge.exe" "%URL%"
  exit /b
)
rem Fallback: system default browser
start "" "%URL%"
