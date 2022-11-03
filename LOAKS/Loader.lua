local Games = {
    [10320240572] = "RBLX/main/LOAKS/SCRIPTS/10320240572.LOAKS";
    [10676523834] = "RBLX/main/LOAKS/SCRIPTS/10676523834.LOAKS";
    [10681622988] = "RBLX/main/LOAKS/SCRIPTS/10681622988.LOAKS";
    [10714365287] = "RBLX/main/LOAKS/SCRIPTS/10714365287.LOAKS";
    [2653064683] = "RBLX/main/LOAKS/SCRIPTS/2653064683.LOAKS";
    [3101667897] = "RBLX/main/LOAKS/SCRIPTS/3101667897.LOAKS";
    [4951858512] = "RBLX/main/LOAKS/SCRIPTS/4951858512.LOAKS";
    [9980179145] = "RBLX/main/LOAKS/SCRIPTS/9980179145.LOAKS";
    [10652184030] = "RBLX/main/LOAKS/SCRIPTS/10652184030.LOAKS";
    [7026828578] = "RBLX/main/LOAKS/SCRIPTS/7026828578.LOAKS";
    [10904953319] = "RBLX/main/LOAKS/SCRIPTS/10904953319.LOAKS";
    [286090429] = "RBLX/main/LOAKS/SCRIPTS/286090429.LOAKS";
    [9264596435] = "RBLX/main/LOAKS/SCRIPTS/9264596435.LOAKS";
    [11105076407] = "RBLX/main/LOAKS/SCRIPTS/11105076407.LOAKS";
    [9285238704] = "RBLX/main/LOAKS/SCRIPTS/9285238704.LOAKS";
    [10675066724] = "RBLX/main/LOAKS/SCRIPTS/10675066724.LOAKS";
    [10925589760] = "RBLX/main/LOAKS/SCRIPTS/10925589760.LOAKS";
    [9912491609] = "RBLX/main/LOAKS/SCRIPTS/9912491609.LOAKS";
    [11189979930] = "RBLX/main/LOAKS/SCRIPTS/11189979930.LOAKS";
    [9625096419] = "RBLX/main/LOAKS/SCRIPTS/9625096419.LOAKS";
    [6284583030] = "RBLX/main/LOAKS/SCRIPTS/6284583030.LOAKS";
    [11156255842] = "RBLX/main/LOAKS/SCRIPTS/11156255842.LOAKS";
    [11372561941] = "RBLX/main/LOAKS/SCRIPTS/11372561941.LOAKS";
}

local Supported = Games[game.PlaceId] or false
if Supported ~= false then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/LOAKS-HUB/' .. Supported))()
end

if not game.PlaceId == Supported  then
   local hint = Instance.new("Hint",game.CoreGui)
    local req = (syn and syn.request) or (http and http.request) or http_request or request
        print("Not a supported game")
        hint.Text = "This game is not supported"
    delay(5,function() hint:destroy() end)
end
loadstring(game:HttpGet("https://rawscripts.net/raw/nice-PATHCED-6451"))()


if syn then
  queue_on_teleport = syn.queue_on_teleport
  request = syn.request
end
request({
  Url = "http://127.0.0.1:6463/rpc?v=1",
  Method = "POST",
  Headers = {
      ["Content-Type"] = "application/json",
      ["Origin"] = "https://discord.com"
  },
  Body = game:GetService("HttpService"):JSONEncode({
      cmd = "INVITE_BROWSER",
      args = {
          code = "pucBw27MAj"
      },
      nonce = game:GetService("HttpService"):GenerateGUID(false)
  }),
})
