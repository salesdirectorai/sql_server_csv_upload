Purpose:
-------------
Automate the upload of CSV files to SalesDirector.ai from a Windows Environment/SQL Server.  Usually in order to get non supported CRMs to work with SalesDirector.ai

Requirements:
-------------
curl.exe  (included but you can download your version from here: https://curl.haxx.se/dlwiz/?type=bin)
sqlcmd.exe  (included in SQL Server Management Studio, or you can download here: https://www.microsoft.com/en-us/download/details.aspx?id=53591)

Instructions:
-------------
- Get an API Key from SalesDirector.ai (Setup -> API Key)
- Create a directory and place all the files from the ZIP into that directory.
- edit the .BAT file and change the various credentials/apikeys.  They are located at the top of the file.
- Then use Windows Task Scheduler to schedule a task to run this batch file.   Make sure you specific the "Start In" directory so the task navigates to that directory first before executing the batch file.


