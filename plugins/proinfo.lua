do
function run(msg, matches)
  return "> نام گروه "..msg.to.title.."\n> نام شما : "..(msg.from.first_name or ").."\n> نام اول : "..(msg.from.first_name or ").."\n> نام آخر : "..(msg.from.last_name or ").."\n> آیدی : "..msg.from.id.."\n> یوزرنیم : @"..(msg.from.username or ").."\n> شماره تلفن : "..(msg.from.phone or ").."+".."\n> ایدی پیام : "..msg.id.."\n> نام کامل : "..(msg.from.print_name or ").."\n> نوع سیم کارت : "..(msg.from.sim or ").."\n> زمان : "..(msg.from.loc or ").."\n_________________________\n@TeleAgent_Team "
end
return {
  description = "", 
  usage = "",
  patterns = {
  "^Info$",
  "^info$",
  },
  run = run
}

end
— By sorblack channel: @PrimeTeam
