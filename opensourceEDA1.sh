mkdir -p work/tools work/tcl work/tk
#cd work
#mkdir tools
#mkdir tcl
#mkdir tk
mv qrouter-1.4.59.tgz work/tools/.
mv magic-8.2.182.tgz work/tools/.
mv netgen-1.5.136.tgz work/tools/.
mv qflow-1.3.18.tgz work/tools/.
mv tcl8.6.10-src.tar.gz work/tcl/.
mv tk8.6.10-src.tar.gz work/tk/.
sudo apt-get install build-essential clang bison flex libreadline-dev gawk tcl-dev libffi-dev git graphviz xdot pkg-config python3 libboost-system-dev libboost-python-dev libboost-filesystem-dev zlib1g-dev --assume-yes
git clone https://github.com/YosysHQ/yosys
cd yosys
sudo make
sudo make install
sudo apt-get update -y
sudo apt-get install -y libgsl0-dev --assume-yes
sudo apt-get install libx11-dev --assume-yes
sudo apt install cmake --assume-yes
cd ../
git clone https://github.com/rubund/graywolf
cd graywolf
mkdir build
cd build
cmake ../
sudo make
sudo make install
sudo apt-get install tcsh --assume-yes
sudo apt-get install tcl-dev tk-dev --assume-yes
cd ../../
cd work/tcl
tar xzvf tcl8.6.10-src.tar.gz
cd tcl8.6.0/unix
./configure
sudo make
sudo make test
sudo make install
cd ../
cd ../
cd ../
cd ../
cd work/tk
tar xzvf tk8.6.10-src.tar.gz
cd tk8.6.10/unix
./configure
sudo make
sudo make test
sudo make install
cd ../
cd ../
cd ../
cd ../
cd work/tools
tar xzvf qrouter-1.4.59.tgz
cd qrouter-1.4.59
./configure
sudo make
sudo make install
sudo apt-get install libcairo2-dev --assume-yes
cd ../
tar xzvf magic-8.2.182.tgz
cd magic-8.2.182
./configure
sudo make
sudo make install
cd ../
tar xzvf netgen-1.5.136.tgz
cd netgen-1.5.136
./configure
sudo make
sudo make install
sudo apt-get install python3-tk --assume-yes
cd ../
tar xzvf qflow-1.3.18.tgz
cd qflow-1.3.18
./configure
sudo make
sudo make install
cd
echo "Congratulations upon sucessful Installation of opensourceEDA Tools"
