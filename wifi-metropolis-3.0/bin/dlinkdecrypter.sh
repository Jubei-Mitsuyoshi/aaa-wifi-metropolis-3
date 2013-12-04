#!/bin/bash
P1=`echo $1|cut -d : -f 1`
P2=`echo $1|cut -d : -f 2`
P3=`echo $1|cut -d : -f 3`
P4=`echo $1|cut -d : -f 4`
P5=`echo $1|cut -d : -f 5`
P6=`echo $1|cut -d : -f 6`
P61=`echo $P6 | cut -c1-1`
P62=`echo $P6 | cut -c2-2`

S1=$P61

if [ $P62 = "F" ]; then
   S2="E"
fi
if [ $P62 = "E" ]; then
   S2="D"
fi
if [ $P62 = "D" ]; then
   S2="C"
   fi
if [ $P62 = "C" ] ; then
   S2="B"
   fi
if [ $P62 = "B" ]; then
   S2="A"
   fi
if [ $P62 = "A" ]; then
   S2="9"
   fi
if [ $P62 = "9" ]; then
   S2="8"
   fi
if [ $P62 = "8" ]; then
   S2="7"
   fi
if [ $P62 = "7" ]; then
   S2="6"
   fi
if [ $P62 = "6" ]; then
   S2="5"
   fi
if [ $P62 = "5" ]; then
   S2="4"
   fi
if [ $P62 = "4" ]; then
   S2="3"
   fi
if [ $P62 = "3" ]; then
   S2="2"
   fi
if [ $P62 = "2" ]; then
   S2="1"
   fi
if [ $P62 = "1" ]; then
   S2="0"
   fi
if [ $P62 = "0" ]; then
   S2="F"
   if [ $P61 = "F" ]; then
      S1="E"
      fi
   if [ $P61 = "E" ]; then
      S1="D"
      fi
   if [ $P61 = "D" ]; then
      S1="C"
      fi
   if [ $P61 = "C" ]; then
      S1="B"
      fi
   if [ $P61 = "B" ]; then
      S1="A"
      fi
   if [ $P61 = "A" ]; then
      S1="9"
      fi
   if [ $P61 = "9" ]; then
      S1="8"
      fi
   if [ $P61 = "8" ]; then
      S1="7"
      fi
   if [ $P61 = "7" ]; then
      S1="6"
      fi
   if [ $P61 = "6" ]; then
      S1="5"
      fi
   if [ $P61 = "5" ]; then
      S1="4"
      fi
   if [ $P61 = "4" ]; then
      S1="3"
      fi
   if [ $P61 = "3" ]; then
      S1="2"
      fi
   if [ $P61 = "2" ]; then
      S1="1"
      fi
   if [ $P61 = "1" ]; then
      S1="0"
      fi
   if [ $P61 = "0" ]; then
      S1="0"
      S2="0"
      fi
   fi

echo "Wep key default DLink v0.2"
echo "             Opción 1: "$P6$P1$P5$P2$P3$P4$P6$P5$P2$P3$P4$P1$P3
echo "             Opción 2: "$S1$S2$P1$P5$P2$P3$P4$P6$P5$P2$P3$P4$P1$P3
echo "             Opción 3: "$S1$S2$P1$P5$P2$P3$P4$S1$S2$P5$P2$P3$P4$P1$P3

for f in 0 1 2 3 4 5 6 7 8 9 A B C D E F
do
   for t in 0 1 2 3 4 5 6 7 8 9 A B C D E F
   do

if [ -e "$2" ]; then rm "$2" &>/dev/null; fi
echo $P6$P1$P5$P2$P3$P4$P6$P5$P2$P3$P4$P1$f$t >> "$2"
echo $S1$S2$P1$P5$P2$P3$P4$P6$P5$P2$P3$P4$P1$f$t >> "$2"
echo $S1$S2$P1$P5$P2$P3$P4$S1$S2$P5$P2$P3$P4$P1$f$t >> "$2"

done
done

