--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY Memo                           ▀▄ ▄▀ 
▀▄ ▄▀     BY Memo       (@ii02iI)          ▀▄ ▄▀ 
▀▄ ▄▀ Making the file by Memo              ▀▄ ▄▀   
▀▄ ▄▀        kikebot :  طرد البوت            ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do 
-- Will leave the group if be added 
local function run(msg, matches) 
local bot_id = our_id 
local receiver = get_receiver(msg) 
    if matches[1] == 'طرد البوت' and is_admin1(msg) then 
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false) 
      leave_channel(receiver, ok_cb, false) 
    elseif msg.service and msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_admin1(msg) then 
       send_large_msg(receiver, 'آنہٰتہٰ لہٰيہٰس آلہٰمہٰطہٰور 🙇🏻🍷 تہٰفہٰظہٰل آدخہٰلہٰ @Ch_Dev 🌚😹 . ', ok_cb, false) 
       chat_del_user(receiver, 'user#id'..bot_id, ok_cb, false) 
      leave_channel(receiver, ok_cb, false) 
    end 
end 
return { 
  patterns = { 
    "^(طرد البوت)$", 
    "^!!tgservice (.+)$", 
  }, 
  run = run 
} 
end 
