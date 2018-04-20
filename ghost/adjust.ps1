$files = Get-ChildItem . -recurse *.html
foreach ($file in $files)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace "http://localhost:2368/", "https://toukiletoukan.github.io/" } |
    Set-Content $file.PSPath
}