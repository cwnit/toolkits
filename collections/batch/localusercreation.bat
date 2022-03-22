set useraccount="myuser"
set myuserpassword="ThePasswordISetForUserAcount"


net user %useraccount%
if %ERRORLEVEL% EQU 2 (     
    echo "CREATING USER"
    net user %useraccount% %myuserpassword% /add /fullname:"Administrator Account" /comment:"User with Privileged Access for Administration" /Y
    net localgroup administrators %useraccount% /add
    net localgroup "Remote Desktop Users" %useraccount% /add
    net user %useraccount% | findstr /C:expires
    echo "User has been created!"

)else (
    echo %ERRORLEVEL%
)
