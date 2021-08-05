# gw2sng

## Overview

This is a little script I cooked up to help Guild Wars 2 players on Linux play their songs with as minimal effort as possible. It uses autohotkey (which it gets itself) to play the songs as this is the only real method available at the moment.


# If you have an issue that happens with this script, don't bother people over at Lutris or the GW2 forums. Just leave an issue report here in github.

### Manual

I've done everything I could to make ABSOLUTELY sure there's as little tweaking or mucking about with this script as possible for the end user. All you should need to do is run it once, navigate to the folders this script generates in your GW2 folder, which Lutris can open for you, and place/create your ahks in the respective instruments folder, then select them from the menu.

Make sure all of the files end in .ahk or the script won't see them. The number one thing you have to make sure of, is that all of the ahks you copy/create start with #NoTrayIcon, otherwise when AHK creates the tray icon it'll steal the focus away from the game and defeat the purpose of the script.

## Modification

Take it, print it, burn it, shove it somewhere, I really don't care what you do with it. I'd simply appreciate credit if you distribute a modified version of the script, or better yet, push a commit. I make no assumptions that my stuffs good, so if you can do better, go for it.
