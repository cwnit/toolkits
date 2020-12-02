#CLEAR DEFAULT CREDENTIALS
Clear-AWSCredential

#INTIALIZE AWS API
Initialize-AWSDefaults

#FORCE TLS 1.2 CONNECTION TO API
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Your account access key - must have read access to your S3 Bucket
$accessKey = Read-Host "Enter AWS Accesskey" -AsSecureString

# Your account secret access key
$secretKey = Read-Host "Enter AWS Secret" -AsSecureString

# The region associated with your bucket e.g. eu-west-1, us-east-1 etc. (see http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-regions)
$region = "us-east-1"

# The name of your S3 Bucket
$bucket = 'mys3bucket'

#The name of the file you are dowloading
$file = 'example.msi'

#current User logged in
$username = $env:UserName

#DECRYPT VARIABLES IN MEMORY SECRET KEY
$accessKey = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($accessKey)
$accessKey = [Runtime.InteropServices.Marshal]::PtrToStringBSTR($accessKey)

#DECRYPT VARIABLES IN MEMORY SECRET KEY
$secretKey = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($secretKey)
$secretKey = [Runtime.InteropServices.Marshal]::PtrToStringBSTR($secretKey)

#EXECUTE COMMAND THAT DOWNLOADS CONTENT TO DEFAULT DOWNLOAD DIRECTORY
Copy-S3Object -BucketName $bucket -Key $file -LocalFile "C:\Users\$($username)\Downloads\$($file)" -AccessKey $accessKey -SecretKey $secretKey -Region $region