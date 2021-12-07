#!/usr/bin/expect -f

set timeout -1

spawn preg.sh

expect {
	"Hello*\r" {send "Hola\r";exp_continue}
	"What is you pass*\r" {send "1234\r";exp_continue}
	"What is**\r" {send "penes\r"}


}

expect eof

spawn	preg.sh

expect {
        "Hello*\r" {send "Hola\r";exp_continue}
        "What is you pass*\r" {send "1234\r";exp_continue}
        "What is**\r" {send "penes\r"}


}

expect {
	"FIN\r" {spawn ssh pi@192.168.1.123 ;interact;expect {"mongolico" };expect eof} 

}
expect eof
