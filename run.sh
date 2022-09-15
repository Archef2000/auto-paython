#pip install -r /app/requirements.txt
cd /app
#ls
if [ -f requirements.txt ]; then
  pip install -r requirements.txt
  #echo "hi"
else
  :
fi
#echo $COMMAND
#cat /run.sh
COMMAND="flask run -h 0.0.0.0 -p 5000"
eval $COMMAND
