local Library = (Abysall.UILibrary == "Linoria" and "LinoriaLib" or "Obsidian")
local BaseUrl = "https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/"

local Interface = {
	Library = loadstring(game:HttpGet(BaseUrl .. "Library.lua"))(),
	SaveManager = loadstring(game:HttpGet(BaseUrl .. "addons/SaveManager.lua"))(),
	ThemeManager = loadstring(game:HttpGet(BaseUrl .. "addons/ThemeManager.lua"))(),
	
	-- ЗАГЛУШКИ: Мы отрезали связь с Abysall, чтобы не было кика!
	ApplyInfoTab = function(Window) end,
	ApplySettingsTab = function(Window) end
}

Interface.ThemeManager.BuiltInThemes = {
	["Default"] = { 1, { FontColor = "ffffff", MainColor = "1c1c1c", AccentColor = "0055ff", BackgroundColor = "141414", OutlineColor = "323232" } },
	["BBot"] = { 2, { FontColor = "ffffff", MainColor = "1e1e1e", AccentColor = "7e48a3", BackgroundColor = "232323", OutlineColor = "141414" } },
	["Fatality"] = { 3, { FontColor = "ffffff", MainColor = "1e1842", AccentColor = "c50754", BackgroundColor = "191335", OutlineColor = "3c355d" } },
	["Jester"] = { 4, { FontColor = "ffffff", MainColor = "242424", AccentColor = "db4467", BackgroundColor = "1c1c1c", OutlineColor = "373737" } },
	["Mint"] = { 5, { FontColor = "ffffff", MainColor = "242424", AccentColor = "3db488", BackgroundColor = "1c1c1c", OutlineColor = "373737" } },
	["Tokyo Night"] = { 6, { FontColor = "ffffff", MainColor = "191925", AccentColor = "6759b3", BackgroundColor = "16161f", OutlineColor = "323232" } },
	["Dracula"] = { 7, { FontColor = "f8f8f2", MainColor = "44475a", AccentColor = "ff79c6", BackgroundColor = "282a36", OutlineColor = "6272a4" } },
}

return Interface
