
local apikey = 
'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImIxYjczOGRlLWJjNzktNDQzYS04Y2Y5LWVhNzhjNDA2Y2Q2YSIsImlhdCI6MTQ1OTE5MTg0OSwic3ViIjoiZGV2ZWxvcGVyLzI0NDE0NmY2LTA4M2MtYWZlNS04ZTQ3LWZlNjEyMGIwZmFlMiIsInNjb3BlcyI6WyJjbGFzaCJdLCJsaW1pdHMiOlt7InRpZXIiOiJkZXZlbG9wZXIvc2lsdmVyIiwidHlwZSI6InRocm90dGxpbmcifSx7ImNpZHJzIjpbIjg3LjIzNi4yMTQuNDIiXSwidHlwZSI6ImNsaWVudCJ9XX0.gRwWrQG-1mqo8bMcKkmCv1WLm3jVBJq2bHAIW5rzLvhgsDR58VYUTgxFzsKXCG12BdP0DgfbAeW_lk3CKRSeqQ' 
local function run(msg, matches)
 if matches[1]:lower() == 'clash' then
  local clantag = matches[2]
  if string.match(matches[2], '^#.+$') then
     clantag = string.gsub(matches[2], '#', '')
  end
  clantag = string.upper(clantag)
  local curl = 'curl -X GET --header "Accept: application/json" --header "authorization: Bearer '..apikey..'" "https://api.clashofclans.com/v1/clans/%23'..clantag..'"'
  cmd = io.popen(curl)
  
  local result = cmd:read('*all')
  local jdat = json:decode(result)
if jdat.reason then
      if jdat.reason == 'accessDenied' then return 'برای ثبت API Key خود به سایت زیر بروید\ndeveloper.clashofclans.com' end
   return '#Error\n'..jdat.reason
  end
  local text = 'تگ کلن: '.. jdat.tag
     text = text..'\nنام کلن: '.. jdat.name
     text = text..'\nوضعیت عضو گیری: '.. jdat.type
     text = text..'\nوضعیت وار: '.. jdat.warFrequency
	 text = text..'\nموقعیت مکانی: '..jdat.locationId
     text = text..'\nلول : '.. jdat.clanLevel
     text = text..'\nوار های پیروز: '.. jdat.warWins
     text = text..'\nامتیاز کلن: '.. jdat.clanPoints
     text = text..'\nحداقل امتیاز مورد نیاز: '.. jdat.requiredTrophies
     text = text..'\nافراد: '.. jdat.members..'نفر' 
	 text = text..'\nدرباره کلن: '.. jdat.description
     cmd:close()
  return text
 end
 if matches[1]:lower() == 'clash>' then
  local members = matches[2]
  if string.match(matches[2], '^#.+$') then
     members = string.gsub(matches[2], '#', '')
  end
  members = string.upper(members)
  local curl = 'curl -X GET --header "Accept: application/json" --header "authorization: Bearer '..apikey..'" "https://api.clashofclans.com/v1/clans/%23'..members..'/members"'
  cmd = io.popen(curl)
  local result = cmd:read('*all')
  local jdat = json:decode(result)
  if jdat.reason then
      if jdat.reason == 'accessDenied' then return 'برای ثبت API Key خود به سایت زیر بروید\ndeveloper.clashofclans.com' end
   return '#Error\n'..jdat.reason
  end
  local leader = ""
  local coleader = ""
  local items = jdat.items
  leader = 'مدیران کلن: \n'
   for i = 1, #items do
   if items[i].role == "leader" then
   leader = leader.."\nلیدر: "..items[i].name.."\nلول: "..items[i].expLevel
   end
   if items[i].role == "coLeader" then
   coleader = coleader.."\nکو لیدر: "..items[i].name.."\nلول: "..items[i].expLevel
   end
  end
text = leader.."\n"..coleader.."\n\nاعضا کلن:"
  for i = 1, #items do
  text = text..'\n'..i..'- '..items[i].name..'\nlevel: '..items[i].expLevel.."\n"
  end
   cmd:close()
  return text
 end
end

return {
   patterns = {
"^([Cc]lan) (.*)$",
"^[/!](clash) (.*)$",
"^([Cc]lan>) (.*)$",
   },
   run = run
}
