
import os
import _winreg
import sys
import getopt

if len(sys.argv) != 2:
	exit()

def main():
	print 'Find installed program of Windows';
	query(sys.argv[1])

def query(param):
	key = _winreg.OpenKey(_winreg.HKEY_LOCAL_MACHINE,r"SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall")
	try:
		i = 0
		while 1:
			keyname = _winreg.EnumKey(key, i)
			if keyname.find(param) > 0:
				print keyname
				break
			i += 1
	except WindowsError:
		print 'Not found'

if __name__ == '__main__':
	main()
