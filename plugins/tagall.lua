--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY Memo                           ▀▄ ▄▀ 
▀▄ ▄▀     BY Memo       (@ii02iI)          ▀▄ ▄▀ 
▀▄ ▄▀ Making the file by Memo              ▀▄ ▄▀   
▀▄ ▄▀          tagall  :  تاك للكل            ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
local function tagall(cb_extra, success, result)
    local receiver = cb_extra.receiver
    local text = ''
local msgss = 0
    for k,v in pairs(result.members) do
 
        if v.username then
  
       msgss = msgss + 1
   text = text..msgss.."-  @"..v.username.."\n"
  end
    end
 text = text.."\n"..cb_extra.msg_text
 send_large_msg(receiver, text)
end

local function tagall2(cb_extra, success, result)
    local receiver = cb_extra.receiver
    local text = ''
local msgss = 0
    for k,v in pairs(result) do
 
        if v.username then
  
       msgss = msgss + 1
   text = text..msgss.."-  @"..v.username.."\n"
  end
    end
 text = text.."\n"..cb_extra.msg_text
 send_large_msg(receiver, text)
end
local function Memo(msg, matches)
    local receiver = get_receiver(msg)
 if not is_momod(msg) then 
  return "آبہٰنہٰے  (me soon( 😌 لہٰلہٰكہٰبہٰآر ديہٰے 🤖🍷"
 end
 if matches[1] then
 if msg.to.type == 'chat' then
 chat_info(receiver, tagall, {receiver = receiver,msg_text = matches[1]})
 elseif msg.to.type == 'channel' then
 channel_get_users(receiver, tagall2, {receiver = receiver,msg_text = matches[1]})
 end
 end
 return
end


return {
  description = "Will tag all ppl with a msg.",
  usage = {
    "اشارة للكل [msg]."
  },
  patterns = {
    "^تاك +(.+)$"
  },
  run = Memo
}
-- BY Dev - @II02II 
