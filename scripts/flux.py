import time
import os 
from datetime import datetime

SHIFT = '11:00:00'

current_time = time.time()
formated = datetime.fromtimestamp(current_time).strftime('%Y-%m-%d %H:%M:%S')
new_time = formated.split()[-1]
print(f"Specified Time {SHIFT}, Current Time {new_time}")
try:
    if new_time >= SHIFT:
        os.system('exec /usr/bin/xflux -l 13.07 -g 80.28')
    else:
        os.system('echo Innu time ide')
except Exception as e:
    print(e)
