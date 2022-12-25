if [ $UID -gt 199 ]; then
        umask 077
fi
TMOUT=21600
export TMOUT

