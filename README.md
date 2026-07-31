# What is this?
This is a template for creating your own soundtrack mods for The Binding of Isaac: Repentance+ using Nato Potato's Soundtrack Menu.
This template also has Jukebox mod support built-in

# How do I use this?
1.
Go to Steam\steamapps\common\The Binding of Isaac Rebirth\mods and create a new folder, name it whatever you want your soundtrack mod to be called.
Download the files from this github and copy/paste them into the folder you created.

2.
Open the metadata.xml file in notepad++ and change the 'name', 'directory' and 'description' fields.
The 'directory' field should be the same as the name of the folder you created earlier.

3.
Open the main.lua file in notepad++ and change the 'RegisterMod' part, replacing "Template Soundtrack" with the 'name' you entered in the metadata file earlier.
Don't worry about the "SoundtrackSongList" for now, you can come back to it later.
Scroll to the bottom of the file and find the "AddSoundtrackToMenu" function, replace the "Template Soundtrack" text in there with the name of your soundtrack.
In the "AddTitlesToJukebox" function below update the 3 text fields to match the name of the soundtrack.
The first field should be simple, with only letters and numbers, no symbols or spaces.
The second field needs to match the text in the "AddSoundtrackToMenu" function exactly.
The third field can be whatever you want, it is the text that will display on screen when your soundtrack is played.

4.
Go to the 'content' folder and open the music.xml file in notepad++, then do a search and replace (CTRL + H) and replace ' Template Soundtrack ' with the name of your soundtrack.
Go to the 'resources' folder and then into the 'music' folder, rename the 'Template Soundtrack' folder to match the name of your soundtrack.
If you've done everything correctly so far you should be able to see your soundtrack available in the game, just without the custom audio.

5.
Gain the audio you want your soundtrack to play, whether downloading them online or producing them yourself.
Convert your audio files to .ogg format, if you don't have a program that can do this you can use an online service like https://audio.online-convert.com/convert-to-ogg .
Go to the 'resources/music/soundtrack' folder and move your audio files there.

6.
Open the music.xml file and update the 'path', intro' and 'layer' fields to match the names of your new audio files.
Then you can go to the main.lua file and update the SongList with the name of each song in your soundtrack.
If your soundtrack does not have a particular song you can delete it from the music.xml file, but don't delete it from the SongList in main.lua, instead set it to "[Rebirth]"

7.
(OPTIONAL)
In Repentogon this is obsolete but if you want to go the extra mile and have your soundtrack support jingles that don't interrupt music in AB+ you can also add sfx jingles.
Open the sounds.xml file in the content folder and replace "Template Soundtrack" with the name of your soundtrack.
Copy/paste the relevant ogg files for the jingles listed in the sounds.xml file and convert them to .wav format.
Go to 'resources/sfx' and rename the "Template Soundtrack" folder to match the name of your soundtrack, put your .wav files in there.
Update the 'path=' fields in the sounds.xml file to match the names of the .wav files.

Alternatively you can just delete the 'sfx' folder and the sounds.xml file

8.
Test the mod, if there are issues check your files, usually it is an issue with the music.xml file, check the troubleshooting section below.
Once you're finished setting up the soundtrack replace the cover.jpg file with a picture for your soundtrack.
Go to Steam\steamapps\common\The Binding of Isaac Rebirth\tools\ModUploader and run ModUploader.exe.
Click 'Choose Mod' and browse to the metadata.xml file of your new soundtrack mod, then click the grey 'change' button in the middle and select a picture for the mod.
Click 'Upload Mod' and you're done.


# Troubleshooting
Make sure the text in the AddSoundtrackToMenu function in the main.lua is the same as the text at the start of the track names in the music.xml
e.g. if main.lua has AddSoundtrackToMenu("Diablo II") and music.xml has <track name="Diablo 2 Basement" then it won't find the tracks because it's looking for tracks that have 'Diablo II' at the start not 'Diablo 2'.

Also make sure the settings in the music.xml file match the music folder and the names of files in it exactly, a simple typo can cause all the songs to not be found.

The game does not seem to like certain special characters (such as letters with umlauts, like Ö) so if one of your songs isn't playing and it has something like that in its filename try removing that symbol from both the filename and the music.xml entry.

For some reason the game can mess up if the intro file and loop file for a track with an intro have different bitrates, so if you get the issue where the intro plays and then the music just stops try running the files through an OGG converter and making them the same audio quality.