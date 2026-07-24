SoundtrackModTemplate = RegisterMod("Template Soundtrack", 1)
function SoundtrackModTemplate:startGame()
	if SoundtrackSongList then
		AddSoundtrackToMenu("Template Soundtrack")
	end
end
SoundtrackModTemplate:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, SoundtrackModTemplate.startGame)