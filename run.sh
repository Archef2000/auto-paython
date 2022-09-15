cd /app
if [ -f requirements.txt ]; then
  pip install -r requirements.txt
else
  :
fi
COMMAND="flask run -h 0.0.0.0 -p 5000"
eval $COMMAND
