mpv-network-commands
====================

Script to control mpv over the network. Whether that be from a local webpage or a mobile remote application or a cli application or even an irc bot.

testserver.lua goes in your mpv profile's script directory.
You'll need LuaSocket for whatever version of lua mpv is configured for (5.1 on my machine).

Commands to support: 
 - [x] PLAY
 - [x] PAUSE
 - [x] TPAUSE/TPLAY - toggle pause
 - [ ] FORWARD/BACK N - jump forward/back 5/10/30/60/n seconds
 - [ ] FORWARDX/BACKX N - fastforward/rewind 1/4, 1/3, 1/2, 3/2, 2, 3, 4, n times as fast
 - [x] STEP/STEPBACK - frame step
 - [ ] NEXTCHAP/PREVCHAP - jump chapter forward/back
 - [ ] NEXT/PREV - jump file forward/back (in playlist)
 - [ ] START/END - start/end
 - [x] CYCLE A/V/S - cycle audio/subtitle/video tracks
 - [ ] SET A/V/S N - use N'th audio/sub/vid track
 - [x] MUTE
 - [ ] VOLUME N - set volume
 - [x] VOLUME UP/DOWN - increase/decrease volume
 - [x] FULLSCREEN/WINDOWED - set fullscreen/windowed
 - [x] TFULLSCREEN/TWINDOWED - toggle fullscreen
 - [x] QUIT
 - [ ] (probably others too)

TODO:
 - commands with args
 - reading settings like port number from config file
 - encryption of some sort
 - sending data to client

Reference: 
 - https://github.com/mpv-player/mpv/blob/master/DOCS/man/lua.rst
 - https://github.com/mpv-player/mpv/blob/master/DOCS/man/input.rst
