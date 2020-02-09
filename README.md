# Black Ops 3 - 18 Player Zombies
Mod for testing a 4&lt; player zombies game mode on Black Ops 3 PC
 * Credits to the D3V Team (DTZxPorter, Redspace200, HarryBo21, DidUKnowIPwn, LilRobot) for doing a lot of the heavy lifting
 * This mod is an implementation for [LUI Lobby Size Modifications Script](https://wiki.modme.co/wiki/black_ops_3/lua_(lui)/intermediate_modifications/Zombie-Lobby-Size-(18-Players).html) using any information I could get digging through [The Grief Mode Mod](https://steamcommunity.com/sharedfiles/filedetails/?id=1408087765)
 * As the mod stands right now the game simply does not tolerate anything more than 4 players for more than 30ish secs and I have no idea why as there is no errors or anything; everybody in the game just times out.
 * To compile the mod for usage ingame you will need a BO3 Development tools mod called [L3ak Mod](https://wiki.modme.co/wiki/black_ops_3/Lua-(LUI).html) (also made by the D3V Team) which allows you to compile the LUA UI files
 * If you need to dig through more LUA files you can use Wraith to extract them from the game and either use [Zorteok](https://wiki.modme.co/wiki/black_ops_3/lua_(lui)/Zorteok-(Lua-Disassembler).html) which will give you LUA bytecode or [CODLUIDecompiler](https://github.com/JariKCoding/CoDLUIDecompiler) which roughly decompiles LUA scripts

# How it works
 * The script in zm/gametypes/_clientids.gsc should override the max 4 player limit **ingame** for standard gamemodes found in zm.gsc
 * Then the script in ui/t7/utility/lobbyutility.lua should override the 4 player limit **in lobby** for standard modes.
 * It looks like if you include the compiled version of the real LUA script you can override anything inside your own version similar to Java or C#
 * There are a few extra GSC scripts included that i'm not using, but they looked important and are modified and used by [The Grief Mode Mod](https://steamcommunity.com/sharedfiles/filedetails/?id=1408087765)
 * (btw using normal GSC decompilers you can't decompile mods for BO3 what is up with that?)

# Progress
 * I seem to be taking a break from BO3 stuff for a while and I am kinda stuck since I don't have a lot of COD modding experience.
 * It would be really nice if Quentin who made [The Grief Mode Mod](https://steamcommunity.com/sharedfiles/filedetails/?id=1408087765) could provide even some of the source, but he kinda just blows you off every time you ask