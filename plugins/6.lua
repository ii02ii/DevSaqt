do

local function DyelaN(msg, matches)
if is_sudo(msg) then 
return [[
تہدٍلہلہ تہٳجہ مـْخہيہ ٳنٍجہٻًيہتہ 💋😻  
]]
     end
     
     if is_owner(msg) then 
return [[
لہخہٳطہر مـْطہﯝريہ حہنٍجہٻً 🙄🤖  
]]
     end
     
if is_momod(msg) then 
return [[
ٳذًٳ ٳنٍتہه تہنٍجہٻً 😐ٳنٍيہ ٳنٍجہٻً 😠 
]]
     end
     
if not is_momod(msg) then 
return [[
لہٳ ٳهيہنٍكُہ ٳنٍتہ ٳنٍجہٻً 🤖🍷   
]]
     end
     end

return {  
  patterns = {
       "^(انجب)$",
  },
  run = DyelaN,
}

end