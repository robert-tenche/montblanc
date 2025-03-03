$ErrorActionPreference='Stop'

cmake -S . -B _cmake_build -G "Unix Makefiles" -D MONTBLANC_LANG=ANSI_C

if ($LastExitCode -ne 0) { exit }

cmake --build _cmake_build

if ($LastExitCode -ne 0) { exit }

./_cmake_build/sandbox/sandbox.exe
