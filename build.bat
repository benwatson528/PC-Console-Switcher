@echo off
echo === PC-Console Switcher Build ===
echo.

echo [1/3] Installing dependencies...
pip install -r requirements.txt
if %ERRORLEVEL% neq 0 (
    echo Failed to install dependencies.
    pause
    exit /b 1
)

echo.
echo [2/3] Building executable...
pyinstaller --noconfirm --onefile --windowed ^
    --name "main" ^
    --icon "icon.ico" ^
    --add-data "nircmd.exe;." ^
    --add-data "controller.png;." ^
    --add-data "icon.ico;." ^
    --hidden-import ctypes ^
    --hidden-import pystray._win32 ^
    main.py

if %ERRORLEVEL% neq 0 (
    echo Build failed.
    pause
    exit /b 1
)

echo.
echo [3/3] Copying nircmd.exe to dist folder...
copy nircmd.exe dist\ >nul

echo.
echo === Build complete! ===
echo Output: dist\main.exe
echo.
pause
