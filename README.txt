This project will let you automatically schedule an automatic save (periodically) of your server. Just run the makefile and after setting some configurations (like the Github repository to store your datas, the paths of your server you want to save, the save frequency, ..), your server state will always be saved and stored on Github and you will be able to restore barely everything if you loose all your server datas. Of course, the binary files are not saved as I assume that you should always be able to retrieve the binaries from the sources (through a CI server) or from download links. Instead, the binary files are writen in a text files that is versionned to keep the information of which binary files were present and should be retrieved in case of a loose.


This repository includes two main components:
	- The script file, which goal is to make a simple save of the repository and and to push it to the Github repository.
	- The "makefile" file, which is the first file to use on the server (or the machine you want to save periodically) to install the crontab instruction and make sure that all the needed informations are provided (a prompt asks to the needed inputs).
