#!/bin/bash

if test `date | cut -d" " -f4 | cut -d":" -f1` -ge 6 -a `date | cut -d" " -f4 | cut -d":" -f1` -lt 15
then echo Buenos dias
else if test `date | cut -d" " -f4 | cut -d":" -f1` -ge 15 -a `date | cut -d" " -f4 | cut -d":" -f1` -lt 22
then echo Buenas tardes
else echo Buenas noches
fi
fi
