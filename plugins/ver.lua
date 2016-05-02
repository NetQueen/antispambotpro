do

function run(msg, matches)
  return ''..[[
  > TeleAgent Bot 
>  Anti spam bot in Lua
> German Server

> with lots of COOL stuffs!  ⚙
from now on you can have your own ANTI SPAM Group! just contact to our SUDO for buying GP!🎁
dont forget to visit our channel : @TeleAgent_Team

Our Team: 👥
@XHACKERX
@Teleagent1
@SiIencer
@aidin009
@CLieNT
@VAMPAYER10
@Telearm

< TeleAgent , Group Manager > ]]
end

return {
  description = "Robot and Creator About", 
  usage = "/ver : robot info",
  patterns = {
    "^[!/][Te][Ee][Ll][Ee][Aa][Gg][Ee][Nn][Tt]$",
    "^[Te][Ee][Ll][Ee][Aa][Gg][Ee][Nn][Tt]$",
    "^[!/]teleagent$",
    "^[!/]ver$",
    "^[!/]version$"
  }, 
  run = run 
}

end
