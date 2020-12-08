
#PREREQUISTES
#- Must have AWS CLI INSTALLED
#- Must have appropriate permissions into System Manager and EC2 configured

#WINDOWS QUERY
winquery="2016-English-Full-Base" #Windows search string, appended to main name.  Change this value for search string, to see all images enter '*''
#Export has been added for valiation, remove or comment out line if you do not want the export
aws ec2 describe-images --owners amazon --filters "Name=name,Values=Windows_Server-$winquery*" --query 'sort_by(Images, &CreationDate)[].[CreationDate,Name,ImageId]' --output table > windows_AMIs.txt 
winamiid=$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-$winquery  --query 'Parameters[0].[Value]' --output text)
echo $winamiid 


#GENERAL RHEL QUERY
linquery="7.0" #RHEL version appended to the main name.  to see all AMI's enter '*'  Change this value for search string
#Export has been added for valiation, remove or comment out line if you do not want the export
aws ec2 describe-images --owners 309956199498 --query 'sort_by(Images, &CreationDate)[-1].[CreationDate,Name,ImageId]' --filters "Name=name,Values=RHEL-$linquery?*" --region us-east-1 --output table > linux_AMIs.txt
rhelamiid=$(aws ec2 describe-images --owners 309956199498 --query 'sort_by(Images, &CreationDate)[-1].ImageId' --filters "Name=name,Values=RHEL-$linquery*" --output text)
echo $rhelamiid