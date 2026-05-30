

$Path = Split-Path $MyInvocation.MyCommand.Definition
$k = 0
$l = 3
for ($i = 1;$i -le 5;$i++)
{
    if(!(Test-Path -Path "$Path/Labo $i"))
    {
        New-Item -Path $Path -Name "Labo $i" -ItemType Directory

        for($n = 1 + $k;$n -le $l*$i;$n++) 
        {
            if(!(Test-Path -Path "$Path/Labo $i/Reeks $n")) 
            {
                New-Item -Path "$Path/Labo $i" -Name "Reeks $n" -ItemType Directory
            }
        }
        $k = $k + $l
        if(!(Test-Path -Path "$Path/Labo $i/Startbestanden")) 
        {
            New-Item -Path "$Path/Labo $i" -Name "Startbestanden" -ItemType Directory
        }
    }
    else 
    {
        for($n = 1 + $k;$n -le $l*$i;$n++) 
        {
            if(!(Test-Path -Path "$Path/Labo $i/Reeks $n")) 
            {
                New-Item -Path "$Path/Labo $i" -Name "Reeks $n" -ItemType Directory
            }
        }
        $k = $k + $l
        if(!(Test-Path -Path "$Path/Labo $i/Startbestanden")) 
        {
            New-Item -Path "$Path/Labo $i" -Name "Startbestanden" -ItemType Directory
        }
    }
}

echo "Done"
