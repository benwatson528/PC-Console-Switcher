@echo off
echo === PC-Console Switcher Build ===
echo.

:: Find a Python with pip available
set PYTHON=
py -3.11 -c "import pip" >nul 2>&1 && set PYTHON=py -3.11
if not defined PYTHON py -3.12 -c "import pip" >nul 2>&1 && set PYTHON=py -3.12
if not defined PYTHON python -c "import pip" >nul 2>&1 && set PYTHON=python
if not defined PYTHON (
    echo ERROR: No Python with pip found. Install pip first:
    python -m ensurepip --upgrade
    pause
    exit /b 1
)

echo Using: %PYTHON%
echo.

echo [1/3] Installing dependencies...
%PYTHON% -m pip install -r requirements.txt
if %ERRORLEVEL% neq 0 (
    echo Failed to install dependencies.
    pause
    exit /b 1
)

echo.
echo [2/3] Building executable...
%PYTHON% -m PyInstaller --noconfirm --onefile --windowed ^
    --name "main" ^
    --icon "icon.ico" ^
    --add-data "nircmd.exe;." ^
    --add-data "controller.png;." ^
    --add-data "icon.ico;." ^
    --hidden-import ctypes ^
    --hidden-import XInput ^
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
