#CREATE DIRECTORY WHERE INSTALLATION FILES EXISTS
$path = "C:\Utilities"
If(!(test-path -PathType container $path))
{
      New-Item -ItemType Directory -Path $path
}

$folders = "bigfix", "fireeye", "Carbon_Black_Protection", "tenable-nessusagent", "secureconnector", "server_certificates", "winlogbeat", "solarWinds-agent", "endgame", "powershell"

#BUILD Local Folders
foreach ($folder in $folders) {

    $folderkey = "utilities/packages/windows/$folder"
    $folderpath = "C:\utilities\packages\$folder"

    echo "Folde key: $folderkey"

    Read-S3Object -BucketName "iha-test-mgt-ami-packages-s3" -KeyPrefix $folderkey -folder $folderpath  

    echo "s3 downloaded"


}
