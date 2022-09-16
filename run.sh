cd /app
whoami
if [ -f requirements.txt ]; then
  PATH="${PATH}:/home/user/.local/bin"
  pip install -r requirements.txt > /dev/null
else
  :
fi
COMMAND="sudo flask run -h 0.0.0.0 -p 5000"
if [[ $COMMAND == *"sudo"* ]]; then
  sudo PATH="${PATH}:/home/user/.local/bin"
fi

$COMMAND
