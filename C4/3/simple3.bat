@echo off
G:\lazarus\fpc\3.2.0\bin\x86_64-win64\fpc.exe simple3.exe
simple3.exe < tests\01 > tests\01.out
simple3.exe < tests\02 > tests\02.out
simple3.exe < tests\03 > tests\03.out
fc /A tests\01.out tests\01.a
fc /A tests\02.out tests\02.a
fc /A tests\03.out tests\03.a
del tests\*.out  