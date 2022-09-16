cd /app
if [ -f requirements.txt ]; then
  echo "::: Installing pip"
  PATH="${PATH}:/home/user/.local/bin"
  pip install -r requirements.txt > /dev/null
else
  :
fi
#COMMAND="flask run -h 0.0.0.0 -p 5000"

eval $COMMAND
