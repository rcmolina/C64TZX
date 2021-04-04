rem tap2audio -f 11025 -i "Rambo (Europe).tap" "Rambo (Europe).wav"
rem sox "Rambo (Europe).wav" "Rambo (Europe).voc"
rem direct "Rambo (Europe).voc" "Rambo (Europe)_11KHz.tzx"

forfiles /m *.tap /C "cmd /c tap2audio -f 11025 -i @file @fname.wav
forfiles /m *.wav /C "cmd /c sox @file @fname.voc
del *.wav
forfiles /m *.voc /C "cmd /c direct @file @fname_11KHz.tzx
del *.voc
mkdir C64TZX
move *.tzx C64TZX
PAUSE