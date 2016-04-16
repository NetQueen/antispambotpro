do
local function run(msg, matches)
if not matches[3] then
t = http.request("http://lsdbot.noip.me/tr/?key=free-api&from=auto&to=en&text="..URL.escape(matches[2]))
return t
else 
t = http.request("http://lsdbot.noip.me/tr/?key=free-api&from=auto&to="..matches[2].."&text="..URL.escape(matches[3]))
return t
end
end
return {patterns = {"^[#!/](tr) (.*) (.+)$","^[#!/](tr) (.+)$",}, run = run}
end
