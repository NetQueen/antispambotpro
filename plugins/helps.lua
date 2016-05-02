do

function run(msg, matches)

local mods = [[
دستورات مدیران گروه ●

> حذف کردن کاربر ⬅️ اخراج [آیدی،کد،ریپلای]
—-
> حذف همیشه کاربر ⬅️ بن [آیدی،کد،ریپلای]
—-
> حذف بن کردن (ان بن) ⬅️ حذف بن[کد،ایدی،ریپلای]
—-
> حذف کردن خود از گروه :⬅️ خروج
—-
> دریافت لیست مدیران گروه ⬅️ لیست مدیران
—-
> توضیحات گروه ⬅️ توضیحات
—-
> قوانین گروه ⬅️ قوانین
—-
> انتخاب عکس برای گروه ⬅️ تنظیم عکس
—-
> انتخاب نام برای گروه ⬅️ تنظیم نام [نام گروه]
—-
> گذاشتن قوانین در گروه خود ⬅️ تنظیم قوانین [قوانین گروه]
—-
> گذاشتن توضیحات گروه خود ⬅️ تنظیم توضیحات [توضیحات گروه]
—-
> قفل کردن ⬅️ قفل [اعضا|نام|ربات ها|تگ|عکس|خروج|فحش|رسانه]
—-
> باز کردن قفل ⬅️ بازکردن [اعضا|نام|ربات ها|تگ|عکس|خروج|فحش|رسانه]
—-
> دریافت ای دی تلگرامی خود ⬅️ ایدی
—-
> دریافت اطلاعات کاربری و مقام خود ⬅️ آیدی
—-
> دریافت ایدی به صورت کد ⬅️ کد [ایدی]
—-
> تغییر دادن لینک گروه ⬅️ لینک جدید
—-
> دریافت لینک گروه ⬅️ لینک
—-
> دریافت لینک گروه در پی وی خود ⬅️ لینک شخصی
—-
> انتخاب مالک گروه ⬅️ دارنده
—-
> حساس بودن به اسپم ⬅️ حساسیت [عدد بین 5 تا 20]
—-
> دریافت لیست افراد گروه ⬅️ آمار
—-
> دریافت مقام خود با استیکر ⬅️ me یا من
—-
> سیو کردن متنی ⬅️ ذخیره [اسم] [متن]
—-
> دریافت متن سیو شده ⬅️ دریافت [اسم]
—-
> حذف مدیران٫اعضا و.... ⬅️ پاک کردن اعضا / مدیران
—-
> دریافت یوزر ای دی یک کاربر ⬅️ ایدی [یوزر]
—-
> دریافت لیست افراد بن شده ⬅️ لیست بن
—-
> فیلتر با امکان تشخیص در جمله ⬅️ !addword [کلمه]
—-
> حذف کلمه : !remword [کلمه] , دریافت لیست: !badwords
—-
> تگ کردن افراد گروه ⬅️ تگ [متن]
—-
> ارسال نظر خود ⬅️ ارسال نظر [متن]
—-
> فیلتر کلمه ⬅️ filter + کلمه
—-
> حدف فیلتر ⬅️ filter - کلمه
—-
> اخطار کردن کلمه ⬅️ filter < کلمه
—-
> دریافت لیست کلمات فیلتر ⬅️ filterlist
—-
> جهت دریافت لیست ابزار ها: ⚙
/tools , !tools
—-
> جهت دریافت تنظیمات: ⚙
/settings , settings , تنظیمات
—-

> ربات به صورت دو زبانه است (FA , EN) برخی دستورات به انگیلیسی هم کار میکنند
==========================
 > راهنمای صاحبان:
 !help owner 
> راهنمای مدیران:
!help mod
> راهنمای اعضای معمولی:
!help member

 ]]

 
 local admin = [[ 
 
دستورات ادمین های ربات ●

> حذف کردن کاربر ⬅️ اخراج [آیدی،کد،ریپلای]
—-
> حذف همیشه کاربر ⬅️ بن [آیدی،کد،ریپلای]
—-
> حذف بن کردن (ان بن) ⬅️ حذف بن[کد،ایدی،ریپلای]
—-
> حذف کردن خود از گروه :⬅️ خروج
—-
> دریافت لیست مدیران گروه ⬅️ لیست مدیران
—-
> افزودن یک مدیر به گروه ⬅️ ترفیع [ریپلای،یوزرنیم]
—-
> حذف کردن یک مدیر ⬅️ تنزل [ریپلای،یوزرنیم]
—-
> توضیحات گروه ⬅️ توضیحات
—-
> قوانین گروه ⬅️ قوانین
—-
> انتخاب عکس برای گروه ⬅️ تنظیم عکس
—-
> انتخاب نام برای گروه ⬅️ تنظیم نام [نام گروه]
—-
> گذاشتن قوانین در گروه خود ⬅️ تنظیم قوانین [قوانین گروه]
—-
> گذاشتن توضیحات گروه خود ⬅️ تنظیم توضیحات [توضیحات گروه]
—-
> قفل کردن ⬅️ قفل [اعضا|نام|ربات ها|تگ|عکس|خروج|فحش|رسانه]
—-
> باز کردن قفل ⬅️ بازکردن [اعضا|نام|ربات ها|تگ|عکس|خروج|فحش|رسانه]
—-
> دریافت ای دی تلگرامی خود ⬅️ ایدی
—-
> دریافت اطلاعات کاربری و مقام خود ⬅️ آیدی
—-
> دریافت ایدی به صورت کد ⬅️ کد [ایدی]
—-
> دریافت تنظیمات گروه ⬅️ تنظیمات
—-
> تغییر دادن لینک گروه ⬅️ لینک جدید
—-
> دریافت لینک گروه ⬅️ لینک
—-
> دریافت لینک گروه در پی وی خود ⬅️ لینک شخصی
—-
> انتخاب مالک گروه ⬅️ دارنده
—-
> حساس بودن به اسپم ⬅️ حساسیت [عدد بین 5 تا 20]
—-
> دریافت لیست افراد گروه ⬅️ آمار
—-
> دریافت مقام خود با استیکر ⬅️ me یا من
—-
> سیو کردن متنی ⬅️ ذخیره [اسم] [متن]
—-
> دریافت متن سیو شده ⬅️ دریافت [اسم]
—-
> حذف مدیران٫اعضا و.... ⬅️ پاک کردن اعضا / مدیران
—-
> دریافت یوزر ای دی یک کاربر ⬅️ ایدی [یوزر]
—-
> دریافت لیست افراد بن شده ⬅️ لیست بن
—-
> فیلتر با امکان تشخیص در جمله ⬅️ !addword [کلمه]
—-
> حذف کلمه : !remword [کلمه] , دریافت لیست: !badwords
—-
> تگ کردن افراد گروه ⬅️ تگ [متن]
—-
> ارسال نظر خود ⬅️ ارسال نظر [متن]
—-
> فیلتر کلمه ⬅️ filter + کلمه
—-
> حدف فیلتر ⬅️ filter - کلمه
—-
> اخطار کردن کلمه ⬅️ filter < کلمه
—-
> دریافت لیست کلمات فیلتر ⬅️ filterlist
—-
> جهت دریافت لیست ابزار ها: ⚙
/tools , !tools
—-
> جهت دریافت تنظیمات: ⚙
/settings , settings , تنظیمات
—-

> ربات به صورت دو زبانه است (FA , EN) برخی دستورات به انگیلیسی هم کار میکنند
==========================
 > راهنمای صاحبان:
 !help owner 
> راهنمای مدیران:
!help mod
> راهنمای اعضای معمولی:
!help member
 
 ]]
 
 local owner = [[
 دستورات صاحب گروه ●

> حذف کردن کاربر ⬅️ اخراج [آیدی،کد،ریپلای]
—-
> حذف همیشه کاربر ⬅️ بن [آیدی،کد،ریپلای]
—-
> حذف بن کردن (ان بن) ⬅️ حذف بن[کد،ایدی،ریپلای]
—-
> حذف کردن خود از گروه :⬅️ خروج
—-
> دریافت لیست مدیران گروه ⬅️ لیست مدیران
—-
> افزودن یک مدیر به گروه ⬅️ ترفیع [ریپلای،یوزرنیم]
—-
> حذف کردن یک مدیر ⬅️ تنزل [ریپلای،یوزرنیم]
—-
> توضیحات گروه ⬅️ توضیحات
—-
> قوانین گروه ⬅️ قوانین
—-
> انتخاب عکس برای گروه ⬅️ تنظیم عکس
—-
> انتخاب نام برای گروه ⬅️ تنظیم نام [نام گروه]
—-
> گذاشتن قوانین در گروه خود ⬅️ تنظیم قوانین [قوانین گروه]
—-
> گذاشتن توضیحات گروه خود ⬅️ تنظیم توضیحات [توضیحات گروه]
—-
> قفل کردن ⬅️ قفل [اعضا|نام|ربات ها|تگ|عکس|خروج|فحش|رسانه]
—-
> باز کردن قفل ⬅️ بازکردن [اعضا|نام|ربات ها|تگ|عکس|خروج|فحش|رسانه]
—-
> دریافت ای دی تلگرامی خود ⬅️ ایدی
—-
> دریافت اطلاعات کاربری و مقام خود ⬅️ آیدی
—-
> دریافت ایدی به صورت کد ⬅️ کد [ایدی]
—-
> دریافت تنظیمات گروه ⬅️ تنظیمات
—-
> تغییر دادن لینک گروه ⬅️ لینک جدید
—-
> دریافت لینک گروه ⬅️ لینک
—-
> دریافت لینک گروه در پی وی خود ⬅️ لینک شخصی
—-
> انتخاب مالک گروه ⬅️ دارنده
—-
> حساس بودن به اسپم ⬅️ حساسیت [عدد بین 5 تا 20]
—-
> دریافت لیست افراد گروه ⬅️ آمار
—-
> دریافت مقام خود با استیکر ⬅️ me یا من
—-
> سیو کردن متنی ⬅️ ذخیره [اسم] [متن]
—-
> دریافت متن سیو شده ⬅️ دریافت [اسم]
—-
> حذف مدیران٫اعضا و.... ⬅️ پاک کردن اعضا / مدیران
—-
> دریافت یوزر ای دی یک کاربر ⬅️ ایدی [یوزر]
—-
> دریافت لیست افراد بن شده ⬅️ لیست بن
—-
> فیلتر با امکان تشخیص در جمله ⬅️ !addword [کلمه]
—-
> حذف کلمه : !remword [کلمه] , دریافت لیست: !badwords
—-
> تگ کردن افراد گروه ⬅️ تگ [متن]
—-
> ارسال نظر خود ⬅️ ارسال نظر [متن]
—-
> فیلتر کلمه ⬅️ filter + کلمه
—-
> حدف فیلتر ⬅️ filter - کلمه
—-
> اخطار کردن کلمه ⬅️ filter < کلمه
—-
> دریافت لیست کلمات فیلتر ⬅️ filterlist
—-
> جهت دریافت لیست ابزار ها: ⚙
/tools , !tools
—-
> جهت دریافت تنظیمات: ⚙
/settings , settings , تنظیمات
—-

> ربات به صورت دو زبانه است (FA , EN) برخی دستورات به انگیلیسی هم کار میکنند
==========================
 > راهنمای صاحبان:
 !help owner 
> راهنمای مدیران:
!help mod
> راهنمای اعضای معمولی:
!help member
 
 ]]
 
 local member = [[
 دستورات کاربران عادی ●
—-
> ماشین حساب ⬅️ حساب [ارقام]
—-
> توجه حتما عدد ها به انگیلیسی باشند ⚙
دستورات ماشین حساب: 
(+) این یعنی جمع 

(-) این یعنی تفریق 

(*) این یعنی ضرب کردن

(/) این یعنی تقسیم کردن
—-
> تکرار متن مورد نظر شما ⬅️ بگو [متن]
—-
> سرچ کلن ⬅️ [تگ کلن] clash/
—-
> سرچ در آپارات ⬅️ [موضوع] aparat/
—-
> دریافت اوقات شرعی ⬅️ [شهر] azan/
—-
> تبدیل متن به صدا ⬅️ [متن انگیلیسی] voice!
—-
> ساخت عکس نوشته ⬅️ تبدیل [متن انگیلیسی]
—-
> جست و جو در گوگل ⬅️ گوگل [متن]
—-
> سرچ در اینستاگرام ⬅️ [نام] insta/
—-
> ساخت استیکر ⬅️ [متن] [سایز] sticker!
—-
> دریافت آب و هوا ⬅️ [شهر] weather
—-
> برای دریافت ساعت ⬅️ زمان [کشور یا شهر]
—-
> مشاهده نقشه ⬅️ نقشه [کشور یا شهر]
—-
> ساختن عکس نوشته سگی ⬅️ سگ [متن انگیلیسی]
—-
> دریافت  qr ⬅️ Qr code [ متن]
—-
> دریافت اخبار هکری ⬅️ اخبار هک
—-
> دریافت زمان فعلی ⬅️ time/
—-
> دریافت آهنگ ⬅️[نام موزیک] music/
—-
> دانلود آهنگ⬅️ [شماره آهنگ] dl/
—-

—------------------------------—
@TeleAgent_Team
 
 ]]
 
 local sudo = [[
 دستورات سودو ●

> حذف کردن کاربر ⬅️ اخراج [آیدی،کد،ریپلای]
—-
> حذف همیشه کاربر ⬅️ بن [آیدی،کد،ریپلای]
—-
> حذف بن کردن (ان بن) ⬅️ حذف بن[کد،ایدی،ریپلای]
—-
> حذف کردن خود از گروه :⬅️ خروج
—-
> دریافت لیست مدیران گروه ⬅️ لیست مدیران
—-
> افزودن یک مدیر به گروه ⬅️ ترفیع [ریپلای،یوزرنیم]
—-
> حذف کردن یک مدیر ⬅️ تنزل [ریپلای،یوزرنیم]
—-
> توضیحات گروه ⬅️ توضیحات
—-
> قوانین گروه ⬅️ قوانین
—-
> انتخاب عکس برای گروه ⬅️ تنظیم عکس
—-
> انتخاب نام برای گروه ⬅️ تنظیم نام [نام گروه]
—-
> گذاشتن قوانین در گروه خود ⬅️ تنظیم قوانین [قوانین گروه]
—-
> گذاشتن توضیحات گروه خود ⬅️ تنظیم توضیحات [توضیحات گروه]
—-
> قفل کردن ⬅️ قفل [اعضا|نام|ربات ها|تگ|عکس|خروج|فحش|رسانه]
—-
> باز کردن قفل ⬅️ بازکردن [اعضا|نام|ربات ها|تگ|عکس|خروج|فحش|رسانه]
—-
> دریافت ای دی تلگرامی خود ⬅️ ایدی
—-
> دریافت اطلاعات کاربری و مقام خود ⬅️ آیدی
—-
> دریافت ایدی به صورت کد ⬅️ کد [ایدی]
—-
> دریافت تنظیمات گروه ⬅️ تنظیمات
—-
> تغییر دادن لینک گروه ⬅️ لینک جدید
—-
> دریافت لینک گروه ⬅️ لینک
—-
> دریافت لینک گروه در پی وی خود ⬅️ لینک شخصی
—-
> انتخاب مالک گروه ⬅️ دارنده
—-
> حساس بودن به اسپم ⬅️ حساسیت [عدد بین 5 تا 20]
—-
> دریافت لیست افراد گروه ⬅️ آمار
—-
> دریافت مقام خود با استیکر ⬅️ me یا من
—-
> سیو کردن متنی ⬅️ ذخیره [اسم] [متن]
—-
> دریافت متن سیو شده ⬅️ دریافت [اسم]
—-
> حذف مدیران٫اعضا و.... ⬅️ پاک کردن اعضا / مدیران
—-
> دریافت یوزر ای دی یک کاربر ⬅️ ایدی [یوزر]
—-
> دریافت لیست افراد بن شده ⬅️ لیست بن
—-
> فیلتر با امکان تشخیص در جمله ⬅️ !addword [کلمه]
—-
> حذف کلمه : !remword [کلمه] , دریافت لیست: !badwords
—-
> تگ کردن افراد گروه ⬅️ تگ [متن]
—-
> ارسال نظر خود ⬅️ ارسال نظر [متن]
—-
> فیلتر کلمه ⬅️ filter + کلمه
—-
> حدف فیلتر ⬅️ filter - کلمه
—-
> اخطار کردن کلمه ⬅️ filter < کلمه
—-
> دریافت لیست کلمات فیلتر ⬅️ filterlist
—-
> جهت دریافت لیست ابزار ها: ⚙
/tools , !tools
—-
> جهت دریافت تنظیمات: ⚙
/settings , settings , تنظیمات
—-

> ربات به صورت دو زبانه است (FA , EN) برخی دستورات به انگیلیسی هم کار میکنند
==========================
 > راهنمای صاحبان:
 !help owner 
> راهنمای مدیران:
!help mod
> راهنمای اعضای معمولی:
!help member
 ]]
 
 if msg.to.type == 'chat' and matches[1]:lower() == 'راهنما' and matches[2] == nil then 
     
    if is_sudo(msg) then 
        return sudo
    elseif is_admin(msg) then 
        return admin 
    elseif is_owner(msg) then 
        return owner
    elseif is_momod(msg) then 
         return mods
    else 
        return member
        end
