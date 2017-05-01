#!/bin/sh

cat << EOF


	         _              _            _      
	        /\ \           /\ \         /\ \    
	       /  \ \         /  \ \       /  \ \   
	      / /\ \_\       / /\ \ \     / /\ \ \  
	     / / /\/_/      / / /\ \ \   / / /\ \_\ 
	    / / / ______   / / /  \ \_\ / / /_/ / / 
	   / / / /\_____\ / / /   / / // / /__\/ /  
	  / / /  \/____ // / /   / / // / /_____/   
	 / / /_____/ / // / /___/ / // / /\ \ \     
	/ / /______\/ // / /____\/ // / /  \ \ \    
	\/___________/ \/_________/ \/_/    \_\/    
                                            
		Performance testing tool

EOF

echo "Clear gor_output directory"
rm -Rf $HOME/gor_output


ls

if [ ! -d $HOME/gor_output ]; then
    echo "Creating directory: $HOME/gor_output"
    mkdir $HOME/gor_output;
fi

cd $HOME/gor_output
sudo gor --input-raw :80 --output-file=log_80.txt &
echo "Gor is listening on port 80"

sudo gor --input-raw :6001 --output-file=log_stbapi6001.txt &
echo "Gor is listening on port 6001"

sudo gor --input-raw :6002 --output-file=log_vstbapi6002.txt &
echo "Gor is listening on port 6002"

sudo live-server --port=4001 &

wait
echo "Done script"