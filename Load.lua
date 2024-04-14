-- Got from https://github.com/RegularVynixu/Vynixius/blob/main/Loader.lua btw :)
local games = {
    [{155615604}] = "https://raw.githubusercontent.com/NoobExploits/Impact/main/games/Prison%20Life/PC.lua",
    [{662417684}] = "https://raw.githubusercontent.com/NoobExploits/Impact/main/games/Lucky%20Block%20BG/PC.lua",
}

for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        loadstring(game:HttpGet(url))()
        break
    end
end
