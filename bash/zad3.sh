#!/bin/bash

LINIA=$(wget -q -O- https://www.nbp.pl/home.aspx?f=/kursy/kursya.html |grep 'Kursy') 
echo $LINIA | tr '\>' '\n'|grep -v '^<\|^[[:upper:]][[:lower:]]\|-\|^[[:blank:]]'|tr '\<' '\n'|grep -v '/\|\.[[:alpha:]]'>lines
echo $(grep -A2 'dolar amerykański' lines | grep '[0-9],[0-9]')
echo $(grep -A2 'funt szterling' lines | grep '[0-9],[0-9]')
echo $(grep -A2 'frank szwajcarski' lines | grep '[0-9],[0-9]')
echo $(grep -A2 'euro' lines | grep '[0-9],[0-9]')


rm lines

