#!/bin/bash

clear

##Define script itself

restart=$(readlink -f "$0")

##Set lutris prefix and do some magic to get the users wineversion

export WINEPREFIX=`lutris -l 2>&1 | grep "Guild Wars 2" | sed -r "s/^[^|]*\|[^|]*\|[^|]*\|[^|]*\| //" | sed "s/[[:space:]]*//g"`

export WINELOC=`cat ~/.config/lutris/games/guild-wars-2-* | grep "version:" | sed "s/[[:space:]]*version: //"`

export WINE=~/.local/share/lutris/runners/wine/$WINELOC/bin/wine

# https://www.youtube.com/watch?v=YAgRBq2jnz4

export WINEDEBUG=-all

##Check if fsync is enabled, if it is, this arguement has to be passed

#I don't know why, I don't want to know why, I shouldn't have to wonder why
#But this fucking script doesn't work unless we export this variable if
#Fsync is enabled

fsyncchk=`cat ~/.config/lutris/games/guild-wars-2-* | grep "fsync:" | sed "s/[[:space:]]*fsync: //"`

if [ $fsyncchk = true ]; then
export WINEFSYNC=1
fi

##Setup directory variables

ahk=$WINEPREFIX/ahk

root=$WINEPREFIX/gw2songs

bell=$WINEPREFIX/gw2songs/bell

flute=$WINEPREFIX/gw2songs/flute

horn=$WINEPREFIX/gw2songs/horn

harp=$WINEPREFIX/gw2songs/harp

lute=$WINEPREFIX/gw2songs/lute

bell2=$WINEPREFIX/gw2songs/bell2

bass=$WINEPREFIX/gw2songs/bass

musicbox=$WINEPREFIX/gw2songs/musicbox

##Setup directories

if [ ! -d $ahk ]; then
mkdir $ahk && wget -q -P $ahk/ https://www.autohotkey.com/download/ahk.zip && unzip -qq $ahk/ahk.zip && rm $ahk/ahk.zip
fi

if [ ! -d $ahk/Compiler ]; then
wget -q -P $ahk/ https://www.autohotkey.com/download/ahk.zip && unzip -qq $ahk/ahk.zip -d $ahk && rm $ahk/ahk.zip
fi

if [ ! -d $root ]; then
mkdir $root
fi

if [ ! -d $bell ]; then
mkdir $bell
fi

if [ ! -d $flute ]; then
mkdir $flute
fi

if [ ! -d $horn ]; then
mkdir $horn
fi

if [ ! -d $harp ]; then
mkdir $harp
fi

if [ ! -d $lute ]; then
mkdir $lute
fi

if [ ! -d $bell2 ]; then
mkdir $bell2
fi

if [ ! -d $bass ]; then
mkdir $bass
fi

if [ ! -d $musicbox ]; then
mkdir $musicbox
fi

#Please always add "#NoTrayIcon" (without quotations)
#To the top of your added scripts explenation in readme

cd $WINEPREFIX

##Setup instrument select

echo -e "1) Bell 2) Flute \n3) Horn 4) Harp \n5) Lute 6) Bell2 \n7) Bass 8) Music Box \n0) Exit"

read -p "Instrument Choice:" instrument

PS3="Which Song:"

##Setup song list

if [ $instrument -eq 0 ]; then
        clear
        echo "May all your theories be sound."
        exit
fi

if [ $instrument -eq 1 ]; then
    clear
    unset songs i
    fp $songs
    while gw2sng= read -r -d $'\0' f; do
    songs[i++]="$f"
    done < <(find $bell -maxdepth 1 -name "*.ahk" -print0 | sed "s/[[:print:]]*\///g")

    echo "Press enter to show the list again"
    select song in "${songs[@]}" "Back to Instruments" "Exit"; do
        case $song in
        *.ahk)
        echo "Playing $song"
        wmctrl -a "Guild Wars 2"
        $WINE $ahk/AutoHotkeyU64.exe "$bell/$song"
        ;;
      "Back to Instruments")
        exec $restart
        ;;
      "Exit")
        clear
        echo "May all your theories be sound."
        break
        ;;
      *)
        echo "Skritt brained idiot!"
        ;;
    esac
    done
fi

if [ $instrument -eq 2 ]; then
    clear
    unset songs i
    while gw2sng= read -r -d $'\0' f; do
    songs[i++]="$f"
    done < <(find $flute -maxdepth 1 -name "*.ahk" -print0 | sed "s/[[:print:]]*\///g")

    echo "Press enter to show the list again"
    select song in "${songs[@]}" "Back to Instruments" "Exit"; do
        case $song in
        *.ahk)
        echo "Playing $song"
        wmctrl -a "Guild Wars 2"
        $WINE $ahk/AutoHotkeyU64.exe "$flute/$song"
        ;;
      "Back to Instruments")
        exec $restart
        ;;
      "Exit")
        clear
        echo "May all your theories be sound."
        break
        ;;
      *)
        echo "Skritt brained idiot!"
        ;;
    esac
    done
