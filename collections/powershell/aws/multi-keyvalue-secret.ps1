<#---------------------------------------------------------------------------------------------------
SCRIPT NAME:  RETRIEVE MULTI VALUES FROM A SECRETS MANAGER SECRET

---------------------------------------------------------------------------------------------------#>


$sm_value = "Your Secret Name"

$aws_secret = Get-SECSecretValue -SecretId $sm_value

$mysecret = $aws_secret.SecretString | ConvertFrom-Json

$mycurrent = $mysecret.Current #see json response below, adjust the array value

$myprevious = $mysecret.Previous

$mynewvalue = $mysecret.NewValue




<#
    JSON RESPONSE FROM Get-SECSecretValue
    {"Current":"$newpassword","Previous":"$mycurrent","NewValue":"helloworld"}



    Example AWS Policy that needs to be in place for your script to retrive secret.
    Assign policy to IAM Role and attach it to a person, ec2, database, or container
    {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Effect": "Allow",
                "Action": [
                    "secretsmanager:GetResourcePolicy",
                    "secretsmanager:GetSecretValue",
                    "secretsmanager:DescribeSecret",
                    "secretsmanager:ListSecretVersionIds"
                ],
                "Resource": [
                    "arn:aws:secretsmanager:us-east-1:111122223333:secret:Name of your secret"
                ]
            },
            {
                "Effect": "Allow",
                "Action": "secretsmanager:ListSecrets",
                "Resource": "*"
            }
        ]
    }



#>