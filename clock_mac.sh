cd
pwd=$HOME
a=$1

if [[ $3 -eq 'daily' ]]
then
	echo $1 $2 '* * * python3 '$pwd'/Alarm/py.py' | crontab -
elif [[ $3 -eq 'once' ]]
then
	echo $1 $2 '* * * python3 '$pwd'/Alarm/py.py' | crontab -
	let a=$a+1
	echo $a $2 '* * * echo ""' | crontab -
else
	echo $1 $2 '* * $3 python3 '$pwd'/Alarm/py.py' | crontab -
fi
