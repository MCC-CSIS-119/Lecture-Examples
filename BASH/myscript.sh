#!/bin/bash

# 1. ###########################
echo "Hello World!"


# 2. ###########################
echo -e "Hello\nWorld!"


# 9. ###########################
NAME=Dan
echo "My name is ${NAME}"


# 3. ###########################
read -p "Enter your name: " name

echo "Your name is ${name}"

# 3. ###########################
read -s -p "Enter your password: " password

echo -e "Password: ${password}"


# 4. ###########################
if [ $age -gt 18 ]
then
    echo "You're old enough to vote"
else
    echo "You can't vote yet"
fi


# 5. ###########################
echo "Enter your name: "
read NAME

echo "Enter your age: "
read age

if [[ $NAME == "Dan" && $age -gt 17 ]]
then
    echo "We have the same name and you are old enough to vote"
else
    echo "One of the two conditions was not met"
fi

# 6. ###########################
# Note: Requires sudo privs 
# visudo
# %mcc ALL=(root) NOPASSWD: /usr/bin/du
for dir in /home/*; do
    sudo du -sh $dir
done


# 7. ###########################
while true
do
    date
    ./hello.sh
    sleep 2
done


# 8. ##########################
true
echo $?


false
echo $?





ls -1 /var/www/html/
ls -1 /var/www/html | grep ^S

for dir in $( ls -1 /var/www/html | grep ^S)
do
    cat /var/www/html/$dir/index.html
done


# 7. ###########################
ps -ef  |grep pts
ps -ef  |grep pts | grep "\-bash"

ps -ef | grep pts | grep "\-bash" | grep -v grep | awk '{print $2}'

for user_pid in $( ps -ef | grep pts | grep "\-bash" | grep -v grep | awk '{print $2}' )
do
    # kill -9 $user_pid
    echo "kill -9 ${user_pid}"
done


# 8. ###########################
while true
do
    clear
    echo "-------------------------------------------------"
    date
    echo "-------------------------------------------------"
    df -h
    sleep 
done


# 10. ###########################
cat .bashrc
echo $?

cat .mashrc
echo $?


# 10. ###########################
function print_some_params() {
    echo "parameter one: ${1}"
    echo "parameter two: ${2}"
    echo ""
}

print_some_params "hello" "World!"
print_some_params "Please" "halp"
