local SoundtrackMod = RegisterMod("Template Soundtrack", 1)

--[[

Track list for jukebox

DO NOT DELETE ENTRIES FROM THE MIDDLE OF THE LIST
OR ADD EXTRA ENTRIES OR REARRANGE THE ORDER OF THE
ENTRIES, THAT WILL MESS UP JUKEBOX,
if a track is unused by your soundtrack just set it to "[Rebirth]",
if a track is silent set it as "[Silent]",

you can delete the ones on the bottom if they're all unused
to make the list shorter, you just can't change the order
e.g. deleting the bottom 10 is ok, but deleting the
first line will cause all the titles to be wrong

if you have variants in your soundtrack each variant of a track
needs to be set as a list by wrapping them in { } brackets, e.g.

{"basement1","basement2","basement3"}, --Basement
{"cellar1","cellar2"}, --Cellar

or like this

{"basement1", --Basement 1
"basement2", --Basement 2
"basement3"}, --Basement 3
{"cellar1", --Cellar 1
"cellar2"}, --Cellar 2

]]

local SoundtrackSongList = {
    "Diptera Sonata", --Basement
    "Periculum", --Cellar
    "Fundamentum", --Burning Basement
    "Sodden Hollow", --Caves
    "Capiticus Calvaria", --Catacombs
    "Kave Diluvii", --Flooded Caves
    "Abyss", --Depths
    "When Blood Dries", --Necropolis
    "Pulso Profundum", --Dank Depths
    "Viscera", --Womb/Utero
    "Cicatrix", --Scarred Womb
    "Nativitate", --Blue Womb
    "Duress", --Sheol
    "Everlasting Hymn", --Cathedral
    "Devoid", --Dark Room
    "Sketches of Pain", --Chest
    "Terminus", --Void

    "Tome Of Knowledge", --Library
    "Anima Vendit", --Devil Room
    "Empty Vessels", --Angel Room
    "Murmur Of The Harvestmen", --Shop
    "Genesis 13:37", --Arcade
    "The Forgotten", --Secret Room
    "The Calm", --Boss Room (Empty)
    "Ambush", --Challenge Fight

    "Crusade", --Boss Fight
    "Cerebrum Dispersio", --Boss (Alternate)
    "Matricide", --Boss (Mom)
    "Ventricide", --Boss (Mom's Heart)
    "Infanticide", --Boss (Isaac)
    "Hericide", --Boss (Satan)
    "The Fallen Angel", --Boss (The Lamb)
    "Ascension", --Boss (???)
    "Morituros", --Boss (Hush)
    "Chorus Mortis", --Boss (Ultra Greed)
    "Delirium", --Boss (Delirium)
    "Hericide", --Boss (Mega Satan)

    "Devil Room Appear", --Devil Room Appear
    "Angel Room Appear", --Angel Room Appear
    "Secret Room Find", --Secret Room Find
    "Treasure Room Entry 1", --Treasure Room Entry 1
    "Treasure Room Entry 2", --Treasure Room Entry 2
    "Treasure Room Entry 3", --Treasure Room Entry 3
    "Treasure Room Entry 4", --Treasure Room Entry 4
    "Challenge Start", --Challenge Start
    "Challenge Finish", --Challenge Finish
    "Boss Intro", --Boss Intro
    "Boss Death", --Boss Death
    "Boss Death (Alternate)", --Boss Death (Alternate)
    "Boss Death (Hush)", --Boss Death (Hush)

    "Caesarian", --Utero
    "River of Despair", --Downpour
    "Night Soil", --Dross
    "Fissure", --Mines
    "Absentia", --Ashpit
    "Walls of Denial", --Mausoleum
    "Morning Star", --Gehenna
    "Carrion", --Corpse
    "Home", --Home

    "Abandoned Mineshaft", --Abandoned Mineshaft
    "Mineshaft Escape", --Mineshaft Escape
    "StarGazer", --Planetarium
    "Super Secret Room", --Secret Room Alt
    "Ultra Secret Room", --Secret Room Alt Alt

    "Armageddon", --Boss Rush
    "Boss Rush Complete", --Boss Rush (jingle)
    "The Calm Twisted", --Boss Room (empty, twisted)
    "Mom's Shadow Intro", --Mom's Shadow Intro
    "Strange Door", --Strange Door (jingle)
    "Echoes Reverse", --Echoes Reverse

    "Juggernaut", --Boss (alternate alternate)
    "Morticide", --Boss (Mother)
    "Dogma Start", --Dogma Intro
    "Living in the Light", --Boss (Dogma)
    "Revelations 13:1", --Boss (Beast)
    "Boss Death (Alternate 2)", --Boss Death Alternate Alternate (jingle)
    "Boss Death (Mother)", --Boss Mother Death (jingle)
    "Boss Death (Dogma)", --Boss Dogma Death (jingle)
    "Boss Death (Beast)", --Boss Beast Death (jingle)

    "ruopnwoD", --Downpour (reversed)
    "ssorD", --Dross (reversed)
    "Genesis (Ascension)", --Genesis (reversed)

    "Death", --Game Over (jingle)
    "Game Over", --Game Over
    "Ascension", --Boss (Hush Phase 1)

    "Nightmare", --Nightmare
    "Dogma Nightmare", --Dogma Nightmare
    "Run Start", --Run Start
    "Tainted Run Start", --Tainted Run Start
    "Genesis Retake Light", --Main Menu
    "Echoes Reverse", --Death Certificate
    "There Can Be Only One", --Deathmatch

    "[Rebirth]", --Super Secret Room Find
    "[Rebirth]", --Ultra Secret Room Find
    "[Rebirth]", --Boss Challenge Start
    "[Rebirth]", --Boss Challenge Room
    "[Rebirth]", --Boss Challenge Outro
    "[Rebirth]", --Miniboss Fight Start
    "[Rebirth]", --Miniboss Fight
    "[Rebirth]", --Miniboss Fight Outro
    "[Rebirth]", --Boss Rush Start
    
    --optional floor and room music
    "[Rebirth]", --Basement II
    "[Rebirth]", --Cellar II
    "[Rebirth]", --Burning Basement II
    "[Rebirth]", --Caves II
    "[Rebirth]", --Catacombs II
    "[Rebirth]", --Flooded Caves II
    "[Rebirth]", --Depths II
    "[Rebirth]", --Necropolis II
    "[Rebirth]", --Dank Depths II
    "[Rebirth]", --Womb II
    "[Rebirth]", --Scarred Womb II
    "[Rebirth]", --Utero II
    "[Rebirth]", --Downpour II
    "[Rebirth]", --Dross II
    "[Rebirth]", --Mines II
    "[Rebirth]", --Ashpit II
    "[Rebirth]", --Mausoleum II
    "[Rebirth]", --Gehenna II
    "[Rebirth]", --Corpse II

    "[Rebirth]", --Treasure Room
    "[Rebirth]", --Curse Room
    "[Rebirth]", --Sacrifice Room
    "[Rebirth]", --Crawl Space
    "[Rebirth]", --Isaac's Bedroom
    "[Rebirth]", --Barren Bedroom
    "[Rebirth]", --Vault Room
    "[Rebirth]", --Dice Room
    "[Rebirth]", --Black Market
    "[Rebirth]", --Error Room
    
    "[Rebirth]", --Boss Room (empty, Alt)
    "[Rebirth]", --Boss Room (empty, Alt Alt)
}

function SoundtrackMod:StartGame()
	if SoundtrackSongList then
		--add soundtrack to menu
        AddSoundtrackToMenu("Template Soundtrack")
        if Titles then
            --add track list to jukebox
            AddTitlesToJukebox("Template", "Template Soundtrack", "My Template Soundtrack", SoundtrackSongList)
            --first text is a tag to identify the soundtrack, letters and numbers only, no spaces or symbols
			--second text is the same as the text in the 'AddSoundtrackToMenu' function above
			--third text is what the jukebox label should display
			
            --so for example if the soundtrack was 'Castlevania: Symphony of the Night' you could do something like
			--AddTitlesToJukebox("CastlevaniaSOTN", "Symphony of the Night", "Castlevania: Symphony of the Night", SOTNsongList)
        end
	end
end
SoundtrackMod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, SoundtrackMod.StartGame)