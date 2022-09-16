local fmt = string.format

local SupportedGames = {
    10714365287,
    0
}

assert(getgenv, "Your exploit appears to be missing the getgenv function.")
getgenv().request = request or type(http) == "table" and http.request
assert(request, "Your exploit appears to be missing the request function.")

if not isfolder("OpenHub") then
    makefolder("OpenHub")
end

if table.find(SupportedGames, game.PlaceId) then
    loadstring(request({
        Url = fmt("https://raw.githubusercontent.com/RBLX-LOAKS/RBLX/main/LOAKS/SCRIPTS/%i.LOAKS", game.PlaceId),
        Method = "GET"
    }).Body)()
else
    loadstring(request({
        Url = "https://raw.githubusercontent.com/RBLX-LOAKS/RBLX/main/LOAKS/SCRIPTS/Universal.lua",
        Method = "GET"
    }).Body)()
end
