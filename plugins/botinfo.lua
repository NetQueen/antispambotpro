do

function run(msg, matches)
  return ''..[[
TeleAgent Bot Info: 
—------------------------—
مشخصات سرور:

> حافظه رم: 2048MB DDR3
> هارد: 30 گیگ SSD
> CPU: 2Core 2*3.4 GHz Unlimited
> port: 1Gb/s Full Duplex
> مکان سرور: آلمان - Germany
> پهنای باند نامحدود
> دیتاسنتر Hetzner
> تضمین کیفیت
> تضمین آپتایم 99.9%

> Channel:
@TeleAgentTeam
> Bot:
@TeleAgent
> Bot SUDO:
@XHACKERX ]]
end

return {
  description = "Robot tools", 
  usage = "/tools : robot tools",
  patterns = {
    "^([!/][Bb][Oo][Tt])$",
    "^([Bb][Oo][Tt])$",
    "^([!/]bot)$",
    "^(bot)$"
  }, 
  run = run 
}

end
