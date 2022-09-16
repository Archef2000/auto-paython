cd /app
if [ -f requirements.txt ]; then
  sudo -u user pip install -r requirements.txt > /dev/null 
elif [ -f requirements.txt ] && [[ "$SUDO" == true ]]
then
  pip install -r requirements.txt > /dev/null
else
  :
fi
COMMAND="flask run -h 0.0.0.0 -p 5000"
if [ "$SUDO" = true ]
then
  $COMMAND
else
  sudo -u user $COMMAND
fi
