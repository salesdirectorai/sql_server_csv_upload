@echo off
setlocal

rem script to upload Opportunities and Contacts to SalesDirector.ai

rem Run this every few hours.  Maximum frequency is every 2 hours.   Minimum frequency this should run is daily.

rem Set the Variables here
set sqlserver=XXX.XXX.XXX.XXX
set sqlusername=XXXXX
set sqlpassword=XXXXX
set sqldb=XXXXX

rem get the apiauthtoken from https://YOURCOMPANY.salesdirector.ai/admin/apimgmt

rem production environment
set apiauthtoken=XXXXX
set companyurl=https://YOURCOMPANY.salesdirector.ai

echo .
echo Generating Opportunities File
sqlcmd -S %sqlserver% -U %sqlusername% -P %sqlpassword% -d %sqldb% -i opps.sql -o "opps.csv" -s"," -w 1000
echo Uploading Opportunities File...
curl "%companyurl%/api/v1/admin/opportunities/upload" -F "file=@opps.csv" -H "Authorization: %apiauthtoken%"
echo Upload Complete

echo .

echo Generating Contacts File
sqlcmd -S %sqlserver% -U %sqlusername% -P %sqlpassword% -d %sqldb% -i contacts.sql -o "contacts.csv" -s"," -w 1000
echo Uploading Contacts File...
curl "%companyurl%/api/v1/admin/contacts/upload" -F "file=@contacts.csv" -H "Authorization: %apiauthtoken%"
echo Upload Complete

echo .
echo ** SYNC COMPLETE **