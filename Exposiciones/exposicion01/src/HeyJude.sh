#!/bin/bash

HEY="Hey Jude "
DON="don't "
MAK="make it bad."
BEA="be afraid."
LET="let me down."
TAK="Take a song and make it better."
YOW="You were made to go out and get her."
YOH="You have found her, now go and get her."
REM="Remember to "
LEH="let her into your heart."
LES="let her under your skin"
THE="Then you "
CAN="can start "
BEG="begin "
TOM="to make it better "
BET="better "
NA="na "
AND="And anytime you feel the pain, hey Jude, refrain,\n 
     Don’t carry the world upon your shoulders.\n
     For well you know that it’s a fool who plays it cool\n
     By making his world a little colder. \n"
SOL="So let it out and let it in, hey Jude, begin,\n
    You’re waiting for someone to perform with.\n
    And don’t you know that it’s just you, hey jude, you’ll do,\n
    The movement you need is on your shoulder. \n"

i=0

while [ $i -lt 4 ]; do
    foo=$HEY$DON
    
    if [[ i -eq 0 ]] || [[ i -eq 3 ]];
    then
	foo1=$foo$MAK
	echo $foo1
	echo $TAK
    elif [[ i -eq 1 ]];
    then
	foo2=$foo$BEA
	echo $foo2
	echo $YOW
    else
	foo3=$foo$LET
	echo $foo3
	echo $YOH
    fi

    foo4=$REM

    if [[ i -eq 0 ]] ||  [[ i -eq 2 ]];
    then
	foo5=$foo4$LEH
	echo $foo5
    else
	foo6=$foo4$LES
	echo $foo6
    fi

    foo7=$THE
    foo10=$TOM
    
    if [[ i -eq 0 ]] ||  [[ i -eq 2 ]];
    then
	foo8=$foo7$CAN
	foo11=$foo8$foo10
	echo $foo11
	echo -e "\n"
    else
	foo9=$foo7$BEG
	foo12=$foo9$foo10
	echo $foo12
	echo -e "\n"
    fi
    
    

    if [[ i -eq 1 ]];
    then
	echo -e $AND
    elif  [[ i -eq 2 ]];
    then
	echo -e $SOL
    fi

    m=0
    if [[ i -eq 3 ]];
    then
	while [ $m -lt 5 ]; do
	    foo13=$BET$foo13
	    let m=m+1
	done
	echo $foo13 oh.
	echo -e " \n"
    fi

    n=0
    if [[ i -eq 1 ]] || [[ i -eq 2 ]] || [[ i -eq 3 ]];
    then
	foo14=""
	while [ $n -lt 10 ]; do
	    foo14=$NA$foo14
	    let n=n+1
	done
	echo $foo14 Hey Jude.
	echo -e "\n"
    fi	
	let i=i+1
done



