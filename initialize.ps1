# Version 1.0

$path = ".\"+$args[0]+"\"
$dirs = @("content","tools","lib","lib\net40-Client")
Remove-Item -Path $path -Recurse
foreach ($dir in $dirs){
	$item = $path + $dir
	New-Item -Path $item -ItemType Directory
}