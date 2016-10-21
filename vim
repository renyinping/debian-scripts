# /bin/bash

WORK_DIR=`dirname $(readlink -f $0)`
echo ${WORK_DIR}

if [ `which vim | wc -l` -eq 0 ]; then
	apt-get update && apt-get install -y \
		vim
fi

sed -i 's/"syntax on/syntax on/' /etc/vim/vimrc

