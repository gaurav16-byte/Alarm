cd
pwd=$HOME
a=$1

if [[ $3 -eq 'daily' ]]
then
	echo $1 $2 '* * * play '$pwd'/Alarm/beep.mp3' | crontab -
elif [[ $3 -eq 'once' ]]
then
	echo $1 $2 '* * * play '$pwd'/Alarm/beep.mp3' | crontab -
	let a=$a+1
	echo $a $2 '* * * echo ""' | crontab -
else
	echo $1 $2 '* * $3 play '$pwd'/Alarm/beep.mp3' | crontab -
fi
