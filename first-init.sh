yum -y install python-pip
python -m pip install --upgrade pip
pip install -U opencv-python
pip install -U numpy
pip install -U tensorflow
pip install -U cython
cd utils/bbox
chmod +x make.sh
./make.sh