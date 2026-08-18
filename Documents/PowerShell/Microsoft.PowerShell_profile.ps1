Set-Location $HOME

# This adds apps installed in ~/.local/bin to PATH
$env:PATH = "C:\Users\neousername\.local\bin;$env:PATH"

# ENVs
$env:YAZI_FILE_ONE = "C:\Users\neousername\AppData\Local\Programs\Git\usr\bin\file.exe"

function y {
    $tmp = [System.IO.Path]::GetTempFileName()

    yazi @args --cwd-file="$tmp"

    $cwd = Get-Content -Path $tmp -ErrorAction SilentlyContinue

    if ($cwd -and $cwd -ne $PWD.Path -and (Test-Path -LiteralPath $cwd -PathType Container)) {
        Set-Location -LiteralPath $cwd
    }

    Remove-Item -Path $tmp -Force -ErrorAction SilentlyContinue
}

# My aliases
Set-Alias g lazygit

# Show only current directory
function prompt {
    "[$(Split-Path -Leaf (Get-Location))]$ "
}
