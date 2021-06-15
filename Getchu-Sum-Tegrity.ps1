echo Getchu-sum-Tegrity~ 


Write-Host In order to use this correctly, you need to be in the same directory as the file being checked! You may also need to run as admin [ set-executionpolicy remotesigned ] to allow scripts. 
echo - 

# Defines Variable by input of filename ( I copy and paste usually)
$Filename = Read-Host -Prompt 'Input filename You wish to verify ( make sure it is in current directory w/extension)'

#Checks over $Filename and confirms its hash Value
$Checked = Get-FileHash .\$Filename | Format-List

#Returns the Value of the file being checked over
echo - - -
Write-Host Got your Tegrity: 
echo $Checked

pause

