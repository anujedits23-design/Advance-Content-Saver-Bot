echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/anujedits23-design/Advance-Content-Saver-Bot anujedits23-design/Advance-Content-Saver-Bot 
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/anujedits23-design/Advance-Content-Saver-Bot -b $BRANCH /fwdbot
fi
cd anujedits23-design/Advance-Content-Saver-Bot 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
