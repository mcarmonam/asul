#/bin/bash
sem1=$(date +%s)%977
sem2=$(date +%s)%857
sem3=$(date +%s)%857
a=5
m=17

nombres=(manuel diana jesus francis miguel pedro jose brayan alexis leslie lisandro mcfly damian saul valeria cristina raul)
apellidos=(jimenez perez lopez vazquez ramirez barajas galvan sanchez gamboa caballero romero figueroa aguilar garcia monreal nieves rios)
symbols=(! \% \& $ \* ? ¡ ¿ + \~ \&! !$ +\* ¿? ° °! \%$)
for i in `seq 1 10000`;
do
    tmp1=$((($a*$sem1+i)%m))
    sem1=$tmp1
    tmp2=$((($a*$sem2+i*$sem1)%m))
    sem2=$tmp2
    tmp3=$((($a*$sem3+i*$sem2)%1000))
    sem3=$tmp3
    new_user="${nombres[$tmp1]}_${apellidos[$tmp2]}$tmp3"
    pass="${nombres[$tmp1]:0:3}${apellidos[$tmp2]:0:3}${symbols[$tmp2]}${symbols[$tmp1]}"
    echo "$new_user $pass"
    useradd $new_user
    echo $pass | passwd $new_user --stdin
done
