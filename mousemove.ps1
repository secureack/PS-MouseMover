Add-Type -AssemblyName System.Windows.Forms

$maxY=([System.Windows.Forms.SystemInformation]::PrimaryMonitorSize).Height
$maxX=([System.Windows.Forms.SystemInformation]::PrimaryMonitorSize).Width

while ($true) {
  $x = Get-Random -Maximum $maxX
  $y = Get-Random -Maximum $maxY
  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x,$y)
  Start-Sleep 10
}
