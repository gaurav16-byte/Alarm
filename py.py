import os
from playsound import playsound

x=os.getenv("HOME")
playsound(x+'/Alarm/beep.mp3')