fi

if [ $instrument -eq 3 ]; then
    clear
    unset songs i
    while gw2sng= read -r -d $'\0' f; do
    songs[i++]="$f"
    done < <(find $horn -maxdepth 1 -name "*.ahk" -print0 | sed "s/[[:print:]]*\///g")

    echo "Press enter to show the list again"
    select song in "${songs[@]}" "Back to Instruments" "Exit"; do
        case $song in
        *.ahk)
        echo "Playing $song"
        wmctrl -a "Guild Wars 2"
        $WINE $ahk/AutoHotkeyU64.exe "$horn/$song"
        ;;
      "Back to Instruments")
        exec $restart
        ;;
      "Exit")
        clear
        echo "May all your theories be sound."
        break
        ;;
      *)
        echo "Skritt brained idiot!"
        ;;
    esac
    done
fi

if [ $instrument -eq 4 ]; then
    clear
    unset songs i
    while gw2sng= read -r -d $'\0' f; do
    songs[i++]="$f"
    done < <(find $harp -maxdepth 1 -name "*.ahk" -print0 | sed "s/[[:print:]]*\///g")

    echo "Press enter to show the list again"
    select song in "${songs[@]}" "Back to Instruments" "Exit"; do
        case $song in
        *.ahk)
        echo "Playing $song"
        wmctrl -a "Guild Wars 2"
        $WINE $ahk/AutoHotkeyU64.exe "$harp/$song"
        ;;
      "Back to Instruments")
        exec $restart
        ;;
      "Exit")
        clear
        echo "May all your theories be sound."
        break
        ;;
      *)
        echo "Skritt brained idiot!"
        ;;
    esac
    done
fi

if [ $instrument -eq 5 ]; then
    clear
    unset songs i
    while gw2sng= read -r -d $'\0' f; do
    songs[i++]="$f"
    done < <(find $lute -maxdepth 1 -name "*.ahk" -print0 | sed "s/[[:print:]]*\///g")

    echo "Press enter to show the list again"
    select song in "${songs[@]}" "Back to Instruments" "Exit"; do
        case $song in
        *.ahk)
        echo "Playing $song"
        wmctrl -a "Guild Wars 2"
        $WINE $ahk/AutoHotkeyU64.exe "$lute/$song"
        ;;
      "Back to Instruments")
        exec $restart
        ;;
      "Exit")
        clear
        echo "May all your theories be sound."
        break
        ;;
      *)
        echo "Skritt brained idiot!"
        ;;
    esac
    done
fi

if [ $instrument -eq 6 ]; then
    clear
    unset songs i
    while gw2sng= read -r -d $'\0' f; do
    songs[i++]="$f"
    done < <(find $bell2 -maxdepth 1 -name "*.ahk" -print0 | sed "s/[[:print:]]*\///g")

    echo "Press enter to show the list again"
    select song in "${songs[@]}" "Back to Instruments" "Exit"; do
        case $song in
        *.ahk)
        echo "Playing $song"
        wmctrl -a "Guild Wars 2"
        $WINE $ahk/AutoHotkeyU64.exe "$bell2/$song"
        ;;
      "Back to Instruments")
        exec $restart
        ;;
      "Exit")
        clear
        echo "May all your theories be sound."
        break
        ;;
      *)
        echo "Skritt brained idiot!"
        ;;
    esac
    done
fi

if [ $instrument -eq 7 ]; then
    clear
    unset songs i
    while gw2sng= read -r -d $'\0' f; do
    songs[i++]="$f"
    done < <(find $bass -maxdepth 1 -name "*.ahk" -print0 | sed "s/[[:print:]]*\///g")

    echo "Press enter to show the list again"
    select song in "${songs[@]}" "Back to Instruments" "Exit"; do
        case $song in
        *.ahk)
        echo "Playing $song"
        wmctrl -a "Guild Wars 2"
        $WINE $ahk/AutoHotkeyU64.exe "$bass/$song"
        ;;
      "Back to Instruments")
        exec $restart
        ;;
      "Exit")
        clear
        echo "May all your theories be sound."
        break
        ;;
      *)
        echo "Skritt brained idiot!"
        ;;
    esac
    done
fi

if [ $instrument -eq 8 ]; then
    clear
    unset songs i
    while gw2sng= read -r -d $'\0' f; do
    songs[i++]="$f"
    done < <(find $musicbox -maxdepth 1 -name "*.ahk" -print0 | sed "s/[[:print:]]*\///g")

    echo "Press enter to show the list again"
    select song in "${songs[@]}" "Back to Instruments" "Exit"; do
        case $song in
        *.ahk)
        echo "Playing $song"
        wmctrl -a "Guild Wars 2"
        $WINE $ahk/AutoHotkeyU64.exe "$musicbox/$song"
        ;;
      "Back to Instruments")
        exec $restart
        ;;
      "Exit")
        clear
        echo "May all your theories be sound."
        break
        ;;
      *)
        echo "Skritt brained idiot!"
        ;;
    esac
    done
fi
