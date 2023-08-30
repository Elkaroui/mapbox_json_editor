@echo off
rem Check if Python is installed
python --version > nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed.
    rem You can replace the URL with the actual Python installer link.
    rem Make sure to adjust the installer file name as needed.
    echo Downloading Python installer...
    curl -o python_installer.exe https://www.python.org/ftp/python/3.11.5/python-3.11.5-amd64.exe
    echo Installing Python...
    start /wait python_installer.exe
    echo Python has been installed.
    del python_installer.exe
) else (
    echo Python is already installed.
)

rem Run the Python server
start python -m http.server 8000

rem Open the browser
start http://localhost:8000/
