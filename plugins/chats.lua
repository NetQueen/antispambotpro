local function run(msg)
if msg.text == "hi" then
	return "Hello bb"
end
if msg.text == "Hi" then
	return "Hello honey"
end
if msg.text == "Hello" then
	return "Hi bb"
end
if msg.text == "hello" then
	return "Hi honey"
end
if msg.text == "علی" then
	return "با باباییم چیکار داری؟"
end
if msg.text == "سلام" then
	return "سلام عزیزم"
end
if msg.text == "خوبی" then
	return "ممنون شما چطورید؟"
end
if msg.text == "خوبی؟" then
	return "ممنون شما چطورید؟"
end
if msg.text == "بای" then
	return "بای بای"
end
if msg.text == "قیمت" then
	return [[قیمت گروه: 📢

یک ماهه: 1000 تومان 1⃣
دو ماهه: 2000 تومان 2⃣
سه ماهه: 3000 تومان 3⃣

مادام العمر: 5000 هزار تومان⭕️

خرید از دو راه شارژ و واریز به کارت ممکن است✔️

شماره حساب:🏧 6273531307197961
( بانک تجارت - علی رییسی )

کارت شارژ: ايرانسل 📶

ادمین: @XHACKERX 👤]]
end
if msg.text == "ربات" then
	return "بله؟"
end
if msg.text == "Salam" then
	return "Salam aleykom"
end
if msg.text == "salam" then
	return "و علیکم السلام"
end
if msg.text == "TeleAgent" then    
	return "BEst Bot In The World!"
end
if msg.text == "teleagent" then
	return "Best Bot In The World!"
end
if msg.text == "Teleagent" then
	return "Best Bot In The World"
end
if msg.text == "TeleAgentbot" then
	return "Yes?"
end
if msg.text == "Agent" then
	return "What?"
end
if msg.text == "bot" then
	return "hum?"
end
if msg.text == "Bot" then
	return "Huuuum?"
end
if msg.text == "?" then
	return "Hum??"
end
if msg.text == "Bye" then
	return "Babay"
end
if msg.text == "bye" then
	return "Bye Bye"
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
		"^[Hh]i$",
		"^[Hh]ello$",
		"^TeleAgent$",
		"^سلام$",
		"^خوبی$",
		"^بای$",
		"^ربات$",
		"^خوبی؟$",
		"^علی$",
		"^قیمت$",
		"^[Bb]ot$",
		"^[Tt]eleAgent$",
		"^[Bb]ye$",
		"^?$",
		"^[Ss]alam$",
		}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}
