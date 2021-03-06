yum -y install python-pip python-devel gcc gcc-c++ unzip libSM libXrender libXext
cd ~/
mkdir alice-blurbot
cd alice-blurbot
wget https://github.com/NekoSunflower/Alice-BlurBot/archive/master.zip -O alice-blurbot.zip
unzip alice-blurbot.zip
mv Alice-BlurBot-master/* ./
rm -rf Alice-BlurBot-master
python -m pip install --upgrade pip
pip install -U opencv-python
pip install -U numpy
pip install -U tensorflow
pip install -U cython
cd utils/bbox
chmod +x make.sh
./make.sh
mv /usr/lib64/*/site-packages/utils/bbox/* ./
cd ~/alice-blurbot
wget https://image.moeclub.org/GoogleDrive/1HcZuB_MHqsKhKEKpfF1pEU85CYy4OlWO -O checkpoints_mlt.zip
unzip checkpoints_mlt.zip
