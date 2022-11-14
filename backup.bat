@echo off
cls
echo Please confirm backup
pause

cls
echo Beginning backup
echo Zipping folder...

tar.exe -z -c -f Private.zip Private

cls
echo Folder zipped
echo Moving folder...
move Private.zip D:\rumenBackup\regularlyUpdated\

cls
echo Folder moved

del Private.zip

cls
echo Extracting...
cd /D D:\rumenBackup\regularlyUpdated
rmdir /S /Q Private
tar.exe -x -f Private.zip Private
del Private.zip
echo %DATE%, %TIME% - Private >> backupHistory.txt.txt

cls
echo Backup complete!
pause