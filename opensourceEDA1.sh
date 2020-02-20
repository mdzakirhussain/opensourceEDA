mkdir -p work/{tools,tcl,tk}
mv qrouter-1.4.59.tgz work/tools/.
mv magic-8.2.182.tgz work/tools/.
mv netgen-1.5.136.tgz work/tools/.
mv qflow-1.3.18.tgz work/tools/.
mv tcl8.6.10-src.tar.gz work/tcl/.
mv tk8.6.10-src.tar.gz work/tk/.
sudo apt-get install build-essential clang bison flex \
libreadline-dev gawk tcl-dev libffi-dev git \
graphviz xdot pkg-config python3 libboost-system-dev \
libboost-python-dev libboost-filesystem-dev zlib1g-dev
git clone https://github.com/YosysHQ/yosys
cd yosys
sudo make
sudo make install
sudo apt-get update -y
sudo apt-get install -y libgsl0-dev
sudo apt-get install libx11-dev
sudo apt install cmake
git clone https://github.com/rubund/graywolf
cd graywolf
mkdir build
cd build
cmake ../
sudo make
sudo make install
sudo apt-get install tcsh
sudo apt-get install tcl-dev tk-dev
cd work/tcl
tar xzvf tcl8.6.10-src.tar.gz
cd tcl8.5.0/unix
./configure
sudo make
sudo make test
sudo make install
cd work/tk
tar xzvf tk8.6.10-src.tar.gz
cd tk8.5.0/unix
./configure
sudo make
sudo make test
sudo make install
cd ..
cd work/tools
tar xzvf qrouter-1.4.59.tgz
cd qrouter
./configure
sudo make
sudo make install
sudo apt-get install libcairo2-dev
tar xzvf magic-8.2.182.tgz
cd magic
./configure
sudo make
sudo make install
tar xzvf netgen-1.5.136.tgz
cd netgen
./configure
sudo make
sudo make install
sudo apt-get install python3-tk
tar xzvf qflow-1.3.18.tgz
cd qflow
./configure
sudo make
sudo make install