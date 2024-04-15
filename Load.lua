local flu = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Inviter = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()
--[[
flu:Notify({
    Title = "This is currently broken",
    Content = "Impact is currently broken please try again later!",
    Duration = 1000
})

Inviter.Prompt({name = "Impact", invite = "discord.gg/PDxxpQ3nqm"})--]]


flu:Notify({
    Title = "Please Wait.  📢",
    Content = "Impact is loading, please give us a second!",
    Duration = 5
})

local succ, err = xpcall(function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NoobExploits/Impact/main/src/Checker.lua", true))()

    print("Impact Output: Loaded with 0 issues.  💫")
end, function(err)
    if (string.find(err, "404")) or (string.find(err, "attempt to call a nil value")) then
        flu:Notify({
            Title = "Impact failed to load!  💫",
            Content = "The script is currently down or something broke, please try again later or message @noobexploits.",
            Duration = 5
        })

        
        Inviter.Prompt({name = "Impact", invite = "discord.gg/PDxxpQ3nqm"})
    end
end)
