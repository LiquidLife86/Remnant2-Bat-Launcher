1. Edit MODS ON.bat
	Line 5 change the source to where the UE4SS.dll will be safely kept.
	Line 6 change the destination to where ever your game folder is and down to the Remnant2\Remnant2\Binaries\Win64

2. Edit MODS OFF.bat
	Line 5 change the source to where ever your game folder is and down to the Remnant2\Remnant2\Binaries\Win64.
	Line 6 change the destination to where the UE4SS.dll will be safely kept

3. Make a backup of your saved game.
	Right click, copy and paste in the same area.
		Example foler:
			"C:\Users\User\Saved Games\Remnant2\Steam\123456789 - Backup"

3. Edit BackupSaves.bat
	Line 5 backupDir= Full filepath to the - Backup folder or whatever you called it
	Line 6 destDir= Full filepath to the saved game folder

4. Edit RevertSaves.bat
	Line 5 destDir= Full filepath to the saved game folder
	Line 6 backupDir= Full filepath to the - Backup folder or whatever you called it

5. Edit the Remnant II HTA.hta
	Line 11 modsOffPath = Full filepath to the MODS OFF.bat
    Line 12 modsOnPath = Full filepath to the MODS ON.bat
    Line 13 revertSavesPath = Full filepath to the RevertSaves.bat
    Line 14 backupSavesPath = Full filepath to the BackupSaves.bat
    Line 15 modCheckPath = Full filepath to the Binaries\Win64\UE4SS.dll