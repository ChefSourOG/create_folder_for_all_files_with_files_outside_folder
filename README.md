# Description of the Batch File
This .bat file is a batch script designed to create a separate folder for each file located in the same directory as the script, excluding the script itself.

Functionality: The script checks the directory where it is located and loops through all files in that directory. For each file (excluding the batch file itself), it creates a new folder named after the file (without the file extension).

Output: It will display a message indicating that folders have been created for each file.
# How to Use
1. Save the script as create_folder_for_all_files_with_files_outside_folder.bat in the directory containing the files you want to organize.

2. Double-click the batch file to execute it.

3. After running, you will see new folders created for each file in the same directory, and a message will confirm the completion of the process.
# Note
Ensure that the script is not placed in a directory with subdirectories, as it only processes files in the current directory.
