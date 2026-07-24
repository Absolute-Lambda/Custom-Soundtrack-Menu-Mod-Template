In the Main.lua file, make sure to replace "Template Soundtrack" with the actual name of your soundtrack found in the XML files in the Content folder

For example:

<track name="Soundtrack A Basement"

You will change:

RegisterMod("Template Soundtrack", 1)
AddSoundtrackToMenu("Template Soundtrack")
AddTitlesToJukebox("Template Soundtrack", "Template Soundtrack", "Template Soundtrack",...)

to say "Soundtrack A" in place of "Template Soundtrack" respectively

Make sure the "SoundtrackModTemplate =" at the very top of the file is something unique such as "MyCustomSoundtrack =" and change every reference to it accordingly, all references are found at the bottom of the file

and much like I said with changing the template soundtrack name, also rename the folders.