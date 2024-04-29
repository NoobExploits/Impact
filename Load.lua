local flu = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

flu:Notify({
    Title = "📢  Please Wait.",
    Content = "Impact is currently loading.",
    Duration = 5
})

local succ, err = xpcall(function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NoobExploits/Impact/main/src/Checker.lua", true))()

    print("🚀  Impact Output: Loaded with 0 issues.")
end, function(err)
    if (string.find(err, "404")) or (string.find(err, "attempt to call a nil value")) then
        flu:Notify({
            Title = "🚀  Impact Can't Start.",
            Content = "The script is currently down, please try again later.",
            Duration = 5
        })
    end
end)
