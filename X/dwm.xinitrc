[ -f $HOME/common.xinitrc ] && . $HOME/common.xinitrc

if [ -f $HOME/img/desktop ]; then
	xsetbg -border black -center $HOME/img/desktop
else
    # xsetroot -solid slategray
	xsetroot -solid '#005577'
fi

# Poor man's session
nm-applet &
dropbox start &
eval $(gnome-keyring-daemon --start)

# refresh dmenu cache
#dmenu_path 2&> /dev/null

while true; 
do 
	DATE=`date +"%a %b %d %Y %R"`
	#NEWMAIL=`mail -e 2> /dev/null && echo 'New mail!'`
	#xsetroot -name "$NEWMAIL $DATE"
	xsetroot -name "$DATE"
	sleep 60
done &

exec dwm
