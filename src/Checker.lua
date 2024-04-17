local devices = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NoobExploits/starry/master/src/device.lua", true))()

local placeid = game.PlaceId

local function isMobile()
    if (devices) == "Windows" or (string.find(devices, "Krampus")) then
        print("Impact Output: PC  💻")
        return "PC"
    else
        print("Impact Output: Mobile  📱")
        return "Mobile"
    end
end

local games = {
    [155615604] = "https://raw.githubusercontent.com/NoobExploits/Impact/main/games/Prison%20Life/" .. isMobile() ..".lua",
    [662417684] = "https://raw.githubusercontent.com/NoobExploits/Impact/main/games/Lucky%20Block%20BG/PC.lua",
}

for ids, url in next, games do
    if ids == game.PlaceId then
        loadstring(game:HttpGet(url))()
        break
    end
end

