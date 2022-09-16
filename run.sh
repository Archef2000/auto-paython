cd /app
if [ -f requirements.txt ]; then
  sudo -u user pip install -r requirements.txt > /dev/null
else
  :
fi
COMMAND="flask run -h 0.0.0.0 -p 5000"
$COMMAND
