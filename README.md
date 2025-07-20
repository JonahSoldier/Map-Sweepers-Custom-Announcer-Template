# Custom Announcer Template
This is a template and demonstration of how to set up custom announcers for Map Sweepers.

I have included 2 announcer lines for demonstration purposes. In-order to hear them, load a mission and run ``jcms_announcer_type demonstration_announcer`` in console. 
If you then lose the mission, you should hear one of the included lines play.


### Brief Explanation:
``sound/vo/jcms`` contains audio files for your announcer. These must be in MP3 format. 
It is recommended that you create your own subfolder, as having 2 files with the same path/name will cause issues
(i.e. if you use the same path and filenames as vanilla your files may not load, or might override the default announcer's files)

``gamemodes/mapsweepers/gamemode/announcers_custom`` allows you to define what audio files play when a given game event occurs. 
It contains 18 different events, each of which should have a list of lines (which it will randomly choose from). You can also
give each line a weight so that certain lines are more/less frequent. The name of the file you put here will be the name of the announcer in-game.

``resource/localization`` contains the text associated with each file, which will display in chat when that audio clip plays. This text can be
translated into multiple languages. I have only defined ``en`` here, which is English.
The properties file should contain a list of lines, with each in the format ``jcms.vo_<filepath relative to vo/jcms>``

