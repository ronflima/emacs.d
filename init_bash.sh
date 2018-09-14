if [ -f $HOME/.bash_profile ]
then
    . $HOME/.bash_profile
fi
if [ -f $HOME/.bashrc ]
then
    . $HOME/.bashrc
fi
clear

if [ -d $PWD/env ]
then
    . env/bin/activate
fi
