--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY Memo                           ▀▄ ▄▀ 
▀▄ ▄▀     BY Memo       (@ii02iI)          ▀▄ ▄▀ 
▀▄ ▄▀ Making the file by Memo              ▀▄ ▄▀   
▀▄ ▄▀          weather  :  الطقس            ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
local BASE_URL = "http://api.openweathermap.org/data/2.5/weather" 

local function get_weather(location) 
  print("Finding weather in ", location) 
  local url = BASE_URL 
  url = url..'?q='..location..'&APPID=eedbc05ba060c787ab0614cad1f2e12b' 
  url = url..'&units=metric' 

  local b, c, h = http.request(url) 
  if c ~= 200 then return nil end 

  local weather = json:decode(b) 
  local city = weather.name 
  local country = weather.sys.country 
  local temp = 'الاحوال الجوية لمدينة :'..city..'\n\n🌡 درجة حرارة الهواء الحالية : '..weather.main.temp..' C\n\nالضغط الجوي :'..weather.main.pressure..'\nالرطوبة : '..weather.main.humidity..' %\n\n🔻الحد الأدنى من درجات الحرارة اليوم :'..weather.main.temp_min..'\n🔺درجة الحرارة القصوى اليوم:'..weather.main.temp_min..'\n\n🌬 سرعة الرياح : '..weather.wind.speed..'\nالرياح : '..weather.wind.deg..'\n\n🔸خط الطول : '..weather.coord.lon..'\n🔹خط العرض : '..weather.coord.lat 
  local conditions = 'أحوال الطقس الحالية:' 

  if weather.weather[1].main == 'Clear' then 
    conditions = conditions .. 'شہٰمہٰس حہٰآرة تہٰجہٰويے 🌞' 
  elseif weather.weather[1].main == 'Clouds' then 
    conditions = conditions .. 'غہٰآئہٰم  ☁️' 
  elseif weather.weather[1].main == 'Rain' then 
    conditions = conditions .. ' مہٰمہٰطہٰر (بخت واحنا ماكلنا الحر 🙌🏽😹) 🌨' 
  elseif weather.weather[1].main == 'Thunderstorm' then 
    conditions = conditions .. ' عہٰآصہٰف  🌪🌪  '
  elseif weather.weather[1].main == 'Mist' then 
    conditions = conditions .. 'ضہٰبہٰآبہٰ (بخت 🙌🏽😹) 🌫' 
  end 

  return temp .. '\n\n' .. conditions..'\n\nchannel : @ch_dev' 
end 
local function II02II(msg, matches) 
    city = matches[1] 
  local wtext = get_weather(city) 
  if not wtext then 
    wtext = 'آكہٰتہٰب آلہٰمہٰوقہٰع صہٰحہٰيہٰح ولہٰيہٰديے 😒🚶🏻' 
  end 
  return wtext 
end 

return { 

  patterns = { 
   "^الطقس (.*)$", 
    }, 
  run = II02II 
} 
-- BY Dev - @II02II 
