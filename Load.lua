_Hawk = "ohhahtuhthttouttpwuttuaunbotwo"
local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheHanki/HawkHUB/main/LibSources/HawkLib.lua", true))()
local discordInviter = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()

local Notifications = Hawk:AddNotifications()

Notifications:Notification("📢  Please Wait.","Impact is currently loading.","Notify",5)

local succ, err = xpcall(function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NoobExploits/Impact/main/src/Checker.lua", true))()

    print("🚀  Impact Output: Loaded with 0 issues.")
end, function(err)
    if (string.find(err, "404")) or (string.find(err, "attempt to call a nil value")) then
        discordInviter.Prompt({
            name = "Impact",
            invite = "https://discord.gg/sGUxgb7jcH"
        })
        
        Notifications:Notification("🚀  Impact Can't Start.","The script is currently down, please try again later. Discord: @noobexploits","Error",5)
    end
end)
