echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/g-r-e-e-n/greenplayer /greenplayer
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/g-r-e-e-n/greenplayer -b $BRANCH /greenplayer
fi
cd /VCPlayerBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
