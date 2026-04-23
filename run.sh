echo "Cloning Repo...."

if [ -z "$BRANCH" ]
then
  echo "Cloning main branch...."
  git clone https://github.com/anujedits23-design/Advance-Content-Saver-Bot
  cd Advance-Content-Saver-Bot
else
  echo "Cloning $BRANCH branch...."
  git clone -b $BRANCH https://github.com/anujedits23-design/Advance-Content-Saver-Bot
  cd Advance-Content-Saver-Bot
fi

pip3 install -U -r requirements.txt

echo "Starting Bot...."
python3 main.py
