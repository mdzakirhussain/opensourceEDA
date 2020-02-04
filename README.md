# opensourceEDA
This repository will help you to install opensourceEDA Tools  
Kindly follow the given instructions to install the open-source EDA Tools  

In Ubuntu Operating System  
Before installing Qflow We need the following set of tools.  
Qflow is a complete tool chain for synthesizing digital circuits starting from verilog source and ending in physical layout   
for a specific target fabrication process.  

Tool		:				Purpose    	
1. yosys	;			Verilog parsing/synthesis/optimization/verification    	
2. graywolf	;			Placement    	
3. qrouter	;			Detail routing    	
4. magic	;			Viewing, extraction, DRC checks, GDS Generation    
5. netgen	;			LVS    

###For yosys follow the instructions given at the below link    

 Dependencies    

sudo apt-get install build-essential clang bison flex \
	libreadline-dev gawk tcl-dev libffi-dev git \
	graphviz xdot pkg-config python3 libboost-system-dev \
	libboost-python-dev libboost-filesystem-dev zlib1g-dev
  
Then clone     
https://github.com/YosysHQ/yosys  
 
Then    
cd yosys     
yosys>sudo make    
     >sudo make install    

###For graywolf follow the instructions at the below link    

Dependencies    

sudo apt-get update -y    
sudo apt-get install -y libgsl0-dev    
sudo apt-get install libx11-dev    
sudo apt  install cmake    

Then clone     

https://github.com/rubund/graywolf    

Then    
cd graywolf    
graywolf>mkdir build    
         cd build    
         cmake ../    
         sudo make      
         sudo make install      
         
###for qrouter    
Dependencies    
sudo apt-get install tcsh    
sudo apt-get install tcl-dev tk-dev    

to unzip use the following files   
tcl8.6.10-src.tar.gz      
tk8.6.10-src.tar.gz    
use in the terminal    
>tar xzvf tcl8.6.10-src.tar.gz    
>tar xzvf tk8.6.10-src.tar.gz    

After that do the following    
 >cd tcl8.5.0/unix    
 >./configure  
 >sudo make  
 >sudo make test  
 >sudo make install    
 
 And then    
 >cd tk8.5.0/unix    
 >./configure    
 >sudo make    
 >sudo make test    
 >sudo make install    
 
###for magic    

Dependencies    
sudo apt-get install libcairo2-dev    


###for qflow    
Dependencies    
sudo apt-get install python3-tk     
