--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY MOHAMMED HISHAM                ▀▄ ▄▀ 
▀▄ ▄▀     BY MOHAMMEDHISHAM (@TH3BOSS)     ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY MOHAMMED HISHAM       ▀▄ ▄▀   
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]

do
    
local function mohammedboss(msg,matches)
    if matches[1] == "chat_add_user"  then 
      return "💸 آهہٰلآ وسہٰهہٰلآ بہٰكہٰ فہٰيے آلہٰمہٰجہٰمہٰوعہٰةة 💋😻\n".."📝 آسہٰم  آلہٰمہٰجہٰمہٰوعہٰةة 🤖🍷 :: "..msg.to.title.."\n".." 📲 آيہٰديے آلہٰمہٰجہٰمہٰوعہٰةة 🆔 :: "..msg.to.id.."\n".."💋😻آسہٰم آلہٰصہٰآكہٰ/ة آلہٰيے ضہٰآفہٰكہٰ 💻 ::"..(msg.from.first_name or " ").."\n".."🆔 مہٰعہٰرف آلہٰصہٰآكہٰ/ة آلہٰيے ضہٰآفہٰكہ 🕵 :: @"..(msg.from.username or " ").."\n".."🆔 مہٰعہٰرفہٰكہٰ يہٰآلہٰمہٰآخہٰذ كہٰلہٰبيے 😍 :: @"..(msg.action.user.username or "لايوجد " ).."\n".."😶 آيہٰديے  آلہٰشہٰآب/ة آلہٰيے ضہٰآفہٰكہ 🆔 ::"..msg.from.id

    elseif matches[1] == "chat_add_user_link" then
      return "💸 آهہٰلآ وسہٰهہٰلآ بہٰكہٰ فہٰيے آلہٰمہٰجہٰمہٰوعہٰةة 💋😻\n".."📝 آسہٰم  آلہٰمہٰجہٰمہٰوعہٰةة 🤖🍷 :: "..msg.to.title.."\n".." 📲 آيہٰديے آلہٰمہٰجہٰمہٰوعہٰةة 🆔 :: "..msg.to.id.."\n".."💋😻آسہٰم آلہٰصہٰآكہٰ/ة آلہٰيے ضہٰآفہٰكہٰ 💻 ::"..(msg.from.first_name or " ").."\n".."🆔 مہٰعہٰرف آلہٰصہٰآكہٰ/ة آلہٰيے ضہٰآفہٰكہ 🕵 :: @"..(msg.from.username or " ").."\n".."🆔 مہٰعہٰرفہٰكہٰ يہٰآلہٰمہٰآخہٰذ كہٰلہٰبيے 😍 :: @"..(msg.action.user.username or "لايوجد " ).."\n".."😶 آيہٰديے  آلہٰشہٰآب/ة آلہٰيے ضہٰآفہٰكہ 🆔 ::"..msg.from.id

    end
    if matches[1] == "chat_del_user" then
    return "🔺 الله وياك كبد حياتي 😽❤️ سد الباب وراك 🌝"..msg.action.user.first_name
end
end
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",
        "^!!tgservice (chat_del_user)$"
       
    },
 run = mohammedboss,
}
end
-- Dev💀: @TH3BOSS
-- Dev bot💀: @ll60Kllbot
-- DevChannel 💀: @llDEV1ll
