#!/bin/bash
set -e

echo "Cloning Repo...."

if [ -z "$BRANCH" ]; then
  echo "Cloning main branch...."
  git clone https://github.com/anujedits23-design/Advance-Content-Saver-Bot
else
  echo "Cloning $BRANCH branch...."
  git clone -b $BRANCH https://github.com/anujedits23-design/Advance-Content-Saver-Bot
fi

cd Advance-Content-Saver-Bot

pip3 install --no-cache-dir -U pip
pip3 install --no-cache-dir -r requirements.txt

echo "Starting Bot...."
python3 main.py
