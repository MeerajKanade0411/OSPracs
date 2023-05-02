function menu
{
echo "a.Adding n numbers"
echo "b.Odd or Even"
echo "c. Armstrong Number"
read -p "enter your choice: " ch
function addnos()
{
echo "enter values and press (capital'Q') to get sum and exit"
num=0 
sum=0 
while true
	do
	((num++))
	read -p " enter value $(( num )) : " a

	if [ $a == "Q" ];
	then
	break
	fi
	
	sum=$(( sum + a ))
	done

	echo -e "\nSum of $(( num-1 )) values = "  $sum
}

function oddeven()
{
	read -p "1st no: " n1
	if ! (( $n1 % 2 ));
	then 
	echo "even" 	
	else
	echo "odd"
	fi
}
function armstrong()
{
    read -p "enter a number" c 
    x=$c 
    r=0
    sum=0
    n=0
    while [ $x -gt 0 ]
    do
        r=$(( x % 10 ))
        n=$(( r*r*r ))
        sum=$(( sum + n ))
        x=$(( x/10 ))
    done
    if [ $sum == $c ]
    then 
        echo "yes"
    else
        echo "no"
    fi
}

case "$ch" in
"a") addnos
;;
"b") oddeven
;;
"c") armstrong
;;
*) echo "enter an appropriate choice"
;;
esac
}

function entry ()
{
	echo "Enter your user name" username
	read username
	echo "Enter your password" password
	read password
}


entry 
if [[  $username == "jay" && $password == "1234"  ]];
then
{ 
echo "valid user"
menu
}
else
echo "invalid user"
fi