end
 if msg.to.type == 'chat' and matches[1]:lower() == 'help' and matches[2]:lower() == 'owner' then 
     if is_owner(msg) then 
         return owner
    else return 'Only Admins or higher can See this !'
    end 
end

 if msg.to.type == 'chat' and matches[1]:lower() == 'help' and matches[2]:lower() == 'mod' then
     if is_momod(msg) then 
         return mods
    else return 'only Owners Or higher Can See this !'
    end 
end 

 if msg.to.type == 'chat' and matches[1]:lower() == 'help' and matches[2]:lower() == 'member' then
         return member
    end 
end

    
return {
 
  patterns = {
	"^(راهنما)$",
	
	"^!(help) (mod)$",
	"^!(help) (owner)$",
	"^!(help) (member)$",
  }, 
  run = run 
}

end




--  -_-_-_-_-_-_-_-_-_-   ||-_-_-_-_-_   ||             ||-_-_-_-_-_
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||-_-_-_-_-_   ||             ||-_-_-_-_-_
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||-_-_-_-_-_   ||-_-_-_-_-_   ||-_-_-_-_-_
--
--
--                               /\                              /\             /-_-_-_-_-_    ||-_-_-_-_-_   ||-_-_-_-_-_
--  ||\\            //||        //\\        ||      //||        //\\           //              ||             ||         //
--  || \\          // ||       //  \\       ||     // ||       //  \\         //               ||             ||       //
--  ||  \\        //  ||      //    \\      ||    //  ||      //    \\       ||                ||             ||    //
--  ||   \\      //   ||     //______\\     ||   //   ||     //______\\      ||      -_-_-_-   ||-_-_-_-_-_   || //
--  ||    \\    //    ||    //        \\    ||  //    ||    //        \\     ||           ||   ||             ||  \\ 
--  ||     \\  //     ||   //          \\   || //     ||   //          \\     \\          ||   ||             ||     \\
--  ||      \\//      ||  //            \\  ||//      ||  //            \\     \\-_-_-_-_-||   ||-_-_-_-_-_   ||        \\
--
--
--  ||-_-_-_-    ||           ||           ||               //-_-_-_-_-_-
--  ||     ||    ||           ||           ||              //
--  ||_-_-_||    ||           ||           ||             //
--  ||           ||           ||           ||             \\
--  ||           ||           \\           //              \\
--  ||           ||            \\         //               //
--  ||           ||-_-_-_-_     \\-_-_-_-//    -_-_-_-_-_-//
--
--By @ali_ghoghnoos
--@telemanager_ch
