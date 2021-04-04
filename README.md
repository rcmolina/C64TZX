# C64TZX

Hurray! you can use your tzxduino firmware to feed your c64, but first you need to convert tap files to tzx id15.

Follow this procedure:

* tap2audio -f 11025 -i "Rambo (Europe).tap" "Rambo (Europe).wav"
* sox "Rambo (Europe).wav" "Rambo (Europe).voc"
* direct "Rambo (Europe).voc" "Rambo (Europe)_11KHz.tzx"

