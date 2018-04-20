wget --mirror --adjust-extension --page-requisites --execute robots=off --convert-links --user-agent=Mozilla http://localhost:2368 --directory-prefix="d:\repos\perso\toukiletoukan.github.io"
REM rmdir /S/Q d:\repos\perso\toukiletoukan.github.io\localhost
ren "d:\repos\perso\toukiletoukan.github.io\localhost+2368" localhost
xcopy "d:\repos\perso\toukiletoukan.github.io\localhost\*" "d:\repos\perso\toukiletoukan.github.io" /E /H /R /X /Y /I /K
rmdir /S/Q "d:\repos\perso\toukiletoukan.github.io\localhost
powershell "./adjust.ps1"
