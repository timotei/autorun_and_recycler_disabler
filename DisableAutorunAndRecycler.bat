@echo off

echo Disabling Autorun...
IF EXIST Autorun.inf del /f /s /q autorun.inf
mkdir AUTORUN.INF
attrib +r +a +s +h AUTORUN.INF

echo Disabling Recycler...
IF EXIST RECYCLER ren RECYCLER RECYLER_DEL
echo "Don't delete this!" > RECYCLER
attrib +r +a +s +h RECYCLER
IF EXIST RECYCLER_DEL rmdir /s /q RECYCLER_DEL

echo Done.
pause