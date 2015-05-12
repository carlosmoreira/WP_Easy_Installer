I have created a simple bash script to help automate the installation of the core WordPress files.


##  Create a file on machine,

### My location :

**> #touch ~/Scripts/wpinstall.sh**

Copy the bash script below into the wpinstall.sh file.

### Create an Alias :

**> #alias wpinstall=’~/Scripts/wpinstall.sh’**

Now in the command line you can run wpinstall which will download all WordPress file into your current working directory. If you want to download them into a new directory you can pass the -d flag and the name of the directory you want.

Flags:

-d (Places wordpress in a directory from the flag)

Example

**_#wpinstall -d mysite_**