Get-ChildItem -Path ".\\test-case\\*" -Attribute D | ForEach-Object {
    $input = "$($_.FullName)\input.txt"
    $output = "$($_.FullName)\output.txt"
    $temp = "temp.txt"

    if ((Test-Path "$input") -and (Test-Path "$output")) {
        Get-Content $input | & python3 main.py > $temp
        Compare-Object (Get-Content $temp) (Get-Content $output)
        Remove-Item $temp
    }
}
