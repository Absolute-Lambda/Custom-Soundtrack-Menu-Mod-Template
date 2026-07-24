SoundtrackModTemplate = RegisterMod("Template Soundtrack", 1)
TemplateTrackList = {
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
}
function SoundtrackModTemplate:startGame()
	if SoundtrackSongList then
		AddSoundtrackToMenu("Template Soundtrack")
	if Titles then
		AddTitlesToJukebox("Template Soundtrack", "Template Soundtrack", "Template Soundtrack", TemplateTrackList)
		end
	end
end
SoundtrackModTemplate:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, SoundtrackModTemplate.startGame)