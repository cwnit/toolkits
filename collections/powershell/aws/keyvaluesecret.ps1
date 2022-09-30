<#---------------------------------------------------------------------------------------------------
SCRIPT NAME:  RETRIVES A SECRET FROM SECRETS MANAGER THAT HAS A KEY AND VALUE

---------------------------------------------------------------------------------------------------#>


$sm_value = "Name of your secret"

$aws_secret = Get-SECSecretValue -SecretId $sm_value

$mysecret = $aws_secret.SecretString | ConvertFrom-Json

$myretrievedsecret = $mysecret.secretname #see json response below, adjust the array value

$newsecret = ConvertTo-SecureString -String $myretrievedsecret -AsPlainText -Force



<#
    JSON RESPONSE FROM Get-SECSecretValue
    {"secretname":"secretvalue"}



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