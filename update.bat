@echo off
echo git add .
git add .

set now=%date% %time%
echo Update time: %now%
git commit -m "update at %now%"

echo git push
git push
pause