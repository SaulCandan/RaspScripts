#/bin/bash

ipPublica=$(ping duplexou.freemyip.com | head -1 | awk '{print $3}'| sed -e 's/^.//' -e 's/.$//');

piexpect $ipPublica
