# Windows Virtual Drive

`mount.bat` creates a new drive from a folder, `unmount.bat` removes the drive again (your files are not removed of course).

Settings are loaded from `config.ini`:

	[settings]
	source_folder="C:\abc\def"
	drive_letter="Z"

This script is not meant for mounting network shares, `source_folder` should be located on your local machine.

When mounting `drive_letter` must be unused.

# Sources

- [Reading an ini config file from a batch file](http://almanachackers.com/blog/2009/12/31/reading-an-ini-config-file-from-a-batch-file/)
- [Windows Virtual Drive on GitHub](https://github.com/geberl/windows_virtual_drive)
- [eberl.se](http://www.eberl.se)
