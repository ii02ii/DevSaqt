--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                     ▀▄ ▄▀ 
▀▄ ▄▀     BY Memo        (@ii02iI)        ▀▄ ▄▀ 
▀▄ ▄▀     channal       (@Ch_Dev)         ▀▄ ▄▀ 
▀▄ ▄▀     Making the file by Memo         ▀▄ ▄▀   
▀▄ ▄▀     reply  :  تكرار الكلام           ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
local function ii02ii(msg,matches)
local Memo = matches[2]
return Memo
end

  return  {
    patterns = {
      "^(كرر)(.+)",
},
  run = ii02ii,
}
-- BY Dev #Memo - @II02II 
-- اخمط بس اذكر المصدر
