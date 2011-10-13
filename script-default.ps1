"---------- Start "
trap {
  handleError
}
function print($color,$toPrint) {
  Write-Host -foreground "$color" "$toPrint"
}
function info($toPrint) {
  print "blue" "[INFO]  $toPrint"
}
function error($toPrint) {
  print "red" "[ERROR] $toPrint"
}
function debug($toPrint) {
  print "green" "[DEBUG] $toPrint"
}
function isEmptyDir($folder) {
  return (ls $folder).Count -eq $null  
}

function init() {
  info  "init1"
  error "init2"
  debug "init3"
  
  $local="rw"
  $global:progname="rw"
}
function handleError() {
  error "a unexpected error occured"
}
isEmptyDir( "d:\tmp\empty" )
isEmptyDir( "d:\tmp" )

init

Start-Sleep -s 10


# +++++ bad stuff +++++ 
# [console]::TreatControlCAsInput = $true
