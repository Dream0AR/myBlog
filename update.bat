@echo off
git pull
git add .
set now=%date% %time%
echo "Time:" %now%
git commit -m "update at %now%"
git push
pause