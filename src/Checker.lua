local devices = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NoobExploits/starry/master/src/device.lua", true))()
local placeid = game.PlaceId

local function isMobile()
    if (devices) == "Windows" or (string.find(devices, "Celery")) then
        return "pc"
    else
        if (string.find(identifyexecutor(), "Solara")) or (string.find(identifyexecutor(), "Wave")) or (string.find(identifyexecutor(), "incognito")) then
            return "pc"
        else
            if (string.find(string.lower(identifyexecutor()), "macsploit")) then
                return "pc"
            else
                return "mobile"
            end
        end
    end
end

local games = {
    --[155615604] = "https://raw.githubusercontent.com/NoobExploits/Impact/main/games/Prison%20Life/" .. isMobile() ..".lua",
    [155615604] = "https://raw.githubusercontent.com/NoobExploits/Impact/main/games/Prison%20Life/PC.lua",
    [662417684] = "https://raw.githubusercontent.com/NoobExploits/Impact/main/games/Lucky%20Block%20BG/PC.lua",
}

local found = false

for ids, url in next, games do
    if ids == game.PlaceId then
        found = true
        loadstring(game:HttpGet(url))()
        break
    end
end

if not found then
    found = false
    local url = "https://raw.githubusercontent.com/NoobExploits/Impact/main/games/Universal/" .. isMobile() ..".lua",
    loadstring(game:HttpGet(url))()
end
