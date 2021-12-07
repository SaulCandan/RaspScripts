
#!/bin/bash



wifi=$(iwconfig 2>/dev/null| grep  "DuplexGas" | sed -e 's/^..............................//' -e 's/...$//');

ipPublica=$(ping duplexou.freemyip.com | head -1 | awk '{print $3}'| sed -e 's/^.//' -e 's/.$//');

if [ $wifi = "DuplexGas" ];
then

	ssh pi@192.168.1.124
else
	echo "Ip publica: $ipPublica"
	echo "Wifi Actual: "
	iwconfig
	ssh pi@$ipPublica
fi

