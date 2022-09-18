echo ":: Container started"
cd /app
if [ -f requirements.txt ]; then
  echo "::: Installing python modules"
  PATH="${PATH}:/home/user/.local/bin"
  pip install -r requirements.txt > /dev/null
  echo "::: Finished installing python modules"
fi
echo "::: Executing command"
#COMMAND=${COMMAND//\"/}
eval ${COMMAND//\"/}

