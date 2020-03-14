#/bin/bash
make clean
clear
make
cat $1 | mini_l > $1.mil
echo $1.mil
echo "Running mil_run on generated mil file..."
if [[ -z "$2" ]]
then
        mil_run $1.mil
else
        mil_run $1.mil < $2
fi