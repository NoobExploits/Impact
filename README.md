# Impact Hub 🚀
```lua
local branch, owner = "main", "NoobExploits"

local function load(url: string)
  if (type(url)) ~= "string" then
    return warn("Url must be a string to load it.")
  else
    xpcall(function()
      loadstring(game:HttpGet(url))()
    end, function(error_code)
      return warn(("Error: %s on line %s"):format(error_code, debug.traceback()))
    end)
  end
end

load(("[https://raw.githubusercontent.com/%s/starry/%s/main.lua](https://raw.githubusercontent.com/%s/Impact/%s/Load.lua)"):format(owner, branch))
```

# Suported Games
### Prison Life
- Link: https://www.roblox.com/games/155615604/
- Showcase: https://www.youtube.com/watch?v=155ofKfOxsg

### Lucky Blocks Battlegrounds
- Link: https://www.roblox.com/games/662417684/
- Showcase: None is just like every other LBB script ig

# German Translation (Google Translate)

# Unterstützte Spiele
### Gefängnisleben
- Link: https://www.roblox.com/games/155615604/
- Showcase: https://www.youtube.com/watch?v=155ofKfOxsg

### Lucky Blocks Battlegrounds
- Verknüpfung: https://www.roblox.com/games/662417684/
- Vitrine: Keiner
