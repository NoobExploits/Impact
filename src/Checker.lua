local devices = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/hello-n-bye/starry/main/src/device.lua", true))()
local placeid = game.PlaceId

local function isMobile()
    if (devices) == "Windows" or (string.find(devices, "Krampus")) then
        return "PC"
    else
        if (string.find(identifyexecutor(), "Solara")) or (string.find(identifyexecutor(), "Wave")) then
            return "PC"
        else
            return "Mobile"
        end
    end
end

local games = {
    [155615604] = "https://raw.githubusercontent.com/NoobExploits/Impact/main/games/Prison%20Life/" .. isMobile() ..".lua",
    [662417684] = "https://raw.githubusercontent.com/NoobExploits/Impact/main/games/Lucky%20Block%20BG/PC.lua",
}

local found = false

-- Load Script From Games Table
for ids, url in next, games do
    if ids == game.PlaceId then
        found = true
        loadstring(game:HttpGet(url))()
        break
    end
end

-- Universal Script
if not found then
    found = false -- this isnt even needed but i did anyways so HA
    local url = "https://raw.githubusercontent.com/NoobExploits/Impact/main/games/Universal/" .. isMobile() ..".lua",
    loadstring(game:HttpGet(url))()
end
