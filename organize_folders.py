import os
import sys
import distutils

def main():
    if len(sys.argv) < 2:
        print('Pass inputs as parameters "python3 organize_folders.py result_folder_name folder1 folder2 ..."')
        os.exit()
    elif len(sys.argv) == 2:
    	print('Give atleast one data folder')
    	os.exit()
    RES_FOLDER = sys.argv[1]
    DATA_FOLDERS = sys.argv[2:]
    os.mkdir(RES_FOLDER)
    target_dirs = set(f for dfolder in DATA_FOLDERS for f in os.listdir(dfolder) if os.path.isdir(f))
    for tdir in target_dirs:
        os.mkdir(os.path.join(RES_FOLDER, tdir))
    for dfolder in DATA_FOLDERS:
        for f in os.listdir(dfolder):
            if os.path.isdir(os.path.join(dfolder, f)):
                distutils.dir_util.copy_tree(os.path.join(dfolder, f), os.path.join(RES_FOLDER, f))


if __name__ == '__main__':
    main()
    
