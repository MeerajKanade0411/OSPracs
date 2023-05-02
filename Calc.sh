echo "This is a calculator"
read -p "Enter first number" n1
read -p "Enter second number" n2
echo "a.ADD"
echo "b.SUB"
echo "c.MUL"
echo "d.DIV"
read -p "select your choice" ch

case "$ch" in

"a") echo "The sum of numbers are $((n1+n2))"
;;
"b") echo "The subtraction of numbers are $((n1-n2))"
;;
"c") echo "The Multiplication of two numbers are $((n1*n2))"
;;
"d") echo "The Division of to numbers are $((n1/n2))"
;;
*) echo "invalid choice"
;;
esac
