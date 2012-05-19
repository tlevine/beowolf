# As root on the master node
adduser disco

# From another computer
ssh-copy-id disco@master

# As root on the master node
passwd -l disco

# As disco on the master node
git clone git://github.com/discoproject/disco.git
cd disco
make

# Hacks for disco on the master node
sed -i '1 s_#!/usr/bin/env python_#!/usr/bin/env python2_' bin/disco
echo 'export PYTHONPATH=${PYTHONPATH}:~/disco/lib' > ~/.bashrc


# Run
bin/disco nodaemon

# Go to http://master:8989
