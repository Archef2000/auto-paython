cd /app
if [ -f requirements.txt ]; then
  echo "::: Installing pip"
  PATH="${PATH}:/home/user/.local/bin"
  pip install -r requirements.txt > /dev/null
fi
eval $COMMAND
