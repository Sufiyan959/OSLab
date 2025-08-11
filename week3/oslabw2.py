



import os

def fork_demo():
    pid = os.fork()
    if pid == 0:
        print(f"Child Process: PID={os.getpid()}, Parent PID={os.getppid()}")
    else:
        print(f"Parent Process: PID={os.getpid()}, Child PID={pid}")

if __name__ == "__main__":
    fork_demo()



import os

pid = os.fork()
if pid == 0:
    print("Child process is running...")
    os._exit(0)
else:
    child_pid, status = os.wait()
    print(f"Parent waited for PID={child_pid}, Exit status={os.WEXITSTATUS(status)}")



import os
pid = os.fork()
if pid == 0:
   print("Child executing 'ls -l'...")
   os.execl("/bin/ls", "ls", "-l")
else:
   os.wait()

import os, sys
pid = os.fork()
if pid == 0:
   print("Child will exit.")
   sys.exit(0)
else:
   os.wait()
   print("Parent detected child exit.")


import os
print(f"Current PID = {os.getpid()}")


import os
print(f"Current UID = {os.getuid()}")


import os
try:
   os.setuid(1000) 
   print(f"UID changed successfully. New UID = {os.getuid()}")
except PermissionError:
   print("setuid failed — requires root privileges.")



import os


old_nice = os.nice(0)
print(f"Current niceness: {old_nice}")
new_nice = os.nice(5)
print(f"New niceness: {new_nice}")



import time
print("Sleeping for 3 seconds...")
time.sleep(3)
print("Woke up!")