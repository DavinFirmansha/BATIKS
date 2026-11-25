@echo off
REM ============================================================
REM  BATIKS - Konsultan Statistika
REM  Skrip untuk menjalankan website secara lokal
REM ============================================================
setlocal
cd /d "%~dp0"

set PORT=5500
set URL=http://localhost:%PORT%/index.html

echo.
echo  ============================================
echo   BATIKS - Konsultan Statistika
echo  ============================================
echo.
echo  Menyiapkan server lokal...

REM --- Cari Python (py, lalu python) ---
where py >nul 2>nul
if %errorlevel%==0 (
  set PY=py
) else (
  where python >nul 2>nul
  if %errorlevel%==0 (
    set PY=python
  ) else (
    set PY=
  )
)

if "%PY%"=="" (
  echo.
  echo  [X] Python tidak ditemukan.
  echo      Pasang Python dari https://www.python.org/downloads/
  echo      atau jalankan dengan: npx serve
  echo.
  pause
  exit /b 1
)

echo  Membuka browser di %URL%
echo  (Tutup jendela ini untuk menghentikan server)
echo.

REM --- Buka browser setelah server siap ---
start "" cmd /c "timeout /t 2 >nul & start "" "%URL%""

REM --- Jalankan server (menghentikan dengan Ctrl+C) ---
%PY% -m http.server %PORT%

endlocal
