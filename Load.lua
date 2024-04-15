local flu = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

if (identifyexecutor()) == "Delta" then
      flu:Notify({
        Title = "Delta Detected  ☢️",
        Content = "This script has some features that Delta doesnt have please switch to something else! (Example: Codex)",
        Duration = 999999
    })
    setclipboard("discord.gg/PDxxpQ3nqm")
    wait(15)
    game.Players.LocalPlayer:Kick("Discord Server Copied To Clipboard")
end

flu:Notify(
    {
        Title = "Please Wait.  📢",
        Content = "Impact is loading, please give us a second!",
        Duration = 5
    }
)

local succ, err =
    xpcall(
    function()
        loadstring(
            game:HttpGetAsync("https://raw.githubusercontent.com/NoobExploits/Impact/main/src/Checker.lua", true)
        )()

        print("Impact Output: Loaded with 0 issues.  💫")
    end,
    function(err)
        if (string.find(err, "404")) or (string.find(err, "attempt to call a nil value")) then
            flu:Notify(
                {
                    Title = "Impact failed to load!  💫",
                    Content = "The script is currently down or something broke, please try again later or message @noobexploits.",
                    Duration = 5
                }
            )


            
            if (setclipboard) then
                setclipboard("discord.gg/PDxxpQ3nqm")
            end
        end
    end
)
