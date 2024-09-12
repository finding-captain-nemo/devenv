# Version 1.0

$path = ".\"+$args[0]
Get-ChildItem $path -Include *.pdb -Recurse | Remove-Item