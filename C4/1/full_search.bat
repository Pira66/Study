@echo off
fpc full_search1.lpr > NUL
for %%a in (tests\*.a) do (
  full_search1.exe < tests\%%~na > tests\%%~na.out
  fc /A tests\%%~na.out tests\%%~na.a
  del tests\%%~na.out
)
del full_search1.exe