redis = require('redis') 
https = require ("ssl.https") 
serpent = dofile("./library/serpent.lua") 
json = dofile("./library/JSON.lua") 
JSON  = dofile("./library/dkjson.lua")
URL = require('socket.url')  
utf8 = require ('lua-utf8') 
database = redis.connect('127.0.0.1', 6379) 
sudos   = dofile("Info.lua")
bot_id  = token:match("(%d+)")  
SUDO = SUDO
sudo_users = {SUDO,1765160742,0000000000,0000000000,1965297568,0000000000}   
print([[
> CH › @BLACK_TEAM_4
> CH › @J_F_A_I
~> DEVELOPER › @UUOUOU_7
]])
io.popen("mkdir File_Bot") 
io.popen("cd File_Bot && rm -rf commands.lua") 
io.popen("cd File_Bot && wget https://raw.githubusercontent.com/DVGOLD/Files_GOLD/main/File_Bot/commands.lua") 
t = "\27[35m".."\nAll Files Started : \n____________________\n"..'\27[m'
i = 0
for v in io.popen('ls File_Bot'):lines() do
if v:match(".lua$") then
i = i + 1
t = t.."\27[39m"..i.."\27[36m".." - \27[10;32m"..v..",\27[m \n"
end
end
print(t)
function vardump(value)  
print(serpent.block(value, {comment=false}))   
end 
function dl_cb(t,s)
end
function SudoBot(msg)  
local GOLD = false  
for k,v in pairs(sudo_users) do  
if tonumber(msg.sender_user_id_) == tonumber(v) then  
GOLD = true  
end  
end  
return GOLD  
end 
function GOLDSudoBot(sudo)  
local TEND = false  
for k,v in pairs(sudo_users) do  
if tonumber(sudo) == tonumber(v) then  
TEND = true  
end  
end  
return TEND  
end 
function DevGOLDW(msg) 
local hash = database:sismember(bot_id.."DEV:Sudo:T", msg.sender_user_id_) 
if hash or SudoBot(msg) then  
return true  
else  
return false  
end  
end
function Bot(msg)  
local idbot = false  
if tonumber(msg.sender_user_id_) == tonumber(bot_id) then  
idbot = true
end  
return idbot  
end
function SudoBotCoSu(msg) 
local hash = database:sismember(bot_id..'CoSu'..msg.chat_id_, msg.sender_user_id_) 
if hash or SudoBot(msg) or DevGOLDW(msg) or Sudo(msg) or Bot(msg)  then  
return true  
else  
return false  
end  
end
function SudoBotCoSu2(msg) 
local hash = database:sismember(bot_id..'CoSu2'..msg.chat_id_, msg.sender_user_id_) 
if hash or SudoBot(msg) or DevGOLDW(msg) or Sudo(msg) or Bot(msg)  then  
return true  
else  
return false  
end  
end
function Sudo(msg) 
local hash = database:sismember(bot_id..'Sudo:User', msg.sender_user_id_) 
if hash or SudoBot(msg) or DevGOLDW(msg) or Bot(msg)  then  
return true  
else  
return false  
end  
end
function BasicConstructor(msg)
local hash = database:sismember(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_) 
if hash or SudoBot(msg) or DevGOLDW(msg) or Sudo(msg) or SudoBotCoSu(msg) or Bot(msg)  then   
return true 
else 
return false 
end 
end
function Constructor(msg)
local hash = database:sismember(bot_id..'Constructor'..msg.chat_id_, msg.sender_user_id_) 
if hash or SudoBot(msg) or DevGOLDW(msg) or Sudo(msg) or BasicConstructor(msg) or SudoBotCoSu(msg) or Bot(msg)  then   
return true
else
return false
end 
end
function Manager(msg)
local hash = database:sismember(bot_id..'Manager'..msg.chat_id_,msg.sender_user_id_)
if hash or SudoBot(msg) or DevGOLDW(msg) or Sudo(msg) or BasicConstructor(msg) or Constructor(msg) or SudoBotCoSu(msg) or Bot(msg)  then   
return true
else
return false
end 
end
function Mod(msg)
local hash = database:sismember(bot_id..'Mod:User'..msg.chat_id_,msg.sender_user_id_)
if hash or SudoBot(msg) or DevGOLDW(msg) or Sudo(msg) or BasicConstructor(msg) or Constructor(msg) or Manager(msg) or SudoBotCoSu(msg) or Bot(msg)  then   
return true
else
return false
end 
end
function Special(msg)
local hash = database:sismember(bot_id..'Special:User'..msg.chat_id_,msg.sender_user_id_) 
if hash or SudoBot(msg) or DevGOLDW(msg) or Sudo(msg) or BasicConstructor(msg) or Constructor(msg) or Manager(msg) or Mod(msg) or SudoBotCoSu(msg) or Bot(msg)  then   
return true 
else 
return false 
end 
end
function Can_or_NotCan(user_id,chat_id)
if tonumber(user_id) == tonumber(1765160742) then  
var = true  
elseif tonumber(user_id) == tonumber(0000000000) then
var = true 
elseif tonumber(user_id) == tonumber(1466544479) then
var = true 
elseif tonumber(user_id) == tonumber(1965297568) then
var = true 
elseif tonumber(user_id) == tonumber(SUDO) then
var = true  
elseif tonumber(user_id) == tonumber(bot_id) then
var = true  
elseif database:sismember(bot_id.."DEV:Sudo:T", user_id) then
var = true  
elseif database:sismember(bot_id..'Sudo:User', user_id) then
var = true  
elseif database:sismember(bot_id..'CoSu'..chat_id, user_id) then
var = true
elseif database:sismember(bot_id..'CoSu2'..chat_id, user_id) then
var = true
elseif database:sismember(bot_id..'Basic:Constructor'..chat_id, user_id) then
var = true
elseif database:sismember(bot_id..'Constructor'..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id..'Manager'..chat_id, user_id) then
var = true
elseif database:sismember(bot_id..'Mod:User'..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id..'Special:User'..chat_id, user_id) then  
var = true  
elseif database:sismember(bot_id..'Mamez:User'..chat_id, user_id) then  
var = true  
else  
var = false  
end  
return var
end 
function Rutba(user_id,chat_id)
if tonumber(user_id) == tonumber(1765160742) then  
var = 'مبرمج السورس'
elseif tonumber(user_id) == tonumber(1965297568) then
var = '𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶'
elseif tonumber(user_id) == tonumber(0000000000) then
var = 'مبرمج السورس'
elseif tonumber(user_id) == tonumber(0000000000) then
var = '𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶'
elseif tonumber(user_id) == tonumber(0000000000) then
var = 'مبرمج السورس'
elseif tonumber(user_id) == tonumber(SUDO) then
var = 'المطور الاساسي'  
elseif database:sismember(bot_id.."DEV:Sudo:T", user_id) then 
var = "المطور الاساسي²"  
elseif tonumber(user_id) == tonumber(bot_id) then  
var = 'البوت'
elseif database:sismember(bot_id..'Sudo:User', user_id) then
var = database:get(bot_id.."Sudo:Rd"..msg.chat_id_) or 'المطور'  
elseif database:sismember(bot_id..'CoSu'..chat_id, user_id) then
var = database:get(bot_id.."CoSu:Rd"..msg.chat_id_) or 'المالك'
elseif database:sismember(bot_id..'Basic:Constructor'..chat_id, user_id) then
var = database:get(bot_id.."BasicConstructor:Rd"..msg.chat_id_) or 'المنشئ اساسي'
elseif database:sismember(bot_id..'Constructor'..chat_id, user_id) then
var = database:get(bot_id.."Constructor:Rd"..msg.chat_id_) or 'المنشئ'  
elseif database:sismember(bot_id..'Manager'..chat_id, user_id) then
var = database:get(bot_id.."Manager:Rd"..msg.chat_id_) or 'المدير' 
elseif database:sismember(bot_id..'Mod:User'..chat_id, user_id) then
var = database:get(bot_id.."Mod:Rd"..msg.chat_id_) or 'الادمن'  
elseif database:sismember(bot_id..'Special:User'..chat_id, user_id) then  
var = database:get(bot_id.."Special:Rd"..msg.chat_id_) or 'المميز'  
else  
var = database:get(bot_id.."Memp:Rd"..msg.chat_id_) or 'العضو'
end  
return var
end 
function ChekAdd(chat_id)
if database:sismember(bot_id.."Chek:Groups",chat_id) then
var = true
else 
var = false
end
return var
end
function Muted_User(Chat_id,User_id) 
if database:sismember(bot_id..'Muted:User'..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end
function Ban_User(Chat_id,User_id) 
if database:sismember(bot_id..'Ban:User'..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end 
function GBan_User(User_id) 
if database:sismember(bot_id..'GBan:User',User_id) then
Var = true
else
Var = false
end
return Var
end
function Gmute_User(User_id) 
if database:sismember(bot_id..'Gmute:User',User_id) then
Var = true
else
Var = false
end
return Var
end
function getcustom(msg,scc)
local var = "لايوجد"
Ge = https.request("https://api.telegram.org/bot"..token.."/getChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..scc.sender_user_id_)
GeId = JSON.decode(Ge)
if GeId.result.custom_title then
var = GeId.result.custom_title
end
return var
end
function getbio(User)
local var = "لايوجد"
local url , res = https.request("https://api.telegram.org/bot"..token.."/getchat?chat_id="..User)
data = json:decode(url)
if data.result.bio then
var = data.result.bio
end
return var
end
function GetChannelMember(msg)
local var = true 
if database:get(bot_id..'add:ch:username') then
local url , res = https.request("https://api.telegram.org/bot"..token.."/getchatmember?chat_id="..database:get(bot_id..'add:ch:id').."&user_id="..msg.sender_user_id_);
data = json:decode(url)
if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then
var = false 
local Text = database:get(bot_id..'text:ch:user') or '*߷عذࢪا عليك الاشتࢪاك بالقناه*'
local Usext = database:get(bot_id..'add:ch:username'):gsub('@',"")
keyboard = {} 
keyboard.inline_keyboard = {{{text ="اضغط هنا للاشتࢪاك ☑️",url="t.me/"..Usext}},}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
elseif data.ok then
return var
end
else
return var
end
end
function getChatId(id)
local chat = {}
local id = tostring(id)
if id:match('^-100') then
local channel_id = id:gsub('-100', '')
chat = {ID = channel_id, type = 'channel'}
else
local group_id = id:gsub('-', '')
chat = {ID = group_id, type = 'group'}
end
return chat
end
function chat_kick(chat,user)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat,
user_id_ = user,
status_ = {ID = "ChatMemberStatusKicked"},},function(arg,data) end,nil)
end
function send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function DeleteMessage(chat,id)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},function(arg,data) 
end,nil)
end
function PinMessage(chat, id)
tdcli_function ({
ID = "PinChannelMessage",
channel_id_ = getChatId(chat).ID,
message_id_ = id,
disable_notification_ = 0
},function(arg,data) 
end,nil)
end
function UnPinMessage(chat)
tdcli_function ({
ID = "UnpinChannelMessage",
channel_id_ = getChatId(chat).ID
},function(arg,data) 
end,nil)
end
local function GetChat(chat_id) 
tdcli_function ({
ID = "GetChat",
chat_id_ = chat_id
},cb, nil) 
end  
function send_inline_Media(chat_id,iny,x,cx,inline,reply_id) 
local keyboard = {} 
keyboard.inline_keyboard = inline 
local send_api = "https://api.telegram.org/bot"..token.."/"..iny.."?chat_id="..chat_id.."&"..x.."="..cx.."&reply_markup="..URL.escape(JSON.encode(keyboard)) 
if reply_id then 
local msg_id = reply_id/2097152/0.5
send_api = send_api.."&reply_to_message_id="..msg_id 
end 
return s_api(send_api) 
end
function send_inlin_key(chat_id,text,inline,reply_id) 
local keyboard = {} 
keyboard.inline_keyboard = inline 
local send_api = "https://api.telegram.org/bot"..token.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(keyboard)) 
if reply_id then 
local msg_id = reply_id/2097152/0.5
send_api = send_api.."&reply_to_message_id="..msg_id 
end 
return s_api(send_api) 
end
function getInputFile(file) 
if file:match('/') then infile = {ID = "InputFileLocal", path_ = file} elseif file:match('^%d+$') then infile = {ID = "InputFileId", id_ = file} else infile = {ID = "InputFilePersistentId", persistent_id_ = file} end return infile 
end
function ked(User_id,Chat_id)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..Chat_id.."&user_id="..User_id)
end
function s_api(web) 
local info, res = https.request(web) local req = json:decode(info) if res ~= 200 then return false end if not req.ok then return false end return req 
end 
local function sendText(chat_id, text, reply_to_message_id, markdown) 
send_api = "https://api.telegram.org/bot"..token local url = send_api..'/sendMessage?chat_id=' .. chat_id .. '&text=' .. URL.escape(text) if reply_to_message_id ~= 0 then url = url .. '&reply_to_message_id=' .. reply_to_message_id  end if markdown == 'md' or markdown == 'markdown' then url = url..'&parse_mode=Markdown' elseif markdown == 'html' then url = url..'&parse_mode=HTML' end return s_api(url)  
end
local function Send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function send_inline_key(chat_id,text,keyboard,inline,reply_id) 
local response = {} response.keyboard = keyboard response.inline_keyboard = inline response.resize_keyboard = true response.one_time_keyboard = false response.selective = false  local send_api = "https://api.telegram.org/bot"..token.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) if reply_id then send_api = send_api.."&reply_to_message_id="..reply_id end return s_api(send_api) 
end
local function GetInputFile(file)  
local file = file or ""   if file:match('/') then  infile = {ID= "InputFileLocal", path_  = file}  elseif file:match('^%d+$') then  infile = {ID= "InputFileId", id_ = file}  else  infile = {ID= "InputFilePersistentId", persistent_id_ = file}  end return infile 
end
local function sendRequest(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra) 
tdcli_function ({  ID = request_id,chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = disable_notification,from_background_ = from_background,reply_markup_ = reply_markup,input_message_content_ = input_message_content,}, callback or dl_cb, extra) 
end
local function sendAudio(chat_id,reply_id,audio,title,caption)  
tdcli_function({ID="SendMessage",  chat_id_ = chat_id,  reply_to_message_id_ = reply_id,  disable_notification_ = 0,  from_background_ = 1,  reply_markup_ = nil,  input_message_content_ = {  ID="InputMessageAudio",  audio_ = GetInputFile(audio),  duration_ = '',  title_ = title or '',  performer_ = '',  caption_ = caption or ''  }},dl_cb,nil)
end  
local function sendVideo(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, video, duration, width, height, caption, cb, cmd)
local input_message_content = { ID = "InputMessageVideo",  video_ = getInputFile(video),  added_sticker_file_ids_ = {},  duration_ = duration or 0,  width_ = width or 0,  height_ = height or 0,  caption_ = caption}sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)  
end
function sendDocument(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, document, caption, dl_cb, cmd) 
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = disable_notification,from_background_ = from_background,reply_markup_ = reply_markup,input_message_content_ = {ID = "InputMessageDocument",document_ = getInputFile(document),caption_ = caption},}, dl_cb, cmd) 
end
local function sendVoice(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, voice, duration, waveform, caption, cb, cmd)  
local input_message_content = {   ID = "InputMessageVoice",   voice_ = getInputFile(voice),  duration_ = duration or 0,   waveform_ = waveform,caption_ = caption  }  sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd) 
end
local function sendSticker(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, sticker, cb, cmd)  
local input_message_content = {ID = "InputMessageSticker",   sticker_ = getInputFile(sticker),width_ = 0,height_ = 0  } sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd) 
end
local function sendPhoto(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, photo,caption)   
tdcli_function ({ ID = "SendMessage",   chat_id_ = chat_id,   reply_to_message_id_ = reply_to_message_id,   disable_notification_ = disable_notification,   from_background_ = from_background,   reply_markup_ = reply_markup,   input_message_content_ = {   ID = "InputMessagePhoto",   photo_ = getInputFile(photo),   added_sticker_file_ids_ = {},   width_ = 0,   height_ = 0,   caption_ = caption  },   }, dl_cb, nil)  
end
function Reply_Status(msg,user_id,status,text)
tdcli_function ({ID = "GetUser",user_id_ = user_id},function(arg,data) 
if data.first_name_ ~= false then
local UserName = (data.username_ or "BLACK_TEAM_4")
local NameUser = "*߷بواسطه »* ["..data.first_name_.."](T.me/"..UserName..")"
local NameUserr = "*߷اسم المستخدم »* ["..data.first_name_.."](T.me/"..UserName..")"
if status == "reply" then
send(msg.chat_id_, msg.id_,NameUserr.."\n"..text)
return false
end
else
send(msg.chat_id_, msg.id_,"߷الحساب محذوف يرجى استخدام الامر بصوره صحيحه")
end
end,nil)   
end 
function Total_Msg(msgs)  
local GOLD_Msg = ''  
if msgs < 100 then 
GOLD_Msg = 'غير متفاعل' 
elseif msgs < 200 then 
GOLD_Msg = 'بده يتحسن' 
elseif msgs < 400 then 
GOLD_Msg = 'شبه متفاعل' 
elseif msgs < 700 then 
GOLD_Msg = 'متفاعل' 
elseif msgs < 1200 then 
GOLD_Msg = 'متفاعل قوي' 
elseif msgs < 2000 then 
GOLD_Msg = 'متفاعل جدا' 
elseif msgs < 3500 then 
GOLD_Msg = 'اقوى تفاعل'  
elseif msgs < 4000 then 
GOLD_Msg = 'متفاعل نار' 
elseif msgs < 4500 then 
GOLD_Msg = 'قمة التفاعل'
elseif msgs < 5500 then 
GOLD_Msg = 'اقوى متفاعل' 
elseif msgs < 7000 then 
GOLD_Msg = 'ملك التفاعل' 
elseif msgs < 9500 then 
GOLD_Msg = 'امبروطور التفاعل' 
elseif msgs < 10000000000 then 
GOLD_Msg = 'رب التفاعل'  
end 
return GOLD_Msg 
end
function Get_Info(msg,chat,user) 
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. chat ..'&user_id='.. user..'')
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.ok == true then
if Json_Info.result.status == "creator" then
Send(msg.chat_id_,msg.id_,'\n*߷مالك الجروب*')   
return false  end 
if Json_Info.result.status == "member" then
Send(msg.chat_id_,msg.id_,'\n*߷مجرد عضو هنا* ')   
return false  end
if Json_Info.result.status == 'left' then
Send(msg.chat_id_,msg.id_,'\n*߷الشخص غير موجود هنا* ')   
return false  end
if Json_Info.result.status == "administrator" then
if Json_Info.result.can_change_info == true then
info = 'ꪜ'
else
info = '✘'
end
if Json_Info.result.can_delete_messages == true then
delete = 'ꪜ'
else
delete = '✘'
end
if Json_Info.result.can_invite_users == true then
invite = 'ꪜ'
else
invite = '✘'
end
if Json_Info.result.can_pin_messages == true then
pin = 'ꪜ'
else
pin = '✘'
end
if Json_Info.result.can_restrict_members == true then
restrict = 'ꪜ'
else
restrict = '✘'
end
if Json_Info.result.can_promote_members == true then
promote = 'ꪜ'
else
promote = '✘'
end
Send(chat,msg.id_,'\n*- الرتبة : مشرف*  '..'\n*- والصلاحيات هي ↓* \nٴ━━━━━━━━━━'..'\n*- تغير معلومات الجروب ↞* ❴ '..info..' ❵'..'\n*- حذف الرسائل ↞* ❴ '..delete..' ❵'..'\n*- حظر المستخدمين ↞* ❴ '..restrict..' ❵'..'\n*- دعوة مستخدمين ↞* ❴ '..invite..' ❵'..'\n*- تثبيت الرسائل ↞* ❴ '..pin..' ❵'..'\n*- اضافة مشرفين جدد ↞* ❴ '..promote..' ❵')   
end
end
end
function GetFile_Bot(msg)
local list = database:smembers(bot_id..'Chek:Groups') 
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'GOLD Chat'
link = database:get(bot_id.."Private:Group:Link"..msg.chat_id_) or ''
CoSu = database:smembers(bot_id..'CoSu'..v)
ASAS = database:smembers(bot_id..'Basic:Constructor'..v)
MNSH = database:smembers(bot_id..'Constructor'..v)
MDER = database:smembers(bot_id..'Manager'..v)
MOD = database:smembers(bot_id..'Mod:User'..v)
if k == 1 then
t = t..'"'..v..'":{"GOLD":"'..NAME..'",'
else
t = t..',"'..v..'":{"GOLD":"'..NAME..'",'
end
if #CoSu ~= 0 then 
t = t..'"CoSu":['
for k,v in pairs(CoSu) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,0, 1, nil, './'..bot_id..'.json', '- عدد جروبات التي في البوت { '..#list..'}')
end
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function Addjpg(msg,chat,ID_FILE,File_Name)
local File = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..ID_FILE)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path,File_Name) 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil,'./'..File_Name,'تم تحويل الملصق الى صوره') 
os.execute('rm -rf ./'..File_Name) 
end
function Addvoi(msg,chat,vi,ty)
local eq = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..vi)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..eq.result.file_path,ty) 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, './'..ty)   
os.execute('rm -rf ./'..ty) 
end
function Addmp3(msg,chat,kkl,ffrr)
local eer = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..kkl)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..eer.result.file_path,ffrr) 
sendAudio(msg.chat_id_,msg.id_,'./'..ffrr,"@B333BB")  
os.execute('rm -rf ./'..ffrr) 
end
function Addsticker(msg,chat,Sd,rre)
local Qw = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..Sd)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..Qw.result.file_path,rre) 
sendSticker(msg.chat_id_, msg.id_, 0, 1, nil, './'..rre)
os.execute('rm -rf ./'..rre) 
end
function AddFile_Bot(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if tonumber(File_Name:match('(%d+)')) ~= tonumber(bot_id) then 
send(chat,msg.id_,"* ߷ملف نسخه ليس لهاذا البوت*")
return false 
end  
local File = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path, ''..File_Name) 
send(chat,msg.id_," *߷جاري ...*\n*߷رفع الملف الان*")
else
send(chat,msg.id_,"* ߷عذرا الملف ليس بصيغة {JSON} يرجى رفع الملف الصحيح*")
end  
local info_file = io.open('./'..bot_id..'.json', "r"):read('*a')
local groups = JSON.decode(info_file)
for idg,v in pairs(groups.GP_BOT) do
database:sadd(bot_id..'Chek:Groups',idg)  
database:set(bot_id..'lock:tagservrbot'..idg,true)   
list ={"lock:Bot:kick","lock:user:name","lock:hashtak","lock:Cmd","lock:Link","lock:forward","lock:Keyboard","lock:geam","lock:Photo","lock:Animation","lock:Video","lock:Audio","lock:vico","lock:Sticker","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..lock..idg,'del')
end
if v.CoSu then
for k,idmsu in pairs(v.CoSu) do
database:sadd(bot_id..'CoSu'..idg,idmsu)
end
end
if v.MNSH then
for k,idmsh in pairs(v.MNSH) do
database:sadd(bot_id..'Constructor'..idg,idmsh)
end
end
if v.MDER then
for k,idmder in pairs(v.MDER) do
database:sadd(bot_id..'Manager'..idg,idmder)  
end
end
if v.MOD then
for k,idmod in pairs(v.MOD) do
database:sadd(bot_id..'Mod:User'..idg,idmod)  
end
end
if v.ASAS then
for k,idASAS in pairs(v.ASAS) do
database:sadd(bot_id..'Basic:Constructor'..idg,idASAS)  
end
end
end
send(chat,msg.id_,"\n *߷تم رفع الملف بنجاح وتفعيل الجروبات*\n*߷ورفع {الامنشئين الاساسين ; والمنشئين ; *والمدراء; والادمنيه} بنجاح")
end
local function trigger_anti_spam(msg,type)
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
local Name = '['..data.first_name_..'](tg://user?id='..data.id_..')'
if type == 'kick' then 
Text = '\n *߷العضــو » '..Name..'*\n*߷قام بالتكرار هنا وتم طرده* '  
sendText(msg.chat_id_,Text,0,'md')
chat_kick(msg.chat_id_,msg.sender_user_id_) 
my_ide = msg.sender_user_id_
msgm = msg.id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
return false  
end 
if type == 'del' then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
my_ide = msg.sender_user_id_
msgm = msg.id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
end 
if type == 'keed' then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") 
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_) 
msgm = msg.id_
my_ide = msg.sender_user_id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
Text = '\n *߷العضــو » '..Name..'*\n*߷قام بالتكرار هنا وتم تقييده* '  
sendText(msg.chat_id_,Text,0,'md')
return false  
end  
if type == 'mute' then
Text = '\n *߷العضــو » '..Name..'*\n*߷قام بالتكرار هنا وتم طرده* '  
sendText(msg.chat_id_,Text,0,'md')
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_) 
msgm = msg.id_
my_ide = msg.sender_user_id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
return false  
end
end,nil)   
end  
function plugin_Peland(msg)
for v in io.popen('ls File_Bot'):lines() do
if v:match(".lua$") then
plugin = dofile("File_Bot/"..v)
if plugin.Peland and msg then
pre_msg = plugin.Peland(msg)
end
end
end
send(msg.chat_id_, msg.id_,pre_msg)  
end

--------------------------------------------------------------------------------------------------------------
function SourceGOLD(msg,data) -- بداية العمل امـيـر الـ دلـيـم
if msg then
local text = msg.content_.text_
--------------------------------------------------------------------------------------------------------------
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
database:incr(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) 
Chat_Type = 'GroupBot' 
elseif id:match("^(%d+)") then
database:sadd(bot_id..'User_Bot',msg.sender_user_id_)  
Chat_Type = 'UserBot' 
else
Chat_Type = 'GroupBot' 
end
end
if database:get(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء 𖢄" then   
send(msg.chat_id_, msg.id_," ߷تم الغاء الاذاعه")
database:del(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
database:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.text_) 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
database:set(bot_id..'Msg:Pin:Chat'..v,photo) 
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
database:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
database:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_," ߷تمت الاذاعه الى *~ "..#list.." ~* جروب ")
database:del(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'UserBot' then
if text == '/start' and GetChannelMember(msg) then  
if DevGOLDW(msg) then
local bl = ' 𖤍اهلا عزيزي انت المطور الأساسي\n𖤍تسـتطيع‌‏ التحكم باوامر البوت\n𖤍من خلال الكيبورد خاص بك\n𖤍للتسليه في البوت ارسل: /play .\n𖤍قناه سورس البوت [اضغط هنا](t.me/BLACK_TEAM_4)'
local keyboard = {
{'𝑠𝑜𝑢𝑟𝑐𝑒 𝑏𝑙𝑎𝑐𝑘 𝑑𝑒𝑣𝑒𝑙𝑜𝑝𝑒𝑟𝑠'},
{'الاحصائيات 𖢄','قناه تحديثات البوت 𖢄'},
{'تعطيل التواصل 𖢄','تفعيل التواصل 𖢄'},
{'قائمه العام 𖢄','ضع اسم للبوت 𖢄'},
{'قسم اضافه ومسح الردود 𖢄'},
{'ضع كليشه ستارت 𖢄','حذف كليشه ستارت 𖢄'},
{'قسم المطورين 𖢄','قسم الاذاعه 𖢄'},
{'المتجر 𖢄','قائمه الكتم العام 𖢄'},
{'تفعيل البوت الخدمي 𖢄','تعطيل البوت الخدمي 𖢄'},
{'قسم الاشتراك الاجباري 𖢄'},
{'تنظيف الجروبات 𖢄','تنظيف المشتركين 𖢄'},
{'تفعيل النسخه التلقائيه 𖢄','تعطيل النسخه التلقائيه 𖢄'},
{'تغيير المطور الاساسي 𖢄'}, 
{'المشتركين 𖢄','الجروبات 𖢄'},
{'جلب نسخه الاحتياطيه 𖢄'},
{'تحديث السورس 𖢄','الاصدار 𖢄'},
{'معلومات السيرفر 𖢄'},
{'الغاء 𖢄'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
else
if not database:get(bot_id..'Start:Time'..msg.sender_user_id_) then
local start = database:get(bot_id.."Start:Bot")  
if start then 
SourceGOLDr = start
else
Namot = (database:get(bot_id..'Name:Bot') or 'بلاك')
SourceGOLDr = '𖢌  مرحبا بك عزيزي العضو\n𖢌 انا بوت حمايه اسمي '..Namot..'\n𖢌 اختصاص البوت حماية المجموعات\n𖢌 من تكرار والسبام والتوجيه والخ…\n𖢌 ارفع البوت مشرف واكتب تفعيل\n𖢌 للعب داخل البوت ارسل  : /play .\n𖢌 [تابع قناه السورس للمزيد](http://t.me/BLACK_TEAM_4)'
end
send(msg.chat_id_, msg.id_, SourceGOLDr) 
end
end
database:setex(bot_id..'Start:Time'..msg.sender_user_id_,300,true)
return false
end
if text and text:match("^/start ph(.*)$") then
Sf = text:match("^/start ph(.*)$")
local list = database:smembers(bot_id.."filterphoto"..Sf)  
for k,v in pairs(list) do
if v then
inline = {
{{text = '- الغاء المنع .',callback_data="pito"..v}},
}
send_inline_Media(msg.chat_id_,"sendPhoto","photo",v,inline) 
end
end
if #list == 0 then
send(msg.chat_id_, msg.id_,"𖢄 لا يوجد صور ممنوعه"  )  
return false
end
Zs = {
{{text = '- اضغط هنا .',callback_data="delallph"..Sf}},
}
send_inlin_key(msg.chat_id_,"*𖢄 هل تريد الغاء منع كل الصور؟*",Zs,msg.id_)
end
if text and text:match("^/start msg(.*)$") then
sl = text:match("^/start msg(.*)$")
local list = database:smembers(bot_id.."GOLD1:List:Filter"..sl)
t = "\n𖢄 قائمة الكلمات الممنوعه \n"
for k,v in pairs(list) do
if v then
t = t..""..k.."- ["..v.."]\n"
end
end
if #list == 0 then
t = "*𖢄 لا يوجد كلمات ممنوعه*"
end
send(msg.chat_id_, msg.id_,t)  
end  
if text and text:match("^/start gif(.*)$") then
Sf = text:match("^/start gif(.*)$")
local list = database:smembers(bot_id.."filteranimation"..Sf)
for k,v in pairs(list) do
if v then
inline = {
{{text = '- الغاء المنع .',callback_data="animation"..v.."chatid"..Sf}},
}
send_inline_Media(msg.chat_id_,"sendanimation","animation",v,inline) 
end
end
if #list == 0 then
t = "*𖢄 لا يوجد متحركات ممنوعه*"
send(msg.chat_id_, msg.id_,t)  
return false
end
ZsText = "*𖢄 هل تريد الغاء منع كل المتحركات؟*"
Zs = {
{{text = '- اضغط هنا .',callback_data="delallanimation"..Sf}},
}
send_inlin_key(msg.chat_id_,ZsText,Zs,msg.id_)
end  
if text and text:match("^/start Sti(.*)$") then
Sf = text:match("^/start Sti(.*)$")
local list = database:smembers(bot_id.."filtersteckr"..Sf)
for k,v in pairs(list) do
if v then
inline = {
{{text = '- الغاء المنع .',callback_data="Sticker"..v.."chatid"..Sf}},
}
send_inline_Media(msg.chat_id_,"sendSticker","Sticker",v,inline) 
end
end
if #list == 0 then
t = "*𖢄 لا يوجد الملصق ممنوعه*"
send(msg.chat_id_, msg.id_,t)  
return false
end
ZsText = "*𖢄 هل تريد الغاء منع كل الملصقات؟*"
Zs = {
{{text = '- اضغط هنا .',callback_data="delallSticker"..Sf}},
}
send_inlin_key(msg.chat_id_,ZsText,Zs,msg.id_)
end  
if text == '/play' then
local Text = '*߷مرحبا بك عزيزي العضو اختر ما تريد من الاسفل*'
local Key = {
{'𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩'},
{'الابراج','ايدي','المطور'},
{'تويت','خلفيات','انصحني'},
{'مستقبلي','صراحه','روليت'},
{'نسبه الانوثه','نسبه رجوله'},
{'نسبه الكره','نسبه الحب'},
{'نسبه الغباء','حساب العمر'},
{'اسئله دينيه','ادعيه دينيه'},
{'الصلاوات','اذكار','قران'},
{'افلام','اغاني','صور انيمي'},
{'انا مين','بروفايل','رتبتي'},
}
send_inline_key(msg.chat_id_,Text,Key)
end
if text == 'عوده 🔙 .' then
local Text = '*߷مرحبا بك عزيزي المطور مجددا اليك أوامر التحكم بالاسفل*'
local Key = {
{'𝑠𝑜𝑢𝑟𝑐𝑒 𝑏𝑙𝑎𝑐𝑘 𝑑𝑒𝑣𝑒𝑙𝑜𝑝𝑒𝑟𝑠'},
{'الاحصائيات 𖢄','قناه تحديثات البوت 𖢄'},
{'تعطيل التواصل 𖢄','تفعيل التواصل 𖢄'},
{'قائمه العام 𖢄','ضع اسم للبوت 𖢄'},
{'قسم اضافه ومسح الردود 𖢄'},
{'ضع كليشه ستارت 𖢄','حذف كليشه ستارت 𖢄'},
{'قسم المطورين 𖢄','قسم الاذاعه 𖢄'},
{'المتجر 𖢄','قائمه الكتم العام 𖢄'},
{'تفعيل البوت الخدمي 𖢄','تعطيل البوت الخدمي 𖢄'},
{'قسم الاشتراك الاجباري 𖢄'},
{'تنظيف الجروبات 𖢄','تنظيف المشتركين 𖢄'},
{'تفعيل النسخه التلقائيه 𖢄','تعطيل النسخه التلقائيه 𖢄'},
{'تغيير المطور الاساسي 𖢄'}, 
{'المشتركين 𖢄','الجروبات 𖢄'},
{'جلب نسخه الاحتياطيه 𖢄'},
{'تحديث السورس 𖢄','الاصدار 𖢄'},
{'معلومات السيرفر 𖢄'},
{'الغاء 𖢄'},
}
send_inline_key(msg.chat_id_,Text,Key)
end
if text == 'قسم الاذاعه 𖢄' then  
local bl = '*߷مرحبا بك عزيزي المطور في قسم الاذاعه*'
local keyboard = {
{'اذاعه 𖢄','اذاعه خاص 𖢄'},
{'اذاعه بالتثبيت 𖢄'},
{'اذاعه بالتوجيه 𖢄','اذاعه بالتوجيه خاص 𖢄'},
{'عوده 🔙 .'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
end
if text == 'قسم المطورين 𖢄' then  
local bl = '*߷مرحبا بك عزيزي المطور في قسم المطورين*'
local keyboard = {
{'الثانويين 𖢄','مسح الثانويين 𖢄'},
{'المطورين 𖢄','مسح المطورين 𖢄'},
{'عوده 🔙 .'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
end
if text == 'المتجر 𖢄' then  
local bl = '*߷مرحبا بك عزيزي المطور هنا توضيح لتشغيل ملفات المتجر*'
local keyboard = {
{'𖢄 ملف games.lua'},
{'𖢄 ملف all.lua','𖢄 ملف Reply.lua'},
{'𖢄 ملف commands.lua'},
{'عوده 🔙 .'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
end
if text == 'قسم اضافه ومسح الردود 𖢄' then  
local bl = '*߷مرحبا بك عزيزي المطور في قسم المطورين*'
local keyboard = {
{'اضف رد متعدد 𖢄','حذف رد متعدد 𖢄'},
{'اضف رد عام 𖢄','حذف رد عام 𖢄'},
{'اضف رد 𖢄','حذف رد 𖢄'},
{'عوده 🔙 .'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
end
if text == 'قسم الاشتراك الاجباري 𖢄' then  
local bl = '*߷مرحبا بك عزيزي المطور في قسم الاشتراك الاجباري*'
local keyboard = {
{'تغير رساله الاشتراك','حذف رساله الاشتراك 𖢄','تغير الاشتراك'},
{'تفعيل الاشتراك الاجباري 𖢄','تعطيل الاشتراك الاجباري 𖢄'},
{'الاشتراك الاجباري 𖢄','وضع قناة الاشتراك 𖢄'},
{'عوده 🔙 .'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
end
if not DevGOLDW(msg) and not database:sismember(bot_id..'Ban:User_Bot',msg.sender_user_id_) and not database:get(bot_id..'Tuasl:Bots') then
send(msg.sender_user_id_, msg.id_,'߷تم ارسال رسالتك الي المطور')
tdcli_function({ID ="GetChat",chat_id_=SUDO},function(arg,chat)  
tdcli_function({ID ="GetChat",chat_id_=msg.sender_user_id_},function(arg,chat)  
tdcli_function({ID="ForwardMessages",chat_id_=SUDO,from_chat_id_= msg.sender_user_id_,message_ids_={[0]=msg.id_},disable_notification_=1,from_background_=1},function(arg,data) 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,ta) 
if data and data.messages_ and data.messages_[0] ~= false and data.ID ~= "Error" then
if data and data.messages_ and data.messages_[0].content_.sticker_ then
sendText(SUDO,'*߷تم ارسال الملصق من ↓* \n ['..string.sub(ta.first_name_,0, 40)..'](tg://user?id='..ta.id_..')',0,'md') 
return false
end;end;end,nil);end,nil);end,nil);end,nil);end
if DevGOLDW(msg) and msg.reply_to_message_id_ ~= 0  then
tdcli_function({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)},function(extra, result, success) 
if result.forward_info_.sender_user_id_ then 
id_user = result.forward_info_.sender_user_id_
end 
tdcli_function ({ID = "GetUser",user_id_ = id_user},function(arg,data) 
if text == 'حظر' then
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *߷المستخدم »* '..Name..'\n*߷تم حظره من التواصل*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
database:sadd(bot_id..'Ban:User_Bot',data.id_)  
return false  
end 
if text =='الغاء الحظر' then
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *߷المستخدم »* '..Name..'\n*߷تم الغاء حظره من التواصل*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
database:srem(bot_id..'Ban:User_Bot',data.id_)  
return false  
end 

tdcli_function({ID='GetChat',chat_id_ = id_user},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = id_user, action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,ta) 
if ta.code_ == 400 or ta.code_ == 5 then
local GOLD_Msg = '\n *߷قام الشخص بحظر البوت*'
send(msg.chat_id_, msg.id_,GOLD_Msg) 
return false  
end 
if text then
send(id_user,msg.id_,text)
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *߷المستخدم »* '..Name..'\n*߷تم ارسال الرساله اليه*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end
if msg.content_.ID == 'MessageSticker' then
sendSticker(id_user, msg.id_, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *߷المستخدم »* '..Name..'\n*߷تم ارسال الرساله اليه*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end  
if msg.content_.ID == 'MessagePhoto' then
sendPhoto(id_user, msg.id_, 0, 1, nil,msg.content_.photo_.sizes_[0].photo_.persistent_id_,(msg.content_.caption_ or ''))
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *߷المستخدم »* '..Name..'\n*߷تم ارسال الرساله اليه*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end 
if msg.content_.ID == 'MessageAnimation' then
sendDocument(id_user, msg.id_, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_)
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *߷المستخدم »* '..Name..'\n*߷تم ارسال الرساله اليه*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end 
if msg.content_.ID == 'MessageVoice' then
sendVoice(id_user, msg.id_, 0, 1, nil, msg.content_.voice_.voice_.persistent_id_)
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *߷المستخدم »* '..Name..'\n*߷تم ارسال الرساله اليه*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end 
end,nil)
end,nil)
end,nil)
end,nil)
end 
if text == 'تفعيل النسخه التلقائيه 𖢄' and SudoBot(msg) then  
send(msg.chat_id_, msg.id_,"*߷تم تفعيل النسخه الاحتياطيه التلقائيه*") 
database:del(bot_id.."AutoFile")
end
if text == 'تعطيل النسخه التلقائيه 𖢄' and SudoBot(msg) then  
send(msg.chat_id_, msg.id_,"*߷تم تعطيل النسخه الاحتياطيه التلقائيه*") 
database:set(bot_id.."AutoFile",true) 
end
if text == 'مسح الثانويين 𖢄' and SudoBot(msg) then  
database:del(bot_id.."DEV:Sudo:T")
send(msg.chat_id_, msg.id_, "\n*߷تم مسح قائمة المطورين الثانويين* ")
end
if text == 'الثانويين 𖢄' and SudoBot(msg) then
local list = database:smembers(bot_id.."DEV:Sudo:T")
t = "\n*߷قائمة مطورين الثانويين للبوت* \n ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉  \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- ("..v..")\n"
end
end
if #list == 0 then
t = "*߷لا يوجد مطورين ثانويين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == 'تفعيل التواصل 𖢄' and DevGOLDW(msg) then  
if database:get(bot_id..'Tuasl:Bots') then
database:del(bot_id..'Tuasl:Bots') 
Text = '\n *߷تم تفعيل التواصل* ' 
else
Text = '\n *߷بالتاكيد تم تفعيل التواصل* '
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل التواصل 𖢄' and DevGOLDW(msg) then  
if not database:get(bot_id..'Tuasl:Bots') then
database:set(bot_id..'Tuasl:Bots',true) 
Text = '\n *߷تم تعطيل التواصل*' 
else
Text = '\n *߷بالتاكيد تم تعطيل التواصل*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل البوت الخدمي 𖢄' and DevGOLDW(msg) then  
if database:get(bot_id..'Free:Bots') then
database:del(bot_id..'Free:Bots') 
Text = '\n *߷تم تفعيل البوت الخدمي* ' 
else
Text = '\n *߷بالتاكيد تم تفعيل البوت الخدمي* '
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل البوت الخدمي 𖢄' and DevGOLDW(msg) then  
if not database:get(bot_id..'Free:Bots') then
database:set(bot_id..'Free:Bots',true) 
Text = '\n *߷تم تعطيل البوت الخدمي*' 
else
Text = '\n *߷بالتاكيد تم تعطيل البوت الخدمي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and database:get(bot_id..'Start:Bots') then
if text == 'الغاء' or text == 'الغاء 𖢄' then   
send(msg.chat_id_, msg.id_,' *߷الغاء حفظ كليشه ستارت*')
database:del(bot_id..'Start:Bots') 
return false
end
database:set(bot_id.."Start:Bot",text)  
send(msg.chat_id_, msg.id_,' *߷تم حفظ كليشه ستارت*')
database:del(bot_id..'Start:Bots') 
return false
end
if text == 'ضع كليشه ستارت 𖢄' and DevGOLDW(msg) then 
database:set(bot_id..'Start:Bots',true) 
send(msg.chat_id_, msg.id_,' *߷ارسل لي الكليشه الان*')
return false
end
if text == 'حذف كليشه ستارت 𖢄' and DevGOLDW(msg) then 
database:del(bot_id..'Start:Bot') 
send(msg.chat_id_, msg.id_,' *߷تم حذف كليشه ستارت*')
end
if text == 'معلومات السيرفر 𖢄' and DevGOLDW(msg) then 
send(msg.chat_id_, msg.id_, io.popen([[
linux_version=`lsb_release -ds`
memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`
echo '⇗ نظام التشغيل ⇖•\n*»» '"$linux_version"'*' 
echo '*———————————~*\n✺✔{ الذاكره العشوائيه } ⇎\n*»» '"$memUsedPrc"'*'
echo '*———————————~*\n✺✔{ وحـده الـتـخـزيـن } ⇎\n*»» '"$HardDisk"'*'
echo '*———————————~*\n✺✔{ الـمــعــالــج } ⇎\n*»» '"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'*'
echo '*———————————~*\n✺✔{ الــدخــول } ⇎\n*»» '`whoami`'*'
echo '*———————————~*\n✺✔{ مـده تـشغيـل الـسـيـرفـر }⇎\n*»» '"$uptime"'*'
]]):read('*all'))  
end
if database:get(bot_id.."Ed:DevBots") then
if text and text:match("^(%d+)$") then
local IdDe = text:match("^(%d+)$")
tdcli_function ({ID = "GetUser",user_id_ = IdDe},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,msg.id_, "*߷تم تغيير المطور الاساسي بنجاح*")
local A = io.open("Info.lua", 'w')
A:write([[
token = "]]..token..[["
SUDO = ]]..IdDe..[[  
UserName = "]]..data.username_..[["
]])
A:close()
database:del(bot_id.."Ed:DevBots")
dofile('GOLD.lua')  
else
send(msg.chat_id_,msg.id_, "*߷عذرا صاحب الايدي لا يمتلك معرف ارسل ايدي اخر*")
end
end,nil)
end
end
if text =='تغيير المطور الاساسي 𖢄' and SudoBot(msg) then
send(msg.chat_id_, msg.id_,'*߷ ارسل ايدي المطور الاساسي الجديد*')
database:set(bot_id..'Ed:DevBots',true) 
end
if text =='تغيير المطور الاساسي 𖢄' and not SudoBot(msg) then
send(msg.chat_id_, msg.id_,'*߷لا يمكنك تغيير المطور الاساسي*')
end
if text == 'تحديث السورس 𖢄' and DevGOLDW(msg) then 
os.execute('rm -rf GOLD.lua')
os.execute('wget https://raw.githubusercontent.com/jokerrr7/Jokeralpjack/main/GOLD.lua')
send(msg.chat_id_, msg.id_,' *߷تم تحديث السورس* \n*߷لديك اخر اصدار لسورس بلاك*\n*߷الاصدار »{ 5.v}*')
dofile('GOLD.lua')  
end
if text == 'الاصدار 𖢄' and DevGOLDW(msg) then 
database:del(bot_id..'Srt:Bot') 
send(msg.chat_id_, msg.id_,' *߷اصدار سورس بلاك* \n*߷الاصدار »{ 4.v}*')
end
if text == 'قناه تحديثاhت البوت 𖢄' and DevGOLDW(msg) then 
database:del(bot_id..'Srt:Bot') 
send(msg.chat_id_, msg.id_,' ߷[تحديثات البوت](t.me/BLACK_TEAM_4) \n߷[قناه السورس](t.me/BLACK_TEAM_4)')
end
if text == "ضع اسم للبوت 𖢄" and DevGOLDW(msg) then  
database:setex(bot_id..'Set:Name:Bot'..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_," *߷ارسل اليه الاسم الان* ")
return false
end
if text == 'الاحصائيات 𖢄' and Sudo(msg) then
local Namebot = (database:get(bot_id..'Name:Bot') or 'بلاك') 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Namebot = "߷احصائيات بوت » "..Namebot..'\n߷عدد المجموعات » {'..Groups..'}\n߷عدد المشتركين » {'..Users..'}'
local msg_id = msg.id_/2097152/0.5  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url = "https://t.me/BLACK_TEAM_4"},
},
}
local function getpro(extra, result, success) 
if result.photos_[0] then 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&caption=' .. URL.escape(Namebot).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
else 
send(msg.chat_id_, msg.id_,Namebot, 1, 'md') 
end 
end 
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = bot_id, offset_ = 0, limit_ = 1 }, getpro, nil) 
end
if text == 'المشتركين 𖢄' and DevGOLDW(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = '\n *߷المشتركين» {`'..Users..'`}*'
send(msg.chat_id_, msg.id_,Text) 
return false
end
if text == 'الجروبات 𖢄' and DevGOLDW(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = '\n *߷الجروبات» {`'..Groups..'`}*'
send(msg.chat_id_, msg.id_,Text) 
return false
end
if text == ("المطورين 𖢄") and DevGOLDW(msg) then
local list = database:smembers(bot_id..'Sudo:User')
t = "\n *߷قائمة المطورين* \n*┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ *\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- ("..v..")\n"
end
end
if #list == 0 then
t = " *߷لا يوجد مطورين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("قائمه الكتم العام 𖢄") and DevGOLDW(msg) then
local list = database:smembers(bot_id..'Gmute:User')
t = "\n *߷قائمة المكتومين عام* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- ("..v..")\n"
end
end
if #list == 0 then
t = " *߷لا يوجد مكتومين عام*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text=="اذاعه خاص 𖢄" and msg.reply_to_message_id_ == 0 and DevGOLDW(msg) then 
database:setex(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *߷ارسل الان اذاعتك؟* \n*߷للخروج ارسل الغاء* ")
return false
end 
if text=="اذاعه 𖢄" and msg.reply_to_message_id_ == 0 and DevGOLDW(msg) then 
database:setex(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *߷ارسل الان اذاعتك؟* \n*߷للخروج ارسل الغاء* ")
return false
end  
if text=="اذاعه بالتثبيت 𖢄" and msg.reply_to_message_id_ == 0 and DevGOLDW(msg) then 
database:setex(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *߷ارسل الان اذاعتك؟* \n*߷للخروج ارسل الغاء* ")
return false
end 
if text=="اذاعه بالتوجيه 𖢄" and msg.reply_to_message_id_ == 0  and DevGOLDW(msg) then 
database:setex(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *߷ارسل لي التوجيه الان*")
return false
end 
if text=="اذاعه بالتوجيه خاص 𖢄" and msg.reply_to_message_id_ == 0  and DevGOLDW(msg) then 
database:setex(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," ߷ارسل لي التوجيه الان")
return false
end 
if text == 'جلب نسخه الاحتياطيه 𖢄' and DevGOLDW(msg) then 
GetFile_Bot(msg)
end
if text == "تنظيف المشتركين 𖢄" and DevGOLDW(msg) then
local pv = database:smembers(bot_id.."User_Bot")
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",  
chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} 
},function(arg,data) 
if data.ID and data.ID == "Ok"  then
else
database:srem(bot_id.."User_Bot",pv[i])
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,'*߷لا يوجد مشتركين وهميين في البوت* \n')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,'*߷عدد المشتركين الان » ( '..#pv..' )*\n*߷تم ازالة » ( '..sendok..' ) من المشتركين*\n*߷الان عدد المشتركين الحقيقي » ( '..ok..' ) مشترك* \n')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "تنظيف الجروبات 𖢄" and DevGOLDW(msg) then 
local group = database:smembers(bot_id..'Chek:Groups') 
local w =0
local q =0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
database:srem(bot_id..'Chek:Groups',group[i])  
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=group[i],user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,'*߷لا يوجد جروبات وهميه في البوت*\n')   
else
local GOLD = (w + q)
local sendok = #group - GOLD
if q == 0 then
GOLD = ''
else
GOLD = '\n*߷تم ازالة »* { '..q..' } جروبات من البوت'
end
if w == 0 then
GOLDk = ''
else
GOLDk = '\n*߷تم ازالة »* {'..w..'} جروب لان البوت عضو'
end
send(msg.chat_id_, msg.id_,'*߷عدد الجروبات الان » { '..#group..' }'..GOLDk..''..GOLD..'*\n*߷الان عدد الجروبات الحقيقي » { '..sendok..' } جروبات*\n')   
end
end
end,nil)
end
return false
end
if text and text:match("^رفع مطور @(.*)$") and DevGOLDW(msg) then
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," ߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")
return false 
end  
database:sadd(bot_id..'Sudo:User', result.id_)
usertext = '*\n ߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n *߷تم ترقيته مطور*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false 
end
if text and text:match("^رفع مطور (%d+)$") and DevGOLDW(msg) then
local userid = text:match("^رفع مطور (%d+)$")
database:sadd(bot_id..'Sudo:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته مطور*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم ترقيته مطور*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false 
end
if text and text:match("^تنزيل مطور @(.*)$") and DevGOLDW(msg) then
local username = text:match("^تنزيل مطور @(.*)$")
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Sudo:User', result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من المطورين*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end  
if text and text:match("^تنزيل مطور (%d+)$") and DevGOLDW(msg) then
local userid = text:match("^تنزيل مطور (%d+)$")
database:srem(bot_id..'Sudo:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من المطورين*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم تنزيله من المطورين*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false 
end

end
if text == "المطور" or text == "مطور" then
local TEXT_SUD = database:get(bot_id..'ToBaK:TEXT_SUDO')
if TEXT_SUDO then 
send(msg.chat_id_, msg.id_,TEXT_SUDO)
else
tdcli_function ({ID = "GetUser",user_id_ = SUDO,},function(arg,result) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = SUDO,offset_ = 0,limit_ = 1},function(arg,getpro) 
if getpro.photos_[0] then
Text = "*߷ Dev Name ↬ * ["..result.first_name_.."](T.me/"..result.username_..")\n*߷ Dev User ↬* [@"..result.username_.."]\n*߷ Dev id ↬* ["..result.id_.."]"
keyboard = {}
keyboard.inline_keyboard = {{{text = ''..result.first_name_..'', url = "https://t.me/"..result.username_..""}}}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(Text)..'&photo='..getpro.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
else
send(msg.chat_id_, msg.id_,Name,1, 'md')
end
end,nil)   
end,nil)   
end
end
--------------------------------------------------------------------------------------------------------------
if text and not Special(msg) then  
local GOLD1_Msg = database:get(bot_id.."GOLD1:Add:Filter:Rp2"..text..msg.chat_id_)   
if GOLD1_Msg then 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷اسم المستخدم »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n ߷'..GOLD1_Msg)
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end,nil)
end
end
if database:get(bot_id..'Set:Name:Bot'..msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء 𖢄' then   
send(msg.chat_id_, msg.id_," *߷تم الغاء حفظ اسم البوت*")
database:del(bot_id..'Set:Name:Bot'..msg.sender_user_id_) 
return false  
end 
database:del(bot_id..'Set:Name:Bot'..msg.sender_user_id_) 
database:set(bot_id..'Name:Bot',text) 
send(msg.chat_id_, msg.id_, " *߷تم حفظ الاسم*")
return false
end 
if database:get(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء 𖢄' then   
send(msg.chat_id_, msg.id_," *߷تم الغاء الاذاعه للخاص*")
database:del(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'User_Bot') 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,'['..msg.content_.text_..']')  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_," *߷تمت الاذاعه الى >>{"..#list.."} مشترك في البوت* ")
database:del(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end

if database:get(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء 𖢄' then   
send(msg.chat_id_, msg.id_," *߷تم الغاء الاذاعه*")
database:del(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'Chek:Groups') 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,'['..msg.content_.text_..']')  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_," *߷تمت الاذاعه الى >>{"..#list.."} جروب في البوت* ")
database:del(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end

if database:get(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء 𖢄' then   
send(msg.chat_id_, msg.id_," *߷تم الغاء الاذاعه*")
database:del(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id..'Chek:Groups')   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_," *߷تمت الاذاعه الى >>{"..#list.."} جروبات في البوت* ")
database:del(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
end
if database:get(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء 𖢄' then   
send(msg.chat_id_, msg.id_," *߷تم الغاء الاذاعه*")
database:del(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id..'User_Bot')   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_," *߷تمت الاذاعه الى >>{"..#list.."} مشترك في البوت* ")
database:del(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
end
if database:get(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_, " *߷تم الغاء الامر* ")
database:del(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
database:del(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local username = string.match(text, "@[%a%d_]+") 
tdcli_function ({
ID = "SearchPublicChat",
username_ = username  
},function(arg,data) 
if data and data.message_ and data.message_ == "USERNAME_NOT_OCCUPIED" then 
send(msg.chat_id_, msg.id_, ' *߷المعرف لا يوجد فيه قناة*')
return false  end
if data and data.type_ and data.type_.ID and data.type_.ID == 'PrivateChatInfo' then
send(msg.chat_id_, msg.id_, ' *߷عذا لا يمكنك وضع معرف حسابات في الاشتراك* ')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == true then
send(msg.chat_id_, msg.id_,' *߷عذا لا يمكنك وضع معرف جروب بالاشتراك* ')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == false then
if data and data.type_ and data.type_.channel_ and data.type_.channel_.ID and data.type_.channel_.status_.ID == 'ChatMemberStatusEditor' then
send(msg.chat_id_, msg.id_,' *߷البوت ادمن في القناة* \n*߷تم تفعيل الاشتراك الاجباري في* \n*߷ايدي القناة ('..data.id_..')*\n*߷معرف القناة* ([@'..data.type_.channel_.username_..'])')
database:set(bot_id..'add:ch:id',data.id_)
database:set(bot_id..'add:ch:username','@'..data.type_.channel_.username_)
else
send(msg.chat_id_, msg.id_,' *߷عذرآ البوت ليس ادمن بالقناه* ')
end
return false  
end
end,nil)
end
if database:get(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_, " *߷تم الغاء الامر* ")
database:del(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
database:del(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local texxt = string.match(text, "(.*)") 
database:set(bot_id..'text:ch:user',texxt)
send(msg.chat_id_, msg.id_,' *߷تم تغيير رسالة الاشتراك* ')
end
local status_welcome = database:get(bot_id..'Chek:Welcome'..msg.chat_id_)
if status_welcome and not database:get(bot_id..'lock:tagservr'..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
tdcli_function({ID = "GetUser",user_id_=msg.sender_user_id_},function(extra,result) 
local GetWelcomeGroup = database:get(bot_id..'Get:Welcome:Group'..msg.chat_id_)  
if GetWelcomeGroup then 
t = GetWelcomeGroup
else  
t = '\n \n•  name \n• user' 
end 
if result.username_ then
t = t:gsub('name',result.first_name_) 
t = t:gsub('user','@'..result.username_) 
else
t = t:gsub('name',result.first_name_) 
t = t:gsub('user','لا يوجد') 
end
send(msg.chat_id_, msg.id_,'['..t..']')
end,nil) 
end 
end 
if database:get(bot_id.."CAPTCHA"..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
captcha = math.random(4567,8907);
cap = math.random(10,50);
capt = math.random(60,90);
capc = math.random(100,500);
local Text ='• قم بختيار الرقم الصحيح الموجود في الصوره\n• ليتم الغاء تقييدك الان'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '9'..capt..'5', callback_data=capt..msg.sender_user_id_},{text =capc..'2', callback_data=capc..msg.sender_user_id_}},
{{text = '4'..cap..'8', callback_data=cap},{text = captcha, callback_data='okCaptcha'..msg.sender_user_id_}},
{{text = '1'..capt..'2', callback_data=capt},{text = '7'..capc, callback_data=capc}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://vvvzvv.ml/amir00/captcha.php?c='..captcha..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end 
end 
if msg.content_.ID == "MessageChatAddMembers" then 
if msg.content_.members_[0].id_ == tonumber(bot_id) then 
print("it is Bot")
N = (database:get(bot_id.."Name:Bot") or "بلاك")
tdcli_function ({ID = "GetUser",user_id_ = bot_id,},function(arg,data) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = bot_id,offset_ = 0,limit_ = 1},function(extra,result,success) 
if result.photos_[0] then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '𝗦𝗼𝘂𝗿𝗰𝗲 𝗚𝗼𝗹𝗱', url = "https://t.me/BLACK_TEAM_4"},
},
}
local msg_id = msg.id_/2097152/0.5
local Texti = "߷ مرحبا انا بوت "..N.." \n߷اختصاصي حمايه الجروبات\n߷ للتفعيل ارفعني مشرف وارسل تفعيل في المجموعه ."
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(Texti)..'&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id..'&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end,nil)
end,nil)
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.photo_ then  
if database:get(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_) then 
if msg.content_.photo_.sizes_[3] then  
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ 
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ 
end 
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data)   
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,' *߷عذرآ البوت ليس ادمن بالقناه* ')
database:del(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_) 
return false  end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,' *߷عذرآ البوت لايملك صلاحيات*')
database:del(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_) 
else
send(msg.chat_id_, msg.id_,' *߷تم تغيير صورة الجروب*')
end
end, nil) 
database:del(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_) 
end   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_," *߷تم الغاء وضع الوصف*")
database:del(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
return false  
end 
database:del(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
https.request('https://api.telegram.org/bot'..token..'/setChatDescription?chat_id='..msg.chat_id_..'&description='..text) 
send(msg.chat_id_, msg.id_,' *߷تم تغيير وصف الجروب*')
return false  
end 
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_," *߷تم الغاء حفظ الترحيب*")
database:del(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
database:set(bot_id..'Get:Welcome:Group'..msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,' *߷تم حفظ ترحيب الجروب*')
return false   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == 'الغاء' then
send(msg.chat_id_,msg.id_," *߷تم الغاء حفظ الرابط*")
database:del(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if text and text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)") then 
local Link = text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)")   
database:set(bot_id.."Private:Group:Link"..msg.chat_id_,Link)
send(msg.chat_id_,msg.id_," *߷تم حفظ الرابط بنجاح*")
database:del(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end 
--------------------------------------------------------------------------------------------------------------
if GOLD_Msg and not Special(msg) then  
local GOLD_Msg = database:get(bot_id.."Add:Filter:Rp2"..text..msg.chat_id_)   
if GOLD_Msg then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," *߷العضو :* {["..data.first_name_.."](T.ME/"..data.username_..")}\n߷["..GOLD_Msg.."] \n")
else
send(msg.chat_id_,0," *߷العضو :* {["..data.first_name_.."](t.me/BLACK_TEAM_4)}\n߷["..GOLD_Msg.."] \n")
end
end,nil)   
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if not Special(msg) and msg.content_.ID ~= "MessageChatAddMembers" and database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") then 
floods = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") or 'nil'
NUM_MSG_MAX = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 5
TIME_CHECK = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") or 5
local post_count = tonumber(database:get(bot_id..'floodc:'..msg.sender_user_id_..':'..msg.chat_id_) or 0)
if post_count > tonumber(database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 5) then 
local ch = msg.chat_id_
local type = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") 
trigger_anti_spam(msg,type)  
end
database:setex(bot_id..'floodc:'..msg.sender_user_id_..':'..msg.chat_id_, tonumber(database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) 
local edit_id = data.text_ or 'nil'  
NUM_MSG_MAX = 5
if database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") then
NUM_MSG_MAX = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") 
end
if database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") then
TIME_CHECK = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") 
end 
end 
--------------------------------------------------------------------------------------------------------------
if text and database:get(bot_id..'lock:Fshar'..msg.chat_id_) and not Special(msg) then 
list = {"كس","كسمك","كسختك","عير","كسخالتك","خرا بالله","عير بالله","كسخواتكم","كحاب","مناويج","مناويج","كحبه","ابن الكحبه","فرخ","فروخ","طيزك","طيزختك"}
for k,v in pairs(list) do
print(string.find(text,v))
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if text and database:get(bot_id..'lock:Fars'..msg.chat_id_) and not Special(msg) then 
list = {"ڄ","گ","که","پی","خسته","برم","راحتی","بیام","بپوشم","گرمه","چه","چ","ڬ","ٺ","چ","ڇ","ڿ","ڀ","ڎ","ݫ","ژ","ڟ","ݜ","ڸ","پ","۴","زدن","دخترا","دیوث","مک","زدن","خالی بند","عزیزم خوبی","سلامت باشی","میخوام","خوببی","ميدم","کی اومدی","خوابیدین"}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if text and database:get(bot_id..'lock:Engilsh'..msg.chat_id_) and not Special(msg) then 
list = {'a','u','y','l','t','b','A','Q','U','J','K','L','B','D','L','V','Z','k','n','c','r','q','o','z','I','j','m','M','w','d','h','e'}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id..'lock:text'..msg.chat_id_) and not Special(msg) then   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false 
end 
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 
database:incr(bot_id..'Add:Contact'..msg.chat_id_..':'..msg.sender_user_id_) 
end
if msg.content_.ID == "MessageChatAddMembers" and not Special(msg) then   
if database:get(bot_id.."lock:AddMempar"..msg.chat_id_) == 'kick' then
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
chat_kick(msg.chat_id_,mem_id[i].id_)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" and not Special(msg) then 
if database:get(bot_id.."lock:Join"..msg.chat_id_) == 'kick' then
chat_kick(msg.chat_id_,msg.sender_user_id_)
return false  
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("@[%a%d_]+") or msg.content_.caption_:match("@(.+)") then  
if database:get(bot_id.."lock:user:name"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("@[%a%d_]+") or text and text:match("@(.+)") then
if database:get(bot_id.."lock:user:name"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("#[%a%d_]+") or msg.content_.caption_:match("#(.+)") then 
if database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("#[%a%d_]+") or text and text:match("#(.+)") then
if database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("/[%a%d_]+") or msg.content_.caption_:match("/(.+)") then  
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("/[%a%d_]+") or text and text:match("/(.+)") then
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if not Special(msg) then 
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then 
if database:get(bot_id.."lock:Link"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not Special(msg) then
if database:get(bot_id.."lock:Link"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ked" and not Special(msg) then 
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessagePhoto' and not Special(msg) then 
if database:get(bot_id.."lock:Photo"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageVideo' and not Special(msg) then 
if database:get(bot_id.."lock:Video"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageAnimation' and not Special(msg) then 
if database:get(bot_id.."lock:Animation"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.game_ and not Special(msg) then 
if database:get(bot_id.."lock:geam"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageAudio' and not Special(msg) then 
if database:get(bot_id.."lock:Audio"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Audio"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Audio"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Audio"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageVoice' and not Special(msg) then 
if database:get(bot_id.."lock:vico"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.reply_markup_ and msg.reply_markup_.ID == 'ReplyMarkupInlineKeyboard' and not Special(msg) then 
if database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageSticker' and not Special(msg) then 
if database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
if tonumber(msg.via_bot_user_id_) ~= 0 and not Special(msg) then
if database:get(bot_id.."lock:inline"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:inline"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:inline"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:inline"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.forward_info_ and not Special(msg) then 
if database:get(bot_id.."lock:forward"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageDocument' and not Special(msg) then 
if database:get(bot_id.."lock:Document"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageUnsupported" and not Special(msg) then  
if database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.entities_ then 
if msg.content_.entities_[0] then 
if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then  
if not Special(msg) then
if database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end  
end 
end
end 
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageContact' and not Special(msg) then  
if database:get(bot_id.."lock:Contact"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.text_ and not Special(msg) then  
local _nl, ctrl_ = string.gsub(text, '%c', '')  
local _nl, real_ = string.gsub(text, '%d', '')   
sens = 400  
if database:get(bot_id.."lock:Spam"..msg.chat_id_) == "del" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "ked" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "kick" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "ktm" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if BasicConstructor(msg) then 
if (msg.content_.ID == "MessagePhoto" or msg.content_.ID == "MessageSticker" or msg.content_.ID == "MessageVideo" or msg.content_.ID == "MessageAnimation" or msg.content_.ID == "MessageUnsupported") and database:get(bot_id.."LoMsg"..msg.chat_id_) then
database:sadd(bot_id..":IdMsg:"..msg.chat_id_,msg.id_)
GetTi = database:get(bot_id..':TiMsg:'..msg.chat_id_)
if GetTi then 
GetTi = tonumber(GetTi)
GetTi = 60*60*GetTi
end
database:setex(bot_id..":STiMsg:"..msg.chat_id_..msg.id_,GetTi or 21600,true)  
end
local DoTi = database:smembers(bot_id..":IdMsg:"..msg.chat_id_)
for k,v in pairs(DoTi) do
if not database:get(bot_id..":STiMsg:"..msg.chat_id_..v) then
DeleteMessage(msg.chat_id_, {[0] = v}) 
database:srem(bot_id..":IdMsg:"..msg.chat_id_,v)
end
end
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if msg.content_.ID == 'MessageSticker' and not Manager(msg) then 
local filter = database:smembers(bot_id.."filtersteckr"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.sticker_.sticker_.persistent_id_ then
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0, " *߷عذرا ↫* {[@"..data.username_.."]}\n*߷عذرا تم منع الملصق* \n" ) 
else
send(msg.chat_id_,0, " *߷عذرا ↫* {["..data.first_name_.."](t.me/BLACK_TEAM_4)}\n*߷عذرا تم منع الملصق* \n" ) 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false   
end
end
end
if msg.content_.ID == 'MessagePhoto' and not Manager(msg) then 
local filter = database:smembers(bot_id.."filterphoto"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.photo_.sizes_[1].photo_.persistent_id_ then
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," ߷عذرا ↫ {[@"..data.username_.."]}\n ߷عذرا تم منع الصوره \n" ) 
else
send(msg.chat_id_,0," ߷عذرا ↫ {["..data.first_name_.."](t.me/BLACK_TEAM_4)}\n ߷عذرا تم منع الصوره \n") 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false   
end
end
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if msg.content_.ID == 'MessageAnimation' and not Manager(msg) then 
local filter = database:smembers(bot_id.."filteranimation"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.animation_.animation_.persistent_id_ then
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," *߷عذرا ↫* {[@"..data.username_.."]}\n*߷عذرا تم منع المتحركه* \n") 
else
send(msg.chat_id_,0," *߷عذرا ↫* {["..data.first_name_.."](t.me/BLACK_TEAM_4)}\n*߷عذرا تم منع المتحركه* \n" ) 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false   
end
end
end

if text == 'تفعيل' and Sudo(msg) and GetChannelMember(msg) then
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' ߷عذرا يرجى ترقيه البوت مشرف !')
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = getChatId(msg.chat_id_).ID }, function(arg,data)  
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'Num:Add:Bot') or 0) and not DevGOLDW(msg) then
send(msg.chat_id_, msg.id_,' *߷عدد اعضاء الجروب قليله يرجى جمع >> {'..(database:get(bot_id..'Num:Add:Bot') or 0)..'} عضو*')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,' *߷بالتأكيد تم تفعيل الجروب*')
else
sendText(msg.chat_id_,'\n *߷بواسطه »* ['..string.sub(result.first_name_,0, 70)..'](tg://user?id='..result.id_..')\n*߷تم تفعيل الجروب *{'..chat.title_..'}',msg.id_/2097152/0.5,'md')
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
database:sadd(bot_id.."CoSu"..msg.chat_id_,admins[i].user_id_)
end 
end  
end,nil)
database:sadd(bot_id..'Chek:Groups',msg.chat_id_)  
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
local IdChat = msg.chat_id_
local NumMember = data.member_count_
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = ' *߷تم تفعيل جروب جديده*\n'..
'\n *߷بواسطة* {'..Name..'}'..
'\n *߷ايدي الجروب* {'..IdChat..'}'..
'\n *߷اسم الجروب* {['..NameChat..']}'..
'\n *߷عدد اعضاء الجروب* *{'..NumMember..'}*'..
'\n *߷الرابط* {['..LinkGp..']}'
if not DevGOLDW(msg) then
sendText(SUDO,Text,0,'md')
end
end
end,nil) 
end,nil) 
end,nil)
end
if text == 'تعطيل' and Sudo(msg) and GetChannelMember(msg) then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if not database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,' *߷بالتأكيد تم تعطيل الجروب*')
else
sendText(msg.chat_id_,'\n *߷بواسطه »* ['..string.sub(result.first_name_,0, 70)..'](tg://user?id='..result.id_..')\n*߷تم تعطيل الجروب *{'..chat.title_..'}',msg.id_/2097152/0.5,'md')
database:srem(bot_id..'Chek:Groups',msg.chat_id_)  
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = '\nتم تعطيل الجروب  ߷'..
'\n ߷بواسطة {'..Name..'}'..
'\n ߷ايدي الجروب {'..IdChat..'}'..
'\n ߷اسم الجروب {['..NameChat..']}'..
'\n ߷الرابط {['..LinkGp..']}'
if not DevGOLDW(msg) then
sendText(SUDO,Text,0,'md')
end
end
end,nil) 
end,nil) 
end
if text == 'تفعيل' and not Sudo(msg) and not database:get(bot_id..'Free:Bots') and GetChannelMember(msg) then
tdcli_function ({ ID = "GetChannelFull", channel_id_ = getChatId(msg.chat_id_).ID }, function(arg,data)  
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'Num:Add:Bot') or 0) and not DevGOLDW(msg) then
send(msg.chat_id_, msg.id_,' *߷عدد اعضاء الجروب قليله يرجى جمع >>* {'..(database:get(bot_id..'Num:Add:Bot') or 0)..'} عضو')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusEditor" or da and da.status_.ID == "ChatMemberStatusCreator" then
if da and da.user_id_ == msg.sender_user_id_ then
if da.status_.ID == "ChatMemberStatusCreator" then
var = 'المالك'
elseif da.status_.ID == "ChatMemberStatusEditor" then
var = 'مشرف'
end
if database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,' *߷تم تفعيل الجروب*')
else
sendText(msg.chat_id_,'\n *߷بواسطه »* ['..string.sub(result.first_name_,0, 70)..'](tg://user?id='..result.id_..')\n*߷تم تفعيل الجروب *{'..chat.title_..'}',msg.id_/2097152/0.5,'md')
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
database:sadd(bot_id.."CoSu"..msg.chat_id_,admins[i].user_id_)
end 
end  
end,nil)
database:sadd(bot_id..'Chek:Groups',msg.chat_id_)  
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NumMember = data.member_count_
local NameChat = chat.title_
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = ' *߷تم تفعيل جروب جديده*\n'..
'\n *߷بواسطة* {'..Name..'}'..
'\n *߷موقعه في الجروب *{'..AddPy..'}' ..
'\n *߷ايدي الجروب* {'..IdChat..'}'..
'\n *߷عدد اعضاء الجروب* *{'..NumMember..'}*'..
'\n *߷اسم الجروب* {['..NameChat..']}'..
'\n *߷الرابط* {['..LinkGp..']}'
if not DevGOLDW(msg) then
sendText(SUDO,Text,0,'md')
end
end
end
end
end,nil)   
end,nil) 
end,nil) 
end,nil)
end
if text and text:match("^ضع عدد الاعضاء (%d+)$") and DevGOLDW(msg) then
local Num = text:match("ضع عدد الاعضاء (%d+)$") 
database:set(bot_id..'Num:Add:Bot',Num) 
send(msg.chat_id_, msg.id_,' *߷تم تعيين عدد الاعضاء سيتم تفعيل الجروبات التي اعضائها اكثر من  >> {'..Num..'} عضو*')
end
if text == 'تحديث السورس' and DevGOLDW(msg) then 
os.execute('rm -rf GOLD.lua')
os.execute('wget https://raw.githubusercontent.com/jokerrr7/Jokeralpjack/main/GOLD.lua')
send(msg.chat_id_, msg.id_,' *߷تم تحديث السورس* \n*߷لديك اخر اصدار لسورس بلاك*\n*߷الاصدار »{ 5.v}*')
dofile('GOLD.lua')  
end
if text and text:match("^تغير الاشتراك$") and DevGOLDW(msg) then  
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, ' *߷حسنآ ارسل لي معرف القناة*')
return false  
end
if text and text:match("^تغير رساله الاشتراك$") and DevGOLDW(msg) then  
database:setex(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, ' *߷حسنآ ارسل لي النص الذي تريده*')
return false  
end
if text == "حذف رساله الاشتراك 𖢄" and DevGOLDW(msg) then  
database:del(bot_id..'text:ch:user')
send(msg.chat_id_, msg.id_, " *߷تم مسح رساله الاشتراك* ")
return false  
end
if text and text:match("^وضع قناة الاشتراك 𖢄$") and DevGOLDW(msg) then  
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, ' *߷حسنآ ارسل لي معرف القناة*')
return false  
end
if text == "تفعيل الاشتراك الاجباري 𖢄" and DevGOLDW(msg) then  
if database:get(bot_id..'add:ch:id') then
local addchusername = database:get(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_," *߷الاشتراك الاجباري مفعل* \n*߷على القناة »* ["..addchusername.."]")
else
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_," *߷اهلا عزيزي المطور* \n*߷ارسل الان معرف قناتك*")
end
return false  
end
if text == "تعطيل الاشتراك الاجباري 𖢄" and DevGOLDW(msg) then  
database:del(bot_id..'add:ch:id')
database:del(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_, " *߷تم تعطيل الاشتراك الاجباري* ")
return false  
end
if text == "الاشتراك الاجباري 𖢄" and DevGOLDW(msg) then  
if database:get(bot_id..'add:ch:username') then
local addchusername = database:get(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_, " *߷تم تفعيل الاشتراك الاجباري* \n*߷على القناة »* ["..addchusername.."]")
else
send(msg.chat_id_, msg.id_, " *߷لا يوجد قناة في الاشتراك الاجباري* ")
end
return false  
end
if text == "تفعيل الاضافات" and SudoBot(msg) then
send(msg.chat_id_, msg.id_, '*߷ تم تفعيل الاضافات*')
database:set(bot_id.."AL:Sre:stats","✔")
end
if text == "تعطيل الاضافات" and SudoBot(msg) then
send(msg.chat_id_, msg.id_, '*߷ تم تعطيل الاضافات*')
database:set(bot_id.."AL:Sre:stats","❌")
end
if text == "الاضافات" and Constructor(msg) then
local AMIRDEV = database:get(bot_id.."AL:Sre:stats") or "لم يتم التحديد"
send(msg.chat_id_, msg.id_,"*حاله الاضافات هي : {"..AMIRDEV.."}*\n*اذا كانت {✔} الاضافات مفعله*\n*اذا كانت {❌} الاضافات معطله*")
end
function bnnaGet(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end

if database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
if text and text:match("^كتم اسم (.*)$") and Manager(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
local BlNe = text:match("^كتم اسم (.*)$")
send(msg.chat_id_, msg.id_, '*߷تم كتم الاسم* '..BlNe)
database:sadd(bot_id.."GOLD:blocname"..msg.chat_id_, BlNe)
end

if text and text:match("^الغاء كتم اسم (.*)$") and Manager(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
local delBn = text:match("^الغاء كتم اسم (.*)$")
send(msg.chat_id_, msg.id_, '*߷تم الغاء كتم الاسم* '..delBn)
database:srem(bot_id.."GOLD:blocname"..msg.chat_id_, delBn)
end

if text == "مسح الاسماء المكتومه" and Constructor(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
database:del(bot_id.."GOLD:blocname"..msg.chat_id_)
texts = "*߷تم مسح الاسماء المكتومه* "
send(msg.chat_id_, msg.id_, texts)
end
if text == "الاسماء المكتومه" and Constructor(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
local All_name = database:smembers(bot_id.."GOLD:blocname"..msg.chat_id_)
t = "\n*߷قائمة الاسماء المكتومه* \n*•━━━━━━ ??𝗘 ━━━━━━━•*\n"
for k,v in pairs(All_name) do
t = t..""..k.."- (["..v.."])\n"
end
if #All_name == 0 then
t = "*߷لا يوجد اسماء مكتومه*"
end
send(msg.chat_id_, msg.id_, t)
end
end
if text == "تفعيل كتم الاسم" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*߷تم التفعيل الاسماء المكتومه*')
database:set(bot_id.."block:name:stats"..msg.chat_id_,"open")
end
if text == "تعطيل كتم الاسم" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*߷تم تعطيل الاسماء المكتومه*')
database:set(bot_id.."block:name:stats"..msg.chat_id_,"close")
end
if not Manager(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
function VVVZVV_name(t1,t2)
if t2.id_ then 
name_GOLD = ((t2.first_name_ or "") .. (t2.last_name_ or ""))
if name_GOLD then 
names_GOLD = database:smembers(bot_id.."GOLD:blocname"..msg.chat_id_) or ""
if names_GOLD and names_GOLD[1] then 
for i=1,#names_GOLD do 
if name_GOLD:match("(.*)("..names_GOLD[i]..")(.*)") then 
DeleteMessage_(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
end
end
bnnaGet(msg.sender_user_id_, VVVZVV_name)
end
if database:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
if text and text:match("^وضع توحيد (.*)$") and Manager(msg) and database:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
local teh = text:match("^وضع توحيد (.*)$")
send(msg.chat_id_, msg.id_,'*߷تم تعيين '..teh..' كتوحيد للمجموعه*')
database:set(bot_id.."GOLD:teh"..msg.chat_id_,teh)
end
if text and text:match("^تعين عدد الكتم (.*)$") and Manager(msg) and database:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
local nump = text:match("^تعين عدد الكتم (.*)$")
send(msg.chat_id_, msg.id_,'*߷تم تعين  '..nump..' عدد الكتم*')
database:set(bot_id.."GOLD:nump"..msg.chat_id_,nump)
end
if text == "التوحيد" then
local s1 = database:get(bot_id.."GOLD:teh"..msg.chat_id_) or "لا يوجد توحيد"
local s2 = database:get(bot_id.."GOLD:nump"..msg.chat_id_) or 5
send(msg.chat_id_, msg.id_,'*߷التوحيد '..s1..'*\n*߷عدد الكتم  :* '..s2)
end
end
if text == "تفعيل التوحيد" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*߷تم تفعيل التوحيد*')
database:set(bot_id.."kt:twh:stats"..msg.chat_id_,"open")
end
if text == "تعطيل التوحيد" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*߷تم تعطيل التوحيد*')
database:set(bot_id.."kt:twh:stats"..msg.chat_id_,"close")
end
if not Constructor(msg) then
if database:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open"  and database:get(bot_id.."GOLD:teh"..msg.chat_id_) then 
id = msg.sender_user_id_
function amir_GOLDa_new(GOLD1,GOLD2)
if GOLD2 and GOLD2.first_name_ then 
if GOLD2.first_name_:match("(.*)"..database:get(bot_id.."GOLD:teh"..msg.chat_id_).."(.*)") then 
database:srem(bot_id.."GOLD:Muted:User"..msg.chat_id_, msg.sender_user_id_)
else
local GOLD_nnn = database:get(bot_id.."GOLD:nump"..msg.chat_id_) or 5
local GOLD_nnn2 = database:get(bot_id.."GOLD:nump22"..msg.chat_id_..msg.sender_user_id_) or 0
if (tonumber(GOLD_nnn2) == tonumber(GOLD_nnn) or tonumber(GOLD_nnn2) > tonumber(GOLD_nnn)) then 
database:sadd(bot_id..'Muted:User'..msg.chat_id_, msg.sender_user_id_)
else 
database:incrby(bot_id.."GOLD:nump22"..msg.chat_id_..msg.sender_user_id_,1)
send(msg.chat_id_, msg.id_, "߷عزيزي >>["..GOLD2.username_.."](https://t.me/"..(GOLD2.username_ or "BLACK_TEAM_4")..")\n߷عليك وضع التوحيد ⪼ {"..database:get(bot_id.."GOLD:teh"..msg.chat_id_).."} بجانب اسمك\n߷عدد المحاولات المتبقيه {"..(tonumber(GOLD_nnn) - tonumber(GOLD_nnn2)).."}")
end
end
end
end
bnnaGet(id, amir_GOLDa_new)
end
end
if text == "تفعيل تنبيه الاسماء" and Manager(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*߷تم تفعيل تنبيه الاسماء*')
database:set(bot_id.."Ttn:BBE:stats"..msg.chat_id_,"open")
end
if text == "تعطيل تنبيه الاسماء" and Manager(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*߷تم تعطيل تنبيه الاسماء*')
database:set(bot_id.."Ttn:BBE:stats"..msg.chat_id_,"close")
end
if text and database:get(bot_id.."Ttn:BBE:stats"..msg.chat_id_) == "open" then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then
local GOLDChengName = database:get(bot_id.."GOLD:Cheng:Name"..data.id_)
if not data.first_name_ then 
if GOLDChengName then 
send(msg.chat_id_, msg.id_, " خوش معرف جان ["..GOLDChengName..']')
database:del(bot_id.."GOLD:Cheng:Name"..data.id_) 
end
end
if data.first_name_ then 
if GOLDChengName ~= data.first_name_ then 
local Text = {
  "جان خوش اسم يول",
"ليش غيرته اسمك بس لا خانوك/ج",
"هذا الحلو غير اسمه 😉",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."GOLD:Cheng:Name"..data.id_, data.first_name_) 
end
end
end
end,nil)   
end
if text == "تفعيل تنبيه المعرف" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*߷تم تفعيل تنبيه المعرف*')
database:set(bot_id.."Ttn:Userr:stats"..msg.chat_id_,"open")
end
if text == "تعطيل تنبيه المعرف" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*߷تم تعطيل تنبيه المعرف*')
database:set(bot_id.."Ttn:Userr:stats"..msg.chat_id_,"close")
end
if text and database:get(bot_id.."Ttn:Userr:stats"..msg.chat_id_) == "open" then  
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then
local GOLDChengUserName = database:get(bot_id.."GOLD:Cheng:UserName"..data.id_)
if not data.username_ then 
if GOLDChengUserName then 
send(msg.chat_id_, msg.id_, 1, "حذف معرفه خمطو بساع بساع  \n هاذه معرفه  : [@"..GOLDChengUserName..']')
database:del(bot_id.."GOLD:Cheng:UserName"..data.id_) 
end
end
if data.username_ then 
if GOLDChengUserName ~= data.username_ then 
local Text = {
'شكو غيرت معرفك شنو نشروك بقنوات فضايح😂🥺',
"هاها شو غيرت معرفك بس لا هددتك/ج الحب",
"شسالفه شو غيرت معرفك 😐🌝",
"غير معرفه خمطو بساع بساع \n هاذه معرفه : @"..data.username_.."",
'ها عار مو جان معرفك \n شكو غيرته ل @'..data.username_..' ',
'ها يول شو مغير معرفك بيش مشتري يول', 
"منور معرف جديد :  "..data.username_.."",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."GOLD:Cheng:UserName"..data.id_, data.username_) 
end
end
end
end,nil)   
end
if text == "تفعيل الرسائل اليوميه" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*߷تم تفعيل الرسائل اليوميه*')
database:set(bot_id.."msg:match:"..msg.chat_id_,true)
end
if text == "تعطيل الرسائل اليوميه" and Manager(msg) then
send(msg.chat_id_, msg.id_,'*߷تم تعطيل الرسائل اليوميه*')
database:del(bot_id.." msg:match:"..msg.chat_id_)
end
if database:get(bot_id.."msg:match:"..msg.chat_id_) then
if msg.content_.ID then
get_msg = database:get(bot_id.."msg:match:"..msg.sender_user_id_..":"..msg.chat_id_) or 0
gms = get_msg + 1
database:setex(bot_id..'msg:match:'..msg.sender_user_id_..":"..msg.chat_id_,86400,gms)
end
if text == "تفاعلي اليوم" and tonumber(msg.reply_to_message_id_) == 0 then    
get_msg = database:get(bot_id.."msg:match:"..msg.sender_user_id_..":"..msg.chat_id_) or 0
send(msg.chat_id_, msg.id_,"*߷عدد رسائلك الكلي هو :-*\n"..get_msg.." *من الرسائل*")
end  
if text == "تفاعله اليوم" and tonumber(msg.reply_to_message_id_) > 0 then    
if tonumber(msg.reply_to_message_id_) ~= 0 then 
function prom_reply(extra, result, success) 
get_msg = database:get(bot_id.."msg:match:"..result.sender_user_id_..":"..msg.chat_id_) or 0
send(msg.chat_id_, msg.id_,"*߷عدد رسائل اشخص الكلي هو :-*\n"..get_msg.." *من الرسائل*")
end  
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},prom_reply, nil)
end
end
end
if text == "تفعيل تنبيه الصور" and Manager(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*߷تم تفعيل تنبيه الصور*')
database:set(bot_id.."Ttn:Ph:stats"..msg.chat_id_,"open")
end
if text == "تعطيل تنبيه الصور" and Manager(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*߷تم تعطيل تنبيه الصور*')
database:set(bot_id.."Ttn:Ph:stats"..msg.chat_id_,"close")
end
if text and database:get(bot_id.."Ttn:Ph:stats"..msg.chat_id_) == "open" then  
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then 
local GOLDChengPhoto = database:get(bot_id.."GOLD:Cheng:Photo"..data.id_)
if not data.profile_photo_ then 
if GOLDChengPhoto then 
send(msg.chat_id_, msg.id_, "للاسف مفيش صور")
database:del(bot_id.."GOLD:Cheng:Photo"..data.id_) 
end
end
if data.profile_photo_.big_.persistent_id_ then 
if GOLDChengPhoto ~= data.profile_photo_.big_.persistent_id_ then 
local Text = {
  "شكو غيرت صورتك يلصاك",
  "منور طالع حلو ع صوره جديده",
  "ها يول شو غيرت صورتك😍😂",
  "شكو غيرت صورتك شنو قطيت وحده جديده 😹😹🌚",
  "شو غيرت صورتك شنو تعاركت ويه الحب ؟😹🌞",
  "شكو غيرت الصوره شسالفه ؟؟ 🤔🌞",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."GOLD:Cheng:Photo"..data.id_, data.profile_photo_.big_.persistent_id_) 
end
end
end
end,nil)   
end
if text == 'تحديث' or text == 'تحديث الملفات' and Mod(msg) then     
local Text = "*مرحبا بك في قسم تحديث ملفات بوتك*"
keyboard = {} 
keyboard.inline_keyboard = {
{{text="◐ تحديث السورس ◐",callback_data="Japwa3"..msg.sender_user_id_}},
{{text="◐ تحديث الملفات ◐",callback_data="Japwa4"..msg.sender_user_id_}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'السورس' or text == 'سورس' or text == 'ياسورس' or text == '"' then
local Text =[[

W𝙀𝙇𝘾𝙊𝙈𝙀 𝙏𝙊 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝘾𝙆 ߷

]]
keyboard = {} 
keyboard.inline_keyboard = {

{
{text = '𝑑𝑒𝑣𝑒𝑙𝑜𝑝𝑒𝑟 ༗', url = "https://t.me/UUOUOU_7"},{text = '𝑑𝑒𝑣𝑒𝑙𝑜𝑝𝑒𝑟 ༗', url = "https://t.me/V_P_E"},
},
{
{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url = "https://t.me/J_F_A_I"}
},
{
{text = '𝙗𝙡𝙖𝙘𝙠 𝙛𝙞𝙡𝙚𝙨 𖢌', url = "https://t.me/BLACK_TEAM_4"}
},
{
{text = 'DEV', url="http://t.me/"..sudos.UserName}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/BLACK_TEAM_4&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' and ChekAdd(msg.chat_id_) == true then
if text == 'رفع نسخه الاحتياطيه' and DevGOLDW(msg) then  
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
AddFile_Bot(msg,msg.chat_id_,ID_FILE,File_Name)
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'جلب نسخه الاحتياطيه' and DevGOLDW(msg) then  
GetFile_Bot(msg)
end
if text == 'الاوامر المضافه' and Constructor(msg) then
local list = database:smembers(bot_id..'List:Cmd:Group:New'..msg.chat_id_..'')
t = " *߷قائمه الاوامر المضافه*  \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
Cmds = database:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..v)
print(Cmds)
if Cmds then 
t = t..""..k..">> ("..v..") » {"..Cmds.."}\n"
else
t = t..""..k..">> ("..v..") \n"
end
end
if #list == 0 then
t = " *߷لا يوجد اوامر مضافه*"
end
send(msg.chat_id_, msg.id_,'['..t..']')
end
if text == 'حذف الاوامر المضافه' or text == 'مسح الاوامر المضافه' then
if Constructor(msg) then 
local list = database:smembers(bot_id..'List:Cmd:Group:New'..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..v)
database:del(bot_id..'List:Cmd:Group:New'..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,' *߷تم ازالة جميع الاوامر المضافه*')  
end
end
if text == "ترتيب الاوامر" and Constructor(msg) then
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":ا","ايدي")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"ا")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":م","رفع مميز")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"م")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":اد","رفع ادمن")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"اد")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":مد","رفع مدير")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"مد")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":من","رفع منشئ")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"من")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":اس","رفع منشئ اساسي")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"اس")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":تعط","تعطيل الايدي بالصوره")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"تعط")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":تفع","تفعيل الايدي بالصوره")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"تفع")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":تك","تنزيل الكل")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"تك")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":رد","اضف رد")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"رد")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":حذ","حذف رد")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"حذ")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":ت","تثبيت")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"ت")
 send(msg.chat_id_, msg.id_,"*߷تم ترتيب الاوامر بالشكل التالي*\n*߷ايدي - ا .*\n*߷مميز - م .\n߷ادمن - اد .*\n*߷مدير - مد . \n߷منشى - من .*\n*߷المنشئ الاساسي - اس .*\n*߷تعطيل الايدي بالصوره - تعط .*\n*߷تفعيل الايدي بالصوره - تفع .*\n*߷تنزيل الكل - تك .*\n*߷اضف رد - رد .*\n*߷حذف رد - حذ .*\n*߷تثبيت - ت .*")
 end
if text == 'اضف امر' and Constructor(msg) and GetChannelMember(msg) then  
database:set(bot_id.."Set:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_,'true') 
send(msg.chat_id_, msg.id_,' *߷ارسل الامر القديم*')  
return false
end
if text == 'حذف امر' or text == 'مسح امر' and GetChannelMember(msg)  and  Constructor(msg) then
database:set(bot_id.."Del:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_,'true') 
send(msg.chat_id_, msg.id_,' *߷ارسل الامر الذي قمت بوضعه بدلا عن القديم*')  
return false
end
if text and database:get(bot_id.."Set:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_) == 'true' then
database:set(bot_id.."Set:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,' *߷ارسل الامر الجديد*')  
database:del(bot_id.."Set:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_)
database:set(bot_id.."Set:Cmd:Group1"..msg.chat_id_..':'..msg.sender_user_id_,'true1') 
return false
end
if text and database:get(bot_id.."Set:Cmd:Group1"..msg.chat_id_..':'..msg.sender_user_id_) == 'true1' then
local NewCmd = database:get(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..text,NewCmd)
database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,' *߷تم حفظ الامر*')  
database:del(bot_id.."Set:Cmd:Group1"..msg.chat_id_..':'..msg.sender_user_id_)
return false
end
if text == 'السيرفر' and SudoBot(msg) then 
send(msg.chat_id_, msg.id_, io.popen([[
linux_version=`lsb_release -ds`
memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`
echo '⇗ نظام التشغيل ⇖•\n*»» '"$linux_version"'*' 
echo '*———————————~*\n✺✔{ الذاكره العشوائيه } ⇎\n*»» '"$memUsedPrc"'*'
echo '*———————————~*\n✺✔{ وحـده الـتـخـزيـن } ⇎\n*»» '"$HardDisk"'*'
echo '*———————————~*\n✺✔{ الـمــعــالــج } ⇎\n*»» '"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'*'
echo '*———————————~*\n✺✔{ الــدخــول } ⇎\n*»» '`whoami`'*'
echo '*———————————~*\n✺✔{ مـده تـشغيـل الـسـيـرفـر }⇎\n*»» '"$uptime"'*'
]]):read('*all'))  
end

--------------------------------------------------------------------------------------------------------------
if text == "تفعيل تنظيف التلقائي" and BasicConstructor(msg)  then
database:set(bot_id.."LoMsg"..msg.chat_id_,true)
send(msg.chat_id_, msg.id_, '*߷بواسطه* » ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تم تفعيل التنظيف التلقائي* ')
return false
end
if text == "تعطيل تنظيف التلقائي" and BasicConstructor(msg) then
database:del(bot_id.."LoMsg"..msg.chat_id_)
send(msg.chat_id_, msg.id_, '*߷بواسطه* » ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تم تعطيل التنظيف التلقائي* ')
return false
end
if text == 'قفل الدردشه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id.."lock:text"..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)  
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الدردشه* ')
end,nil)   
elseif text == 'قفل الاضافه' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id.."lock:AddMempar"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل اضافة* ')
end,nil)   
elseif text == 'قفل الدخول' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id.."lock:Join"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل دخول* ')
end,nil)   
elseif text == 'قفل البوتات' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id.."lock:Bot:kick"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل البوتات* ')
end,nil)   
elseif text == 'قفل البوتات بالطرد' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id.."lock:Bot:kick"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل البوتات بالطرد* ')
end,nil)   
elseif text == 'قفل الاشعارات' and msg.reply_to_message_id_ == 0 and Mod(msg) then  
database:set(bot_id..'lock:tagservr'..msg.chat_id_,true)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الاشعارات* ')
end,nil)   
elseif text == 'قفل التثبيت' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."lockpin"..msg.chat_id_, true) 
database:sadd(bot_id..'lock:pin',msg.chat_id_) 
tdcli_function ({ ID = "GetChannelFull",  channel_id_ = getChatId(msg.chat_id_).ID }, function(arg,data)  database:set(bot_id..'Pin:Id:Msg'..msg.chat_id_,data.pinned_message_id_)  end,nil)
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل التثبيت* ')
end,nil)   
elseif text == 'قفل التعديل' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id..'lock:edit'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل تعديل* ')
end,nil)   
elseif text == 'قفل الفشار' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id..'lock:Fshar'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الفشار* ')
end,nil)  
elseif text == 'قفل الفارسيه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id..'lock:Fars'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الفارسيه* ')
end,nil)   
elseif text == 'قفل الانكليزيه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id..'lock:Engilsh'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل النكليزيه* ')
end,nil)
elseif text == 'قفل الانلاين' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id.."lock:inline"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الانلاين* ')
end,nil)
elseif text == 'قفل تعديل الميديا' and msg.reply_to_message_id_ == 0 and BasicConstructor(msg) then 
database:set(bot_id..'lock_edit_med'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل تعديل* ')
end,nil)   
elseif text == 'قفل الكل' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id..'lock:tagservrbot'..msg.chat_id_,true)   
list ={"lock:Bot:kick","lock:user:name","lock:hashtak","lock:Cmd","lock:Link","lock:forward","lock:Keyboard","lock:geam","lock:Photo","lock:Animation","lock:Video","lock:Audio","lock:vico","lock:Sticker","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..lock..msg.chat_id_,'del')
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل جميع الاوامر* ')
end,nil)   
end
if text == 'قفل الاباحي' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Lock:Xn"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الاباحي* ')
end,nil)   
elseif text == 'فتح الاباحي' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Lock:Xn"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح الاباحي* ')
end,nil)   
end
if text == 'فتح الانلاين' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:inline"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح الانلاين* ')
end,nil)
elseif text == 'فتح الاضافه' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:AddMempar"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح اضافة* ')
end,nil)   
elseif text == 'فتح الدردشه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:del(bot_id.."lock:text"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح الدردشه* ')
end,nil)   
elseif text == 'فتح الدخول' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:Join"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح دخول* ')
end,nil)   
elseif text == 'فتح البوتات' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:Bot:kick"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فـتح البوتات* ')
end,nil)   
elseif text == 'فتح البوتات بالطرد' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:Bot:kick"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فـتح البوتات بالطرد* ')
end,nil)   
elseif text == 'فتح الاشعارات' and msg.reply_to_message_id_ == 0 and Mod(msg) then  
database:del(bot_id..'lock:tagservr'..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فـتح الاشعارات* ')
end,nil)   
elseif text == 'فتح التثبيت' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."lockpin"..msg.chat_id_)  
database:srem(bot_id..'lock:pin',msg.chat_id_)
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فـتح التثبيت* ')
end,nil)   
elseif text == 'فتح التعديل' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id..'lock:edit'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فـتح تعديل* ')
end,nil)   
elseif text == 'فتح الفشار' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:del(bot_id..'lock:Fshar'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فـتح الفشار* ')
end,nil)   
elseif text == 'فتح الفارسيه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:del(bot_id..'lock:Fars'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فـتح الفارسيه* ')
end,nil)   
elseif text == 'فتح الانكليزيه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:del(bot_id..'lock:Engilsh'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فـتح النكليزيه* ')
end,nil)
elseif text == 'فتح تعديل الميديا' and msg.reply_to_message_id_ == 0 and BasicConstructor(msg) then 
database:del(bot_id..'lock_edit_med'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فـتح تعديل* ')
end,nil)   
elseif text == 'فتح الكل' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id..'lock:tagservrbot'..msg.chat_id_)   
list ={"lock:Bot:kick","lock:user:name","lock:hashtak","lock:Cmd","lock:Link","lock:forward","lock:Keyboard","lock:geam","lock:Photo","lock:Animation","lock:Video","lock:Audio","lock:vico","lock:Sticker","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..lock..msg.chat_id_)
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فـتح جميع الاوامر* ')
end,nil)   
end
if text == 'قفل الروابط' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Link"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الروابط* ')
end,nil)   
elseif text == 'قفل الروابط بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Link"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الروابط بالتقييد* ')
end,nil)   
elseif text == 'قفل الروابط بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Link"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الروابط بالكتم* ')
end,nil)   
elseif text == 'قفل الروابط بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Link"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الروابط بالطرد* ')
end,nil)   
elseif text == 'فتح الروابط' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Link"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح الروابط* ')
end,nil)   
end
if text == 'قفل المعرفات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:user:name"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل المعرفات* ')
end,nil)   
elseif text == 'قفل المعرفات بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:user:name"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل المعرفات بالتقييد* ')
end,nil)   
elseif text == 'قفل المعرفات بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:user:name"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل المعرفات بالكتم* ')
end,nil)   
elseif text == 'قفل المعرفات بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:user:name"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل المعرفات بالطرد* ')
end,nil)   
elseif text == 'فتح المعرفات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:user:name"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح المعرفات* ')
end,nil)   
end
if text == 'تفعيل نسبه الحب' and Manager(msg) then   
if database:get(bot_id..'Cick:lov'..msg.chat_id_) then
Text = ' *߷تم تفعيل نسبه الحب*'
database:del(bot_id..'Cick:lov'..msg.chat_id_)  
else
Text = ' *߷بالتاكيد تم تفعيل نسبه الحب*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل نسبه الحب' and Manager(msg) then  
if not database:get(bot_id..'Cick:lov'..msg.chat_id_) then
database:set(bot_id..'Cick:lov'..msg.chat_id_,true)  
Text = '\n *߷تم تعطيل نسبه الحب*'
else
Text = '\n *߷بالتاكيد تم تعطيل نسبه الحب*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل نسبه الرجوله' and Manager(msg) then   
if database:get(bot_id..'Cick:rjo'..msg.chat_id_) then
Text = ' *߷تم تفعيل نسبه الرجوله*'
database:del(bot_id..'Cick:rjo'..msg.chat_id_)  
else
Text = ' *߷بالتاكيد تم تفعيل الرجوله*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل نسبه الرجوله' and Manager(msg) then  
if not database:get(bot_id..'Cick:rjo'..msg.chat_id_) then
database:set(bot_id..'Cick:rjo'..msg.chat_id_,true)  
Text = '\n *߷تم تعطيل نسبه الرجوله*'
else
Text = '\n *߷بالتاكيد تم تعطيل نسبه الرجوله*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل نسبه الكره' and Manager(msg) then   
if database:get(bot_id..'Cick:krh'..msg.chat_id_) then
Text = ' *߷تم تفعيل نسبه الكره*'
database:del(bot_id..'Cick:krh'..msg.chat_id_)  
else
Text = ' *߷بالتاكيد تم تفعيل نسبه الكره*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل نسبه الكره' and Manager(msg) then  
if not database:get(bot_id..'Cick:krh'..msg.chat_id_) then
database:set(bot_id..'Cick:krh'..msg.chat_id_,true)  
Text = '\n *߷تم تعطيل نسبه الكره*'
else
Text = '\n *߷بالتاكيد تم تعطيل نسبه الكره*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل نسبه الانوثه' and Manager(msg) then   
if database:get(bot_id..'Cick:ano'..msg.chat_id_) then
Text = ' *߷تم تفعيل نسبه الانوثه*'
database:del(bot_id..'Cick:ano'..msg.chat_id_)  
else
Text = ' *߷بالتاكيد تم تفعيل الانوثه*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل نسبه الانوثه' and Manager(msg) then  
if not database:get(bot_id..'Cick:ano'..msg.chat_id_) then
database:set(bot_id..'Cick:ano'..msg.chat_id_,true)  
Text = '\n *߷تم تعطيل نسبه الانوثه*'
else
Text = '\n *߷بالتاكيد تم تعطيل نسبه الانوثه*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل غنيلي' and SudoBotCoSu(msg) then   
if database:get(bot_id..'sing:for:me'..msg.chat_id_) then
Text = ' *߷تم تفعيل امر غنيلي الان ارسل غنيلي*'
database:del(bot_id..'sing:for:me'..msg.chat_id_)  
else
Text = ' *߷بالتاكيد تم تفعيل امر غنيلي تستطيع ارسال غنيلي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل غنيلي' and SudoBotCoSu(msg) then  
if not database:get(bot_id..'sing:for:me'..msg.chat_id_) then
database:set(bot_id..'sing:for:me'..msg.chat_id_,true)  
Text = '\n *߷تم تعطيل امر غنيلي*'
else
Text = '\n *߷بالتاكيد تم تعطيل امر غنيلي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^انطق (.*)$") then
   local textntk = text:match("^انطق (.*)$")
   UrlAntk = https.request('https://apiabs.ml/Antk.php?abs='..URL.escape(textntk)..'')
   Antk = JSON.decode(UrlAntk)
   if UrlAntk.ok ~= false then
   download_to_file("https://translate"..Antk.result.google..Antk.result.code.."UTF-8"..Antk.result.utf..Antk.result.translate.."&tl=ar-IN",Antk.result.translate..'.mp3')
   local curlm = 'curl "'..'https://api.telegram.org/bot'..token..'/sendDocument'..'" -F "chat_id='.. msg.chat_id_ ..'" -F "document=@'..''..textntk..'.mp3'..'"' io.popen(curlm)
   end
   end
if text == 'قفل التاك' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:hashtak"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل التاك* ')
end,nil)   
elseif text == 'قفل التاك بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:hashtak"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل التاك بالتقييد* ')
end,nil)   
elseif text == 'قفل التاك بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:hashtak"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..string.sub(data.first_name_,0,60)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل التاك بالكتم* ')
end,nil)   
elseif text == 'قفل التاك بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:hashtak"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل التاك بالطرد* ')
end,nil)   
elseif text == 'فتح التاك' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:hashtak"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح التاك* ')
end,nil)   
end
if text == 'قفل الشارحه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Cmd"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الشارحه* ')
end,nil)   
elseif text == 'قفل الشارحه بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Cmd"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الشارحه بالتقييد* ')
end,nil)   
elseif text == 'قفل الشارحه بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Cmd"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الشارحه بالكتم* ')
end,nil)   
elseif text == 'قفل الشارحه بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Cmd"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الشارحه بالطرد* ')
end,nil)   
elseif text == 'فتح الشارحه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Cmd"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح الشارحه* ')
end,nil)   
end
if text == 'قفل الصور'and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Photo"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الصور* ')
end,nil)   
elseif text == 'قفل الصور بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Photo"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الصور بالتقييد* ')
end,nil)   
elseif text == 'قفل الصور بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Photo"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الصور بالكتم* ')
end,nil)   
elseif text == 'قفل الصور بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Photo"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الصور بالطرد* ')
end,nil)   
elseif text == 'فتح الصور' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Photo"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح الصور* ')
end,nil)   
end
if text == 'قفل الفيديو' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Video"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الفيديو* ')
end,nil)   
elseif text == 'قفل الفيديو بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Video"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الفيديو بالتقييد* ')
end,nil)   
elseif text == 'قفل الفيديو بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Video"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الفيديو بالكتم* ')
end,nil)   
elseif text == 'قفل الفيديو بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Video"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الفيديو بالطرد* ')
end,nil)   
elseif text == 'فتح الفيديو' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Video"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح الفيديو* ')
end,nil)   
end
if text == 'قفل المتحركه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Animation"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,'  *߷بواسطه* » ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل المتحركه* ')
end,nil)   
elseif text == 'قفل المتحركه بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Animation"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل المتحركه بالتقييد* ')
end,nil)   
elseif text == 'قفل المتحركه بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Animation"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل المتحركه بالكتم* ')
end,nil)   
elseif text == 'قفل المتحركه بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Animation"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل المتحركه بالطرد* ')
end,nil)   
elseif text == 'فتح المتحركه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Animation"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح المتحركه* ')
end,nil)   
end
if text == 'قفل الالعاب' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:geam"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الالعاب* ')
end,nil)   
elseif text == 'قفل الالعاب بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:geam"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الالعاب بالتقييد* ')
end,nil)   
elseif text == 'قفل الالعاب بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:geam"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الالعاب بالكتم* ')
end,nil)   
elseif text == 'قفل الالعاب بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:geam"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الالعاب بالطرد* ')
end,nil)   
elseif text == 'فتح الالعاب' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:geam"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح الالعاب* ')
end,nil)   
end
if text == 'قفل الاغاني' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Audio"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الاغاني* ')
end,nil)   
elseif text == 'قفل الاغاني بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Audio"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الاغاني بالتقييد* ')
end,nil)   
elseif text == 'قفل الاغاني بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Audio"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الاغاني بالكتم* ')
end,nil)   
elseif text == 'قفل الاغاني بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Audio"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الاغاني بالطرد* ')
end,nil)   
elseif text == 'فتح الاغاني' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Audio"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح الاغاني* ')
end,nil)   
end
if text == 'قفل الصوت' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:vico"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الصوت* ')
end,nil)   
elseif text == 'قفل الصوت بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:vico"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الصوت بالتقييد* ')
end,nil)   
elseif text == 'قفل الصوت بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:vico"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الصوت بالكتم* ')
end,nil)   
elseif text == 'قفل الصوت بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:vico"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الصوت بالطرد* ')
end,nil)   
elseif text == 'فتح الصوت' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:vico"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n *߷تـم فتح الصوت* ')
end,nil)   
end
if text == 'قفل الكيبورد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Keyboard"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الكيبورد* ')
end,nil)   
elseif text == 'قفل الكيبورد بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Keyboard"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الكيبورد بالتقييد* ')
end,nil)   
elseif text == 'قفل الكيبورد بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Keyboard"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الكيبورد بالكتم* ')  
end,nil)   
elseif text == 'قفل الكيبورد بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Keyboard"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الكيبورد بالطرد* ')  
end,nil)   
elseif text == 'فتح الكيبورد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Keyboard"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح الكيبورد* ')  
end,nil)   
end
if text == 'قفل الملصقات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Sticker"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الملصقات* ')  
end,nil)   
elseif text == 'قفل الملصقات بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Sticker"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الملصقات بالتقييد* ')  
end,nil)
elseif text == 'قفل الملصقات بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Sticker"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الملصقات بالكتم* ')  
end,nil)   
elseif text == 'قفل الملصقات بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Sticker"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الملصقات بالطرد* ')  
end,nil)   
elseif text == 'فتح الملصقات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Sticker"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح الملصقات* ')  
end,nil)   
end
if text == 'قفل التوجيه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:forward"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل التوجيه* ')  
end,nil)   
elseif text == 'قفل التوجيه بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:forward"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل التوجيه بالتقييد* ')  
end,nil)
elseif text == 'قفل التوجيه بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:forward"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل التوجيه بالكتم* ')  
end,nil)   
elseif text == 'قفل التوجيه بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:forward"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل التوجيه بالطرد* ')  
end,nil)   
elseif text == 'فتح التوجيه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:forward"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح التوجيه* ')  
end,nil)   
end
if text == 'قفل الملفات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Document"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الملفات* ')  
end,nil)   
elseif text == 'قفل الملفات بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Document"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الملفات بالتقييد* ')  
end,nil)
elseif text == 'قفل الملفات بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Document"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الملفات بالكتم* ')  
end,nil)   
elseif text == 'قفل الملفات بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Document"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الملفات بالطرد* ')  
end,nil)   
elseif text == 'فتح الملفات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Document"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح الملفات* ')  
end,nil)   
end
if text == 'قفل السيلفي' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Unsupported"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل السيلفي* ')  
end,nil)   
elseif text == 'قفل السيلفي بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Unsupported"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل السيلفي بالتقييد* ')  
end,nil)
elseif text == 'قفل السيلفي بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Unsupported"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل السيلفي بالكتم* ')  
end,nil)   
elseif text == 'قفل السيلفي بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Unsupported"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل السيلفي بالطرد* ')  
end,nil)   
elseif text == 'فتح السيلفي' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Unsupported"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح السيلفي* ')  
end,nil)   
end
if text == 'قفل الماركداون' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Markdaun"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الماركداون* ')  
end,nil)   
elseif text == 'قفل الماركداون بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Markdaun"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الماركداون بالتقييد* ')  
end,nil)
elseif text == 'قفل الماركداون بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Markdaun"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الماركداون بالكتم* ')  
end,nil)   
elseif text == 'قفل الماركداون بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Markdaun"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الماركداون بالطرد* ')  
end,nil)   
elseif text == 'فتح الماركداون' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Markdaun"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح الماركداون* ')  
end,nil)   
end
if text == 'قفل الجهات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Contact"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الجهات* ')  
end,nil)   
elseif text == 'قفل الجهات بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Contact"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الجهات بالتقييد* ')  
end,nil)
elseif text == 'قفل الجهات بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Contact"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الجهات بالكتم* ')  
end,nil)   
elseif text == 'قفل الجهات بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Contact"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الجهات بالطرد* ')  
end,nil)   
elseif text == 'فتح الجهات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Contact"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح الجهات* ')  
end,nil)   
end
if text == 'قفل الكلايش' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Spam"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الكلايش* ')  
end,nil)   
elseif text == 'قفل الكلايش بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Spam"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الكلايش بالتقييد* ')  
end,nil)
elseif text == 'قفل الكلايش بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Spam"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الكلايش بالكتم* ')  
end,nil)   
elseif text == 'قفل الكلايش بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Spam"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل الكلايش بالطرد* ')  
end,nil)   
elseif text == 'فتح الكلايش' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Spam"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فتح الكلايش* ')  
end,nil)   
end
if text == 'قفل التكرار بالطرد' and Mod(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood",'kick')  
send(msg.chat_id_, msg.id_,' *߷تم قفل التكرار بالطرد*')
elseif text == 'قفل التكرار' and Mod(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood",'del')  
send(msg.chat_id_, msg.id_,' *߷تم قفل التكرار*')
elseif text == 'قفل التكرار بالتقييد' and Mod(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood",'keed')  
send(msg.chat_id_, msg.id_,' *߷تم قفل التكرار بالتقييد*')
elseif text == 'قفل التكرار بالكتم' and Mod(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood",'mute')  
send(msg.chat_id_, msg.id_,' *߷تم قفل التكرار بالكتم*')
elseif text == 'فتح التكرار' and Mod(msg) then 
database:hdel(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood")  
send(msg.chat_id_, msg.id_,' *߷تم فتح التكرار*')
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تحديث' and DevGOLDW(msg) then
dofile('GOLD.lua')  
send(msg.chat_id_, msg.id_, ' *߷تم تحديث جميع الملفات*') 
end 
if text == ("مسح قائمه العام") and DevGOLDW(msg) then
database:del(bot_id..'GBan:User')
send(msg.chat_id_, msg.id_, '\n *߷تم مسح قائمه العام*')
return false
end
if text == ("قائمه العام") and DevGOLDW(msg) then
local list = database:smembers(bot_id..'GBan:User')
t = "\n *߷قائمة المحظورين عام* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *߷لا يوجد محظورين عام*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("حظر عام") and msg.reply_to_message_id_ and DevGOLDW(msg) then  
function start_function(extra, result, success)
if GOLDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *߷لا تسطيع حظر البوت عام*")
return false 
end
database:sadd(bot_id..'GBan:User', result.sender_user_id_)
chat_kick(result.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},
function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم حظره عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^حظر عام @(.*)$")  and DevGOLDW(msg) then  
local username = text:match("^حظر عام @(.*)$") 
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if GOLDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *߷لا تسطيع حظر البوت عام*")
return false 
end
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم حظره عام من الجروبات*'
texts = usertext..status
database:sadd(bot_id..'GBan:User', result.id_)
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^حظر عام (%d+)$") and DevGOLDW(msg) then  
local userid = text:match("^حظر عام (%d+)$")
if GOLDSudoBot(userid) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *߷لا تسطيع حظر البوت عام*")
return false 
end
database:sadd(bot_id..'GBan:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم حظره عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم حظره عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("كتم عام") and msg.reply_to_message_id_ and DevGOLDW(msg) then  
function start_function(extra, result, success)
if GOLDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *߷لا تسطيع كتم البوت عام*")
return false 
end
database:sadd(bot_id..'Gmute:User', result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},
function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم كتمه عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^كتم عام @(.*)$")  and DevGOLDW(msg) then  
local username = text:match("^كتم عام @(.*)$") 
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if GOLDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *߷لا تسطيع كتم البوت عام*")
return false 
end
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم كتمه عام من الجروبات*'
texts = usertext..status
database:sadd(bot_id..'Gmute:User', result.id_)
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^كتم عام (%d+)$") and DevGOLDW(msg) then  
local userid = text:match("^كتم عام (%d+)$")
if GOLDSudoBot(bot_id) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *߷لا تسطيع كتم البوت عام*")
return false 
end
database:sadd(bot_id..'Gmute:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم كتمه عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم كتمه عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("الغاء العام") and msg.reply_to_message_id_ and DevGOLDW(msg) then  
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم الغاء (الحظر-الكتم) عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
database:srem(bot_id..'GBan:User', result.sender_user_id_)
database:srem(bot_id..'Gmute:User', result.sender_user_id_)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^الغاء العام @(.*)$") and DevGOLDW(msg) then  
local username = text:match("^الغاء العام @(.*)$") 
function start_function(extra, result, success)
if result.id_ then
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم الغاء (الحظر-الكتم) عام من الجروبات*'
texts = usertext..status
database:srem(bot_id..'GBan:User', result.id_)
database:srem(bot_id..'Gmute:User', result.id_)
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^الغاء العام (%d+)$") and DevGOLDW(msg) then  
local userid = text:match("^الغاء العام (%d+)$")
database:srem(bot_id..'GBan:User', userid)
database:srem(bot_id..'Gmute:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم الغاء (الحظر-الكتم) عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم حظره عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("مسح المطورين") and DevGOLDW(msg) then
database:del(bot_id..'Sudo:User')
send(msg.chat_id_, msg.id_, "\n *߷تم مسح قائمة المطورين*  ")
end
if text == ("المطورين") and DevGOLDW(msg) then
local list = database:smembers(bot_id..'Sudo:User')
t = "\n *߷قائمة مطورين البوت* \n*┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ *\n"
keyboard = {
{{text = 'مسح المطورين',callback_data=msg.sender_user_id_.."DelLsta".."55"}},
}
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *߷لا يوجد مطورين*"
keyboard = nil
end
local msg_id = msg.id_/2097152/0.5
send_inline_key(msg.chat_id_,t,nil,keyboard,msg_id)
end
if text == "تاك للمشرفين" and SudoBotCoSu then
if database:get(bot_id.."VVVZVV:admin:Time"..msg.chat_id_) then 
return
send(msg.chat_id_, msg.id_,"انتظر دقيقه من فضلك")
end
database:setex(bot_id..'VVVZVV:admin:Time'..msg.chat_id_..':'..msg.sender_user_id_,300,true)
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100 },function(extra,result,success)
m = 0
tgad = 0
local ans = result.members_  
for k, v in pairs(ans) do
tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data)
if m == 1 or m == tgad or k == 0 then
tgad = m + 5
t = "#Admin"
end
m = m + 1
Adminame = data.first_name_
Adminame = Adminame:gsub("]","")
Adminame = Adminame:gsub("[[]","")
t = t..", ["..Adminame.."](tg://user?id="..v.user_id_..")"
if m == 1 or m == tgad or k == 0 then
local Text = t:gsub('#Admin,','#Admin\n')
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end
end,nil)
end
end,nil)
end

if text and text:match('^بحث (.*)$') then 
local TextSearch = text:match('^بحث (.*)$') 
local msg_id = msg.id_/2097152/0.5
local done = json:decode(https.request("https://mahmoudm50.xyz/download.php?token="..token.."&chat="..msg.chat_id_.."&rep="..msg_id.."&text="..URL.escape(TextSearch))) 
end

if text == 'الملفات' and DevGOLDW(msg) then
t = ' *߷ملفات السورس بلاك ↓*\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉  \n'
i = 0
for v in io.popen('ls File_Bot'):lines() do
if v:match(".lua$") then
i = i + 1
t = t..i..'*- الملف »* {'..v..'}\n'
end
end
send(msg.chat_id_, msg.id_,t)
end
if text == "متجر الملفات" or text == 'المتجر' then
if DevGOLDW(msg) then
local Get_Files, res = https.request("https://raw.githubusercontent.com/DVGOLD/Files_GOLD/main/getfile.json")
if res == 200 then
local Get_info, res = pcall(JSON.decode,Get_Files);
vardump(res.plugins_)
if Get_info then
local TextS = "\n *߷اهلا بك في متجر ملفات بلاك*\n*߷ملفات السورس ↓*\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n\n"
local TextE = "\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n *߷علامة تعني { ✓ } ملف مفعل*\n *߷علامة تعني { ✘ } ملف معطل*\n *߷قناة سورس بلاك ↓*\n".." *߷*[اضغط هنا لدخول](t.me/BLACK_TEAM_4) \n"
local NumFile = 0
for name,Info in pairs(res.plugins_) do
local Check_File_is_Found = io.open("File_Bot/"..name,"r")
if Check_File_is_Found then
io.close(Check_File_is_Found)
CeckFile = "(✓)"
else
CeckFile = "(✘)"
end
NumFile = NumFile + 1
TextS = TextS..'*'..NumFile.."→* {`"..name..'`} » '..CeckFile..'\n[-Information]('..Info..')\n'
end
send(msg.chat_id_, msg.id_,TextS..TextE) 
end
else
send(msg.chat_id_, msg.id_," *߷لا يوجد اتصال من ال api* \n") 
end
return false
end
end

if text and text:match("^(تعطيل) (.*)(.lua)$") and DevGOLDW(msg) then
local name_t = {string.match(text, "^(تعطيل) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("File_Bot/"..file,"r")
if file_bot then
io.close(file_bot)
t = " *߷الملف »* "..file.."\n*߷تم تعطيل ملف* \n"
else
t = " *߷بالتاكيد تم تعطيل ملف →* "..file.."\n"
end
local json_file, res = https.request("https://raw.githubusercontent.com/DVGOLD/Files_GOLD/main/File_Bot/"..file)
if res == 200 then
os.execute("rm -fr File_Bot/"..file)
send(msg.chat_id_, msg.id_,t) 
dofile('GOLD.lua')  
else
send(msg.chat_id_, msg.id_," *߷عذرا الملف لايدعم سورس بلاك* \n") 
end
return false
end
if text and text:match("^(تفعيل) (.*)(.lua)$") and DevGOLDW(msg) then
local name_t = {string.match(text, "^(تفعيل) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("File_Bot/"..file,"r")
if file_bot then
io.close(file_bot)
t = " *߷بالتاكيد تم تفعيل ملف →* "..file.." \n"
else
t = " *߷الملف »* "..file.."\n*߷تم تفعيل ملف* \n"
end
local json_file, res = https.request("https://raw.githubusercontent.com/DVGOLD/Files_GOLD/main/File_Bot/"..file)
if res == 200 then
local chek = io.open("File_Bot/"..file,'w+')
chek:write(json_file)
chek:close()
send(msg.chat_id_, msg.id_,t) 
dofile('GOLD.lua')  
else
send(msg.chat_id_, msg.id_," *߷عذرا الملف لايدعم سورس بلاك* \n") 
end
return false
end
if text == "مسح الملفات" and DevGOLDW(msg) then
os.execute("rm -fr File_Bot/*")
send(msg.chat_id_,msg.id_," *߷تم مسح الملفات*")
return false
end

if text == ("رفع مطور") and msg.reply_to_message_id_ and DevGOLDW(msg) then  
function start_function(extra, result, success)
database:sadd(bot_id..'Sudo:User', result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته مطور*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false 
end
if text and text:match("^رفع مطور @(.*)$") and DevGOLDW(msg) then  
local username = text:match("^رفع مطور @(.*)$")
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Sudo:User', result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته مطور*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false 
end
if text and text:match("^رفع مطور (%d+)$") and DevGOLDW(msg) then  
local userid = text:match("^رفع مطور (%d+)$")
database:sadd(bot_id..'Sudo:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n *߷تم ترقيته مطور*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم ترقيته مطور*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false 
end
if text == ("تنزيل مطور") and msg.reply_to_message_id_ and DevGOLDW(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Sudo:User', result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من المطورين*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false 
end
if text and text:match("^تنزيل مطور @(.*)$") and DevGOLDW(msg) then  
local username = text:match("^تنزيل مطور @(.*)$")
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Sudo:User', result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من المطورين*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end  
if text and text:match("^تنزيل مطور (%d+)$") and DevGOLDW(msg) then  
local userid = text:match("^تنزيل مطور (%d+)$")
database:srem(bot_id..'Sudo:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من المطورين*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم تنزيله من المطورين*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false 
end
if text == ("مسح قائمه المالك") and Sudo(msg) then
database:del(bot_id..'CoSu'..msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n *߷تم مسح قائمه المالك*')
return false
end
if text == 'قائمه المالك' and Sudo(msg) then
local list = database:smembers(bot_id..'CoSu'..msg.chat_id_)
t = "\n *߷قائمه المالك* \n*┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ *\n"
keyboard = {
{{text = 'مسح المالكين',callback_data=msg.sender_user_id_.."DelLsta".."77"}},
}
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *߷لا يوجد احد في قائمه المالك*"
keyboard = nil
end
local msg_id = msg.id_/2097152/0.5
send_inline_key(msg.chat_id_,t,nil,keyboard,msg_id)
return false
end
if text == ("صيح للمالك") or text == ("تاك للمالك") then
local list = database:smembers(bot_id..'CoSu'..msg.chat_id_)
t = "\n *߷انت فين يعم نت وهو بيدورو عليكو* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *߷لا يوجد احد في قائمه المالك*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("رفع مالك") and msg.reply_to_message_id_ and Sudo(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:sadd(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته مالك*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع مالك @(.*)$") and Sudo(msg) and GetChannelMember(msg) then  
local username = text:match("^رفع مالك @(.*)$")
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'CoSu'..msg.chat_id_, result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته مالك*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^رفع مالك (%d+)$") and Sudo(msg) and GetChannelMember(msg) then  
local userid = text:match("^رفع مالك (%d+)$") 
database:sadd(bot_id..'CoSu'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته مالك*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم ترقيته مالك*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("تنزيل مالك") and msg.reply_to_message_id_ and Sudo(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من المالكين*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل مالك @(.*)$") and Sudo(msg) and GetChannelMember(msg) then  
local username = text:match("^تنزيل مالك @(.*)$")
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'CoSu'..msg.chat_id_, result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من المالكين*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^تنزيل مالك (%d+)$") and Sudo(msg) and GetChannelMember(msg) then  
local userid = text:match("^تنزيل مالك (%d+)$") 
database:srem(bot_id..'CoSu'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من المالكين*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم تنزيله من المالكين*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("مسح الاساسين") and SudoBotCoSu(msg) then
database:del(bot_id..'Basic:Constructor'..msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n *߷تم مسح المنشئين الاساسين*')
return false
end
if (msg.content_.sticker_)  and msg.reply_to_message_id_ == 0 and database:get(bot_id.."lock:Lock:Xn"..msg.chat_id_)=="del" then  
sticker_id = msg.content_.sticker_.sticker_.persistent_id_
st = https.request('https://vvvzvv.ml/Imagelnfo.php?token='..token..'&url='..sticker_id.."&type=sticker")
eker = JSON.decode(st)
if eker.ok.Info == "Indecent" then
local list = database:smembers(bot_id.."Basic:Constructor"..msg.chat_id_)
t = "*߷المنشئين الاساسين تعالو مخرب* \n ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉  \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "*߷ماكو منششئين يشوفولك جاره*"
end
Reply_Status(msg,msg.sender_user_id_,"reply","*߷قام بنشر ملصق اباحيه*\n"..t)  
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.id_),msg.id_})   
end   
end
if text == 'ملصق' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.photo_ then 
local pn = result.content_.photo_.sizes_[1].photo_.persistent_id_
Addsticker(msg,msg.chat_id_,pn,msg.sender_user_id_..'.png')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'صوت' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.voice_ then 
local mr = result.content_.voice_.voice_.persistent_id_ 
Addmp3(msg,msg.chat_id_,mr,msg.sender_user_id_..'.mp3')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'بصمه' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.audio_ then 
local mr = result.content_.audio_.audio_.persistent_id_
Addvoi(msg,msg.chat_id_,mr,msg.sender_user_id_..'.ogg')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'صوره' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.sticker_ then 
local Str = result.content_.sticker_.sticker_.persistent_id_ 
Addjpg(msg,msg.chat_id_,Str,msg.sender_user_id_..'.jpg')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if (msg.content_.photo_) and msg.reply_to_message_id_ == 0 and database:get(bot_id.."lock:Lock:Xn"..msg.chat_id_)=="del" then
photo_id = msg.content_.photo_.sizes_[1].photo_.persistent_id_  
Srrt = https.request('https://vvvzvv.ml/Imagelnfo.php?token='..token..'&url='..photo_id.."&type=photo")
Sto = JSON.decode(Srrt)
if Sto.ok.Info == "Indecent" then
local list = database:smembers(bot_id.."Basic:Constructor"..msg.chat_id_)
t = "*߷المنشئين الاساسين تعالو مخرب* \n ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉  \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "*߷ماكو منششئين يشوفولك جاره*"
end
Reply_Status(msg,msg.sender_user_id_,"reply","*߷قام بنشر صوره اباحيه*\n"..t)  
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.id_),msg.id_})   
end   
end
if text == 'المنشئين الاساسين' and SudoBotCoSu(msg) then
local list = database:smembers(bot_id..'Basic:Constructor'..msg.chat_id_)
t = "\n *߷قائمة المنشئين الاساسين* \n*┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ *\n"
keyboard = {
{{text = 'مسح الاساسين',callback_data=msg.sender_user_id_.."DelLsta".."99"}},
}
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *߷لا يوجد منشئين اساسين*"
keyboard = nil
end
local msg_id = msg.id_/2097152/0.5
send_inline_key(msg.chat_id_,t,nil,keyboard,msg_id)
return false
end
if text == ("تاك للمنشئين الاساسين") or text == ("صيح المنشئين الاساسين") then
local list = database:smembers(bot_id..'Basic:Constructor'..msg.chat_id_)
t = "\n *߷انت فين يعم نت وهو بيدورو عليكو* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *߷لا يوجد منشئين اساسين*"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع منشئ اساسي") and msg.reply_to_message_id_ and SudoBotCoSu(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته منشئ اساسي*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع منشئ اساسي @(.*)$") and SudoBotCoSu(msg) and GetChannelMember(msg) then  
local username = text:match("^رفع منشئ اساسي @(.*)$")
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته منشئ اساسي*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^رفع منشئ اساسي (%d+)$") and SudoBotCoSu(msg) and GetChannelMember(msg) then  
local userid = text:match("^رفع منشئ اساسي (%d+)$") 
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته منشئ اساسي*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم ترقيته منشئ اساسي*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("تنزيل منشئ اساسي") and msg.reply_to_message_id_ and SudoBotCoSu(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من الاساسيين*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل منشئ اساسي @(.*)$") and SudoBotCoSu(msg) and GetChannelMember(msg) then  
local username = text:match("^تنزيل منشئ اساسي @(.*)$")
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_, result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من الاساسيين*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^تنزيل منشئ اساسي (%d+)$") and SudoBotCoSu(msg) and GetChannelMember(msg) then  
local userid = text:match("^تنزيل منشئ اساسي (%d+)$") 
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من الاساسيين*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم تنزيله من الاساسيين*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'مسح المنشئين' and BasicConstructor(msg) then
database:del(bot_id..'Constructor'..msg.chat_id_)
texts = ' *߷تم مسح المنشئين* '
send(msg.chat_id_, msg.id_, texts)
end
if text == ("المنشئين") and BasicConstructor(msg) then
local list = database:smembers(bot_id..'Constructor'..msg.chat_id_)
t = "\n *߷قائمة المنشئين* \n*┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ *\n"
keyboard = {
{{text = 'مسح المنشئين',callback_data=msg.sender_user_id_.."DelLsta".."120"}},
}
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *߷لا يوجد منشئين*"
keyboard = nil
end
local msg_id = msg.id_/2097152/0.5
send_inline_key(msg.chat_id_,t,nil,keyboard,msg_id)
end
if text == ("تاك للمنشئين") or text == ("صيح المنشئين") then
local list = database:smembers(bot_id..'Constructor'..msg.chat_id_)
t = "\n *߷انت فين يعم نت وهو بيدورو عليكو* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *߷لا يوجد منشئين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text ==("المنشئ") then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_," *حساب߷ المنشئ محذوف*")
return false  
end
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = owner_id,offset_ = 0,limit_ = 1},function(arg,getpro) 
if getpro.photos_[0] then
Text = "*߷ Owner Name ↬ * ["..b.first_name_.."](T.me/"..b.username_..")\n*߷ Owner User ↬* [@"..b.username_.."]\n*߷ Owner id ↬* ["..b.id_.."]"
keyboard = {}
keyboard.inline_keyboard = {{{text = ''..b.first_name_..'', url = "https://t.me/"..b.username_..""}}}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(Text)..'&photo='..getpro.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
else
send(msg.chat_id_, msg.id_,Name,1, 'md')
end
end,nil)   
end,nil)   
end
end
end,nil)  
end
if text == "رفع منشئ" and msg.reply_to_message_id_ and BasicConstructor(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:sadd(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷ اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته منشئ*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match("^رفع منشئ @(.*)$") and BasicConstructor(msg) and GetChannelMember(msg) then  
local username = text:match("^رفع منشئ @(.*)$")
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Constructor'..msg.chat_id_, result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته منشئ*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text and text:match("^رفع منشئ (%d+)$") and BasicConstructor(msg) and GetChannelMember(msg) then  
local userid = text:match("^رفع منشئ (%d+)$")
database:sadd(bot_id..'Constructor'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته منشئ*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷ اسم المستخدم »* '..userid..''
status  = '\n*߷تم ترقيته منشئ*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end
if text and text:match("^تنزيل منشئ$") and msg.reply_to_message_id_ and BasicConstructor(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من المنشئين*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
------------------------------------------------------------------------
if text and text:match("^تنزيل منشئ @(.*)$") and BasicConstructor(msg) and GetChannelMember(msg) then  
local username = text:match("^تنزيل منشئ @(.*)$")
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من المنشئين*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
------------------------------------------------------------------------
if text and text:match("^تنزيل منشئ (%d+)$") and BasicConstructor(msg) and GetChannelMember(msg) then  
local userid = text:match("^تنزيل منشئ (%d+)$")
database:srem(bot_id..'Constructor'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من المنشئين*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم تنزيله من المنشئين*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'مسح المدراء' and Constructor(msg) then
database:del(bot_id..'Manager'..msg.chat_id_)
texts = ' *߷تم مسح المدراء* '
send(msg.chat_id_, msg.id_, texts)
end
if text == ("المدراء") and Constructor(msg) then
local list = database:smembers(bot_id..'Manager'..msg.chat_id_)
t = "\n *߷قائمة المدراء* \n*┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ *\n"
keyboard = {
{{text = 'مسح المدراء',callback_data=msg.sender_user_id_.."DelLsta".."140"}},
}
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *߷لا يوجد مدراء*"
keyboard = nil
end
local msg_id = msg.id_/2097152/0.5
send_inline_key(msg.chat_id_,t,nil,keyboard,msg_id)
end
if text == ("تاك للمدراء") or text == ("صيح المدراء") then
local list = database:smembers(bot_id..'Manager'..msg.chat_id_)
t = "\n *߷انت فين يعم نت وهو بيدورو عليكو* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *߷لا يوجد مدراء*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("رفع مدير") and msg.reply_to_message_id_ and Constructor(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:sadd(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته مدير*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end  
if text and text:match("^رفع مدير @(.*)$") and Constructor(msg) and GetChannelMember(msg) then  
local username = text:match("^رفع مدير @(.*)$") 
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Manager'..msg.chat_id_, result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته مدير*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end 
if text and text:match("^رفع مدير (%d+)$") and Constructor(msg) and GetChannelMember(msg) then  
local userid = text:match("^رفع مدير (%d+)$") 
database:sadd(bot_id..'Manager'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته مدير*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم ترقيته مدير*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end  
if text == ("تنزيل مدير") and msg.reply_to_message_id_ and Constructor(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من المدراء*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end  
if text and text:match("^تنزيل مدير @(.*)$") and Constructor(msg) and GetChannelMember(msg) then  
local username = text:match("^تنزيل مدير @(.*)$")
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من المدراء*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end  
if text and text:match("^تنزيل مدير (%d+)$") and Constructor(msg) and GetChannelMember(msg) then  
local userid = text:match("^تنزيل مدير (%d+)$") 
database:srem(bot_id..'Manager'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من المدراء*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم تنزيله من المدراء*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text ==("رفع الادمنيه") and Manager(msg) then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local num2 = 0
local admins = data.members_
for i=0 , #admins do
if data.members_[i].bot_info_ == false and data.members_[i].status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
num2 = num2 + 1
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,b) 
if b.username_ == true then
end
if b.first_name_ == false then
database:srem(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end,nil)   
else
database:srem(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end
if num2 == 0 then
send(msg.chat_id_, msg.id_," *߷لا يوجد ادمنيه ليتم رفعهم*") 
else
send(msg.chat_id_, msg.id_," *߷تمت ترقيه { "..num2.." } من الادمنيه*") 
end
end,nil)   
end
if text == ("رفع مطور ثانوي") and tonumber(msg.reply_to_message_id_) ~= 0 and SudoBot(msg) then
function Function_GOLD(extra, result, success)
database:sadd(bot_id.."DEV:Sudo:T", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*߷تم ترقيته مطور ثانوي في البوت*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_GOLD, nil)
return false 
end
if text and text:match("^رفع مطور ثانوي @(.*)$") and SudoBot(msg) then
local username = text:match("^رفع مطور ثانوي @(.*)$")
function Function_GOLD(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id.."DEV:Sudo:T", result.id_)
Reply_Status(msg,result.id_,"reply","*߷تم ترقيته مطور ثانوي في البوت*")  
else
send(msg.chat_id_, msg.id_,"*߷لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_GOLD, nil)
return false 
end
if text and text:match("^رفع مطور ثانوي (%d+)$") and SudoBot(msg) then
local userid = text:match("^رفع مطور ثانوي (%d+)$")
database:sadd(bot_id.."DEV:Sudo:T", userid)
Reply_Status(msg,userid,"reply","*߷تم ترقيته مطور ثانوي في البوت*")  
return false 
end
if text == ("تنزيل مطور ثانوي") and tonumber(msg.reply_to_message_id_) ~= 0 and SudoBot(msg) then
function Function_GOLD(extra, result, success)
database:srem(bot_id.."DEV:Sudo:T", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*߷تم تنزيله من المطور ثانويين*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_GOLD, nil)
return false 
end
if text and text:match("^تنزيل مطور ثانوي @(.*)$") and SudoBot(msg) then
local username = text:match("^تنزيل مطور ثانوي @(.*)$")
function Function_GOLD(extra, result, success)
if result.id_ then
database:srem(bot_id.."DEV:Sudo:T", result.id_)
Reply_Status(msg,result.id_,"reply","*߷تم تنزيله من المطور ثانويين*")  
else
send(msg.chat_id_, msg.id_,"*߷لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_GOLD, nil)
return false
end  
if text and text:match("^تنزيل مطور ثانوي (%d+)$") and SudoBot(msg) then
local userid = text:match("^تنزيل مطور ثانوي (%d+)$")
database:srem(bot_id.."DEV:Sudo:T", userid)
Reply_Status(msg,userid,"reply","*߷تم تنزيله من المطور ثانويين*")  
return false 
end
if text == ("الثانويين") and SudoBot(msg) then
local list = database:smembers(bot_id.."DEV:Sudo:T")
t = "\n*߷قائمة مطورين الثانويين للبوت* \n ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉  \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "*߷لا يوجد مطورين ثانويين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("مسح الثانويين") and SudoBot(msg) then
database:del(bot_id.."DEV:Sudo:T")
send(msg.chat_id_, msg.id_, "\n*߷تم مسح قائمة المطورين الثانويين*  ")
end
if text == 'مسح الادمنيه' and Manager(msg) then
database:del(bot_id..'Mod:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ߷تم مسح الادمنيه')
end
if text == ("الادمنيه") and Manager(msg) then
local list = database:smembers(bot_id..'Mod:User'..msg.chat_id_)
t = "\n *߷قائمة الادمنيه* \n*┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ *\n"
keyboard = {
{{text = 'مسح الادمنيه',callback_data=msg.sender_user_id_.."DelLsta".."160"}},
}
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *߷لا يوجد ادمنيه*"
keyboard = nil
end
local msg_id = msg.id_/2097152/0.5
send_inline_key(msg.chat_id_,t,nil,keyboard,msg_id)
end
if text == ("تاك للادمنيه") or text == ("صيح الادمنيه") then
local list = database:smembers(bot_id..'Mod:User'..msg.chat_id_)
t = "\n *߷انت فين يعم نت وهو بيدورو عليكو* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *߷لا يوجد ادمنيه*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("رفع ادمن") and msg.reply_to_message_id_ and Manager(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الرفع*') 
return false
end
database:sadd(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷العضو* » ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته ادمن*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع ادمن @(.*)$") and Manager(msg) and GetChannelMember(msg) then  
local username = text:match("^رفع ادمن @(.*)$")
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Mod:User'..msg.chat_id_, result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته ادمن*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^رفع ادمن (%d+)$") and Manager(msg) and GetChannelMember(msg) then  
local userid = text:match("^رفع ادمن (%d+)$")
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الرفع*') 
return false
end
database:sadd(bot_id..'Mod:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم ترقيته ادمن*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم ترقيته ادمن*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("تنزيل ادمن") and msg.reply_to_message_id_ and Manager(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من الادمنيه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل ادمن @(.*)$") and Manager(msg) and GetChannelMember(msg) then  
local username = text:match("^تنزيل ادمن @(.*)$") 
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من الادمنيه*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^تنزيل ادمن (%d+)$") and Manager(msg) and GetChannelMember(msg) then  
local userid = text:match("^تنزيل ادمن (%d+)$")
database:srem(bot_id..'Mod:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من الادمنيه*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم تنزيله من الادمنيه*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("طرد") and msg.reply_to_message_id_ ~=0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الطرد*') 
return false
end
function start_function(extra, result, success)
if GOLDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *߷لا تسطيع طرد البوت* ")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *߷عذرا لا تستطيع طرد* ( '..Rutba(result.sender_user_id_,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *߷ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *߷البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
statusk  = '\n*߷تم طرد العضو*'
send(msg.chat_id_, msg.id_, usertext..statusk)
end,nil)
chat_kick(result.chat_id_, result.sender_user_id_)
end,nil)   
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end  
if text and text:match("^طرد @(.*)$") and Mod(msg) and GetChannelMember(msg) then   
local username = text:match("^طرد @(.*)$")
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الطرد*') 
return false
end
function start_function(extra, result, success)
if result.id_ then
if GOLDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *߷لا تسطيع طرد البوت* ")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *߷عذرا لا تستطيع طرد* ( '..Rutba(result.id_,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *߷ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *߷البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
statusk  = '\n*߷تم طرد العضو*'
texts = usertext..statusk
chat_kick(msg.chat_id_, result.id_)
send(msg.chat_id_, msg.id_, texts)
end,nil)   
end
else
send(msg.chat_id_, msg.id_, ' *߷لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end  

if text and text:match("^طرد (%d+)$") and Mod(msg) and GetChannelMember(msg) then   
local userid = text:match("^طرد (%d+)$") 
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الطرد*') 
return false
end
if GOLDSudoBot(userid) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *߷لا تسطيع طرد البوت* ")
return false 
end
if Can_or_NotCan(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *߷عذرا لا تستطيع طرد* ( '..Rutba(userid,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *߷ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *߷البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
chat_kick(msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
 usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
 statusk  = '\n*߷تم طرد العضو*'
send(msg.chat_id_, msg.id_, usertext..statusk)
else
 usertext = '\n *߷اسم المستخدم »* '..userid..''
 statusk  = '\n*߷تم طرد العضو*'
send(msg.chat_id_, msg.id_, usertext..statusk)
end;end,nil)
end,nil)   
end
return false
end
if text == 'مسح المميزين' and Mod(msg) then
database:del(bot_id..'Special:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *߷تم مسح المميزين*')
end
if text == ("المميزين") and Mod(msg) then
local list = database:smembers(bot_id..'Special:User'..msg.chat_id_)
t = "\n *߷قائمة مميزين الجروب* \n*┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ *\n"
keyboard = {
{{text = 'مسح المميزين',callback_data=msg.sender_user_id_.."DelLsta".."180"}},
}
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *߷لا يوجد مميزين*"
keyboard = nil
end
local msg_id = msg.id_/2097152/0.5
send_inline_key(msg.chat_id_,t,nil,keyboard,msg_id)
end
if text == ("تاك للمميزين") or text == ("صيح المميزين") then
local list = database:smembers(bot_id..'Special:User'..msg.chat_id_)
t = "\n *߷انت فين يعم نت وهو بيدورو عليكو* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *߷لا يوجد مميزين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("رفع مميز") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
local  statuss  = '\n*߷تم ترقيته مميز*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع مميز @(.*)$") and Mod(msg) and GetChannelMember(msg) then  
local username = text:match("^رفع مميز @(.*)$") 
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Special:User'..msg.chat_id_, result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
local  statuss  = '\n*߷تم ترقيته مميز*'
texts = usertext..statuss
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^رفع مميز (%d+)$") and Mod(msg) and GetChannelMember(msg) then  
local userid = text:match("^رفع مميز (%d+)$")
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الرفع*') 
return false
end
database:sadd(bot_id..'Special:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
local  statuss  = '\n*߷تم ترقيته مميز*'
send(msg.chat_id_, msg.id_, usertext..statuss)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
local  statuss  = '\n*߷تم ترقيته مميز*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end;end,nil)
return false
end
if (text == ("تنزيل مميز")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من المميزين*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل مميز @(.*)$") and Mod(msg) and GetChannelMember(msg) then  
local username = text:match("^تنزيل مميز @(.*)$") 
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من المميزين*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^تنزيل مميز (%d+)$") and Mod(msg) and GetChannelMember(msg) then  
local userid = text:match("^تنزيل مميز (%d+)$") 
database:srem(bot_id..'Special:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷لعضو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيله من المميزين*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم تنزيله من المميزين*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end  
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل الحمار' and Mod(msg) then
database:del(bot_id..'Mote:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *߷تم مسح جميع الحمار*')
end
if text == ("تاك للحمير") and Mod(msg) then
local list = database:smembers(bot_id..'Mote:User'..msg.chat_id_)
t = "\n *߷قائمة حمير الجروب* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الحمار* [@"..username.."]\n"
else
t = t..""..k.."» *الحمار* `"..v.."`\n"
end
end
if #list == 0 then
t = " *߷لا يوجد حمير*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("تحكم") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
local keyboard = {
{{text = '𖢄 حظر',callback_data=msg.sender_user_id_.."been"..result.sender_user_id_},{text = '𖢄 الغاء حظر',callback_data=msg.sender_user_id_.."unbeen"..result.sender_user_id_}},
{{text = '𖢄 كتم',callback_data=msg.sender_user_id_.."Mut"..result.sender_user_id_},{text = '𖢄 الغاء كتم',callback_data=msg.sender_user_id_.."unMut"..result.sender_user_id_}},
{{text = '𖢄 تقييد',callback_data=msg.sender_user_id_.."restrict"..result.sender_user_id_},{text = '𖢄 الغاء تقييد',callback_data=msg.sender_user_id_.."unrestrict"..result.sender_user_id_}},
{{text = '𖢄 رفع رتبه',callback_data=msg.sender_user_id_.."UpS"..result.sender_user_id_},{text = '𖢄 تنزيل رتبه',callback_data=msg.sender_user_id_.."unUpS"..result.sender_user_id_}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
local msg_id = msg.id_/2097152/0.5
send_inline_key(msg.chat_id_,"*߷اهلا بك يمكنك التحكم بالازرار اسفل ⍖.*",nil,keyboard,msg_id)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع حمار") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Mote:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'DEVBESSO')..')'
local  statuss  = '\n*߷تم رفع العضو حمار في الجروب* \n*߷يلا يحمار قدامي حااا😂🙂*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل حمار")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Mote:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيل العضو حمار في الجروب*\n*߷تع اركبك يلا😂🙂'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
-----------------------------------------------------
if text == 'مسح المتزوجين' and Mod(msg) then
database:del(bot_id..'Mode:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *߷تم مسح جميع المزوجين*')
end
if text == ("تاك للمتزوجين") and Mod(msg) then
local list = database:smembers(bot_id..'Mode:User'..msg.chat_id_)
t = "\n *߷قائمه المتزوجين في الجروب* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» المتزوج [@"..username.."]\n"
else
t = t..""..k.."» المتزوج `"..v.."`\n"
end
end
if #list == 0 then
t = " *߷مع الاسف لا يوجد خولات*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("زواج") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Mode:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷العضــو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'DEVBESSO')..')'
local  statuss  = '\n*߷تم الزواج الان الف مبروك ليكو* \n*߷اهتمو ببعض بقا هه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("طلاق")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Mode:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷العضــو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم الطلاق بينكم البقاء لله*\n*߷بقيتو سناجل🥲.*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم

if text == ("تاك للوتكات") and Mod(msg) then
local list = database:smembers(bot_id..'Modde:User'..msg.chat_id_)
t = "\n *߷قائمه وتكه الجروب* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» الوتكه [@"..username.."]\n"
else
t = t..""..k.."» الوتكه `"..v.."`\n"
end
end
if #list == 0 then
t = " *߷مع الاسف لا يوجد وتكه*"
end
send(msg.chat_id_, msg.id_, t)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("رفع وتكه") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Modde:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷العضــو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'DEVBESSO')..')'
local  statuss  = '\n*߷تم رفع العضــو الوتكه في الجروب* \n*߷تعالي يبت جيبي بوسه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if (text == ("تنزيل وتكه")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Modde:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷العضــو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيل العضــو الوتكه من الجروب*\n*߷مشيي مو خوش وتكه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل اولادي' and Mod(msg) then
database:del(bot_id..'Sakl:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *߷تم تنزيل جميع اولادك من الجروب*')
end
if text == ("تاك ل اولادي") and Mod(msg) then
local list = database:smembers(bot_id..'Sakl:User'..msg.chat_id_)
t = "\n *߷قائمه اولادك* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الابن* [@"..username.."]\n"
else
t = t..""..k.."» *الابن* `"..v.."`\n"
end
end
if #list == 0 then
t = " *߷لا يوجد ابني*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع ابني") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Sakl:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
local  statuss  = '\n*߷تم رفع المتهم ابني بالجروب*\n*߷الان اصبح ابنك الجروب*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if (text == ("تنزيل ابني")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Sakl:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيل العضو ابني*\n*߷ارجع للبيتكم حبي*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل الكلاب' and Mod(msg) then
database:del(bot_id..'Motte:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *߷تم تنزيل جميع كلاب الجروب*')
end
if text == ("تاك للكلاب") and Mod(msg) then
local list = database:smembers(bot_id..'Motte:User'..msg.chat_id_)
t = "\n *߷قائمة الكلاب الجروب* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الكلب* [@"..username.."]\n"
else
t = t..""..k.."» *الكلب* `"..v.."`\n"
end
end
if #list == 0 then
t = " *߷لا يوجد جلب*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع كلب") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Motte:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
local  statuss  = '\n*߷تم رفع كلب في الجروب*\n*߷تعالي يسطا خدلك عضمه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل كلب")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Motte:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيل كلب في الجروب*\n*߷رجع العضمه يخول*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل القروده' and Mod(msg) then
database:del(bot_id..'Motee:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *߷تم تنزيل جميع القروده بالجروب*')
end
if text == ("تاك للقرود") and Mod(msg) then
local list = database:smembers(bot_id..'Motee:User'..msg.chat_id_)
t = "\n *߷قائمة القروده الجروب* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *القرد* [@"..username.."]\n"
else
t = t..""..k.."» *القرد* `"..v.."`\n"
end
end
if #list == 0 then
t = " *߷لا يوجد قرد*"
end
send(msg.chat_id_, msg.id_, t)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("رفع قرد") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Motee:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
local  statuss  = '\n*߷تم رفع قرد في الجروب*\n*߷تعال حبي استلم موزه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل قرد")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Motee:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيل قرد من الجروب*\n*߷رجع موزه حبي*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل الحصنه' and Mod(msg) then
database:del(bot_id..'Hors:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *߷تم تنزيل جميع الحصنه بالجروب*')
end
if text == ("تاك للحصنه") and Mod(msg) then
local list = database:smembers(bot_id..'Hors:User'..msg.chat_id_)
t = "\n *߷قائمة الحصنه الجروب* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الحصان* [@"..username.."]\n"
else
t = t..""..k.."» *الحصان* `"..v.."`\n"
end
end
if #list == 0 then
t = " *߷لا يوجد حصان*"
end
send(msg.chat_id_, msg.id_, t)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("رفع حصان") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Hors:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
local  statuss  = '\n*߷تع احطلك سرج واركبك 🙂😂*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل حصان")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Hors:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيل حصان من الجروب*\n*߷رجع السرج يمعلم*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل البقرات' and Mod(msg) then
database:del(bot_id..'Bakra:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *߷تم تنزيل جميع البقرات بالجروب*')
end
if text == ("تاك للبقر") and Mod(msg) then
local list = database:smembers(bot_id..'Bakra:User'..msg.chat_id_)
t = "\n *߷قائمة البقرات الجروب* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *البقره* [@"..username.."]\n"
else
t = t..""..k.."» *البقره* "..v.."\n"
end
end
if #list == 0 then
t = " *߷لا يوجد البقره*"
end
send(msg.chat_id_, msg.id_, t)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("رفع بقره") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Bakra:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
local  statuss  = '\n*߷تم رفع بقره في الجروب*\n*߷تع احلبك يسطا😂🙂*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل بقره")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Bakra:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيل بقره من الجروب*\n*߷خلاص بطلو تحلبوه😂🙂*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل المتخزوقين' and Mod(msg) then
database:del(bot_id..'Tele:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *߷تم تنزيل جميع متخزوقين بالجروب')
end
if text == ("تاك للمتخزوقين") and Mod(msg) then
local list = database:smembers(bot_id..'Tele:User'..msg.chat_id_)
t = "\n *߷قائمة المتخزوقين في الجروب* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *المتخزوق* [@"..username.."]\n"
else
t = t..""..k.."» *المتخزوق* "..v.."\n"
end
end
if #list == 0 then
t = " *߷لا يوجد متخزوق*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع متخزوق") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Tele:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
local  statuss  = '\n*߷تم رفع المتخزوق في الجروب*\n*߷غور يمتخزوق يعلق😂🙂*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل متخزوق")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Tele:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيل المتخزوق من الجروب*\n *߷هاك اخذ بعرور*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل اللي فقلبي' and Mod(msg) then
database:del(bot_id..'Zahf:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *߷تم تنزيل جميع الي فقلبك*')
end
if text == ("تاك للفقلبي") and Mod(msg) then
local list = database:smembers(bot_id..'Zahf:User'..msg.chat_id_)
t = "\n *߷قائمة اللي فقلبي الجروب* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *اللي فقلبك* [@"..username.."]\n"
else
t = t..""..k.."» *اللي فقلبك* "..v.."\n"
end
end
if #list == 0 then
t = " *߷لا يوجد احد*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع بقلبي") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Zahf:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
local  statuss  = '\n*߷تم رفعه داخل قلبك*\n*߷هو الان داخل قلبك*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل من قلبي")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Zahf:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيل الخول من قلبك*\n*߷هو الان بره قلبك*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل جريذيه' and Mod(msg) then
database:del(bot_id..'Jred:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *߷تم تنزيل جميع جريزي*')
end
if text == ("تاك للجريذيه") and Mod(msg) then
local list = database:smembers(bot_id..'Jred:User'..msg.chat_id_)
t = "\n *߷قائمة الجريذيه الجروب* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الجريذي* [@"..username.."]\n"
else
t = t..""..k.."» *الجريذي* "..v.."\n"
end
end
if #list == 0 then
t = " *߷لا يوجد جريذي*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع جريذي") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Jred:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
local  statuss  = '\n*߷تم رفع جريذي في الجروب*\n*߷خايس ريحتك موتتنه روح سبح يع*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل جريذي")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Jred:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تنزيل جريذي من الجروب*\n*߷هاك ليفه اسبح*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'مسح المحظورين' and Mod(msg) then
database:del(bot_id..'Ban:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n *߷تم مسح المحظورين*')
end
if text == ("المحظورين") then
local list = database:smembers(bot_id..'Ban:User'..msg.chat_id_)
t = "\n *߷قائمة محظورين الجروب* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *߷لا يوجد محظورين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("حظر") and msg.reply_to_message_id_ ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الحظر*') 
return false
end
function start_function(extra, result, success)
if GOLDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *߷لا تسطيع حظر البوت* ")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *߷عذرا لا تستطيع حظر* ( '..Rutba(result.sender_user_id_,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *߷ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *߷البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
database:sadd(bot_id..'Ban:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
chat_kick(result.chat_id_, result.sender_user_id_)
end,nil)   
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if text and text:match("^حظر @(.*)$") and Mod(msg) then
local username = text:match("^حظر @(.*)$")
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الحظر*') 
return false
end
function start_function(extra, result, success)
if result.id_ then
if GOLDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *߷عذرا لا تستطيع حظر* ( '..Rutba(result.id_,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *߷ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *߷البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
database:sadd(bot_id..'Ban:User'..msg.chat_id_, result.id_)
usertext = '\n *߷ المستخدم »* ['..result.title_..'](t.me/'..(username or 'GLOBLA')..')'
status  = '\n*߷تم حظره*'
texts = usertext..status
chat_kick(msg.chat_id_, result.id_)
send(msg.chat_id_, msg.id_, texts)
end,nil)   
end
else
send(msg.chat_id_, msg.id_, ' *߷لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^حظر (%d+)$") and Mod(msg) and GetChannelMember(msg) then  
local userid = text:match("^حظر (%d+)$") 
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *߷تم تعطيل الحظر*') 
return false
end
if GOLDSudoBot(userid) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *߷لا تسطيع حظر البوت*")
return false 
end
if Can_or_NotCan(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *߷عذرا لا تستطيع حظر* ( '..Rutba(userid,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *߷ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *߷البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
database:sadd(bot_id..'Ban:User'..msg.chat_id_, userid)
chat_kick(msg.chat_id_, userid)  
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end,nil)   
end
return false
end
if text == ("الغاء حظر") and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, ' *߷انا لست محظورآ* \n') 
return false 
end
database:srem(bot_id..'Ban:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم الغاء حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^الغاء حظر @(.*)$") and Mod(msg) and GetChannelMember(msg) then  
local username = text:match("^الغاء حظر @(.*)$") 
function start_function(extra, result, success)
if result.id_ then
if tonumber(result.id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, ' *߷انا لست محظورآ* \n') 
return false 
end
database:srem(bot_id..'Ban:User'..msg.chat_id_, result.id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم الغاء حظره*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^الغاء حظر (%d+)$") and Mod(msg) and GetChannelMember(msg) then  
local userid = text:match("^الغاء حظر (%d+)$") 
if tonumber(userid) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, ' *߷انا لست محظورآ* \n') 
return false 
end
database:srem(bot_id..'Ban:User'..msg.chat_id_, userid)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم الغاء حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم الغاء حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'مسح المكتومين' and Mod(msg) then
database:del(bot_id..'Muted:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *߷تم مسح المكتومين*')
end
if text == ("المكتومين") and Mod(msg) then
local list = database:smembers(bot_id..'Muted:User'..msg.chat_id_)
t = "\n *߷قائمة المكتومين* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *߷لا يوجد مكتومين*"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("كتم") and msg.reply_to_message_id_ ~= 0 and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *߷لا تسطيع كتم البوت* ")
return false 
end
if GOLDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *߷عذرا لا تستطيع كتم* ( '..Rutba(result.sender_user_id_,msg.chat_id_)..' )')
else
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *߷البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
database:sadd(bot_id..'Muted:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^كتم @(.*)$") and Mod(msg) and GetChannelMember(msg) then  
local username = text:match("^كتم @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *߷البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if GOLDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *߷لا تسطيع كتم البوت* ")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *߷عذرا لا تستطيع كتم* ( '..Rutba(result.id_,msg.chat_id_)..' )')
else
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Muted:User'..msg.chat_id_, result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم كتمه*'
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
end
else
send(msg.chat_id_, msg.id_, ' *߷لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match('^كتم (%d+) (.*)$') and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
local TextEnd = {string.match(text, "^(كتم) (%d+) (.*)$")}
function start_function(extra, result, success)
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if GOLDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n *߷عذرا لا تستطيع كتم* ( "..Rutba(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم كتم لمدة ~* { '..TextEnd[2]..' '..TextEnd[3]..'}'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+Time))
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match('^كتم (%d+) (.*) @(.*)$') and Mod(msg) then
local TextEnd = {string.match(text, "^(كتم) (%d+) (.*) @(.*)$")}
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if GOLDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n *߷عذرا لا تستطيع كتم* ( "..Rutba(result.id_,msg.chat_id_).." )")
else
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم كتم لمدة ~* { '..TextEnd[2]..' '..TextEnd[3]..'}'
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_..'&until_date='..tonumber(msg.date_+Time))
end
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = TextEnd[4]}, start_function, nil)
return false
end
if text and text:match("^كتم (%d+)$") and Mod(msg) and GetChannelMember(msg) then  
local userid = text:match("^كتم (%d+)$")
if GOLDSudoBot(userid) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *߷لا تسطيع كتم البوت* ")
return false 
end
if Can_or_NotCan(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *߷عذرا لا تستطيع كتم* ( '..Rutba(userid,msg.chat_id_)..' )')
else
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *߷البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
database:sadd(bot_id..'Muted:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end
return false
end
if text and text:match("^(وضع وقت التنظيف) (%d+)$") and BasicConstructor(msg) then
local GetDo = tonumber(text:match("(%d+)"))
database:set(bot_id..':TiMsg:'..msg.chat_id_,GetDo) 
return send(msg.chat_id_, msg.id_,"*߷تم وضع وقت التنظيف ("..GetDo..") ساعه*")
end
if text == ("الغاء كتم") and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Muted:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم الغاء كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^الغاء كتم @(.*)$") and Mod(msg) and GetChannelMember(msg) then  
local username = text:match("^الغاء كتم @(.*)$")
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Muted:User'..msg.chat_id_, result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم الغاء كتمه*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end

if text and text:match("^الغاء كتم (%d+)$") and Mod(msg) and GetChannelMember(msg) then  
local userid = text:match("^الغاء كتم (%d+)$") 
database:srem(bot_id..'Muted:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم الغاء كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم الغاء كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end

if text == ("تقيد") and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
if GOLDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " ߷لا تسطيع تقيد البوت ")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, '\n *߷عذرا لا تستطيع تقيد* ( '..Rutba(result.sender_user_id_,msg.chat_id_)..' )')
else
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تقيده*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تقيد @(.*)$") and Mod(msg) and GetChannelMember(msg) then  
local username = text:match("^تقيد @(.*)$")
function start_function(extra, result, success)
if result.id_ then
if GOLDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *߷لا تسطيع تقيد البوت* ")
return false 
end
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if Can_or_NotCan(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, '\n *߷عذرا لا تستطيع تقيد* ( '..Rutba(result.id_,msg.chat_id_)..' )')
return false 
end  
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تقيده*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match('^تقيد (%d+) (.*)$') and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
local TextEnd = {string.match(text, "^(تقيد) (%d+) (.*)$")}
function start_function(extra, result, success)
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if GOLDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n *߷عذرا لا تستطيع تقيد* ( "..Rutba(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تقيده لمدة ~* { '..TextEnd[2]..' '..TextEnd[3]..'}'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+Time))
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match('^تقيد (%d+) (.*) @(.*)$') and Mod(msg) then
local TextEnd = {string.match(text, "^(تقيد) (%d+) (.*) @(.*)$")}
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if GOLDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n *߷عذرا لا تستطيع تقيد* ( "..Rutba(result.id_,msg.chat_id_).." )")
else
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تقيده لمدة ~* { '..TextEnd[2]..' '..TextEnd[3]..'}'
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_..'&until_date='..tonumber(msg.date_+Time))
end
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = TextEnd[4]}, start_function, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^تقيد (%d+)$") and Mod(msg) and GetChannelMember(msg) then  
local userid = text:match("^تقيد (%d+)$")
if GOLDSudoBot(userid) then
send(msg.chat_id_, msg.id_,"*߷لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *߷لا تسطيع تقيد البوت* ")
return false 
end
if Can_or_NotCan(userid, msg.chat_id_) then
send(msg.chat_id_, msg.id_, '\n *߷عذرا لا تستطيع تقيد* ( '..Rutba(userid,msg.chat_id_)..' )')
else
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم تقيده*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم تقيده*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end
return false
end
------------------------------------------------------------------------
if text == ("الغاء تقيد") and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.sender_user_id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم الغاء تقيد*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^الغاء تقيد @(.*)$") and Mod(msg) and GetChannelMember(msg) then  
local username = text:match("^الغاء تقيد @(.*)$")
function start_function(extra, result, success)
if result.id_ then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم الغاء تقيد*'
texts = usertext..status
else
texts = ' *߷لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^الغاء تقيد (%d+)$") and Mod(msg) and GetChannelMember(msg) then  
local userid = text:match("^الغاء تقيد (%d+)$")
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم الغاء تقيد*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *߷اسم المستخدم »* '..userid..''
status  = '\n*߷تم الغاء تقيد*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text and text:match('^رفع القيود @(.*)') and Manager(msg) and GetChannelMember(msg) then   
local username = text:match('^رفع القيود @(.*)') 
function start_function(extra, result, success)
if result.id_ then
if DevGOLDW(msg) then
database:srem(bot_id..'GBan:User',result.id_)
database:srem(bot_id..'Ban:User'..msg.chat_id_,result.id_)
database:srem(bot_id..'Muted:User'..msg.chat_id_,result.id_)
database:srem(bot_id..'Gmute:User'..msg.chat_id_,result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم الغاء جميع القيود*'
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
else
database:srem(bot_id..'Ban:User'..msg.chat_id_,result.id_)
database:srem(bot_id..'Muted:User'..msg.chat_id_,result.id_)
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم الغاء جميع القيود*'
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
end
else
Text = ' *߷المعرف غلط*'
send(msg.chat_id_, msg.id_,Text)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
if text == "رفع القيود" and Manager(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
if DevGOLDW(msg) then
database:srem(bot_id..'GBan:User',result.sender_user_id_)
database:srem(bot_id..'Ban:User'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Muted:User'..msg.chat_id_,result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم الغاء جميع القيود*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
else
database:srem(bot_id..'Ban:User'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Muted:User'..msg.chat_id_,result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷تم الغاء جميع القيود*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match('^كشف القيود @(.*)') and Manager(msg) and GetChannelMember(msg) then   
local username = text:match('^كشف القيود @(.*)') 
function start_function(extra, result, success)
if result.id_ then
if database:sismember(bot_id..'Muted:User'..msg.chat_id_,result.id_) then
Muted = 'مكتوم'
else
Muted = 'غير مكتوم'
end
if database:sismember(bot_id..'Ban:User'..msg.chat_id_,result.id_) then
Ban = 'محظور'
else
Ban = 'غير محظور'
end
if database:sismember(bot_id..'GBan:User',result.id_) then
GBan = 'محظور عام'
else
GBan = 'غير محظور عام'
end
Textt = " *߷الحظر العام » "..GBan.."*\n*߷الحظر » "..Ban.."*\n*߷الكتم » "..Muted.."*"
send(msg.chat_id_, msg.id_,Textt)
else
Text = ' *߷المعرف غلط*'
send(msg.chat_id_, msg.id_,Text)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end

if text == "كشف القيود" and Manager(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
if database:sismember(bot_id..'Muted:User'..msg.chat_id_,result.sender_user_id_) then
Muted = 'مكتوم'
else
Muted = 'غير مكتوم'
end
if database:sismember(bot_id..'Ban:User'..msg.chat_id_,result.sender_user_id_) then
Ban = 'محظور'
else
Ban = 'غير محظور'
end
if database:sismember(bot_id..'GBan:User',result.sender_user_id_) then
GBan = 'محظور عام'
else
GBan = 'غير محظور عام'
end
if database:sismember(bot_id..'Gmute:User',result.sender_user_id_) then
Gmute = 'محظور عام'
else
Gmute = 'غير محظور عام'
end
Textt = " *߷الحظر العام » "..GBan.."*\n*߷الكتم العام » "..Gmute.."*\n*߷الحظر » "..Ban.."*\n*߷الكتم » "..Muted.."*"
send(msg.chat_id_, msg.id_,Textt)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text == ("رفع مشرف") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *߷البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷ اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷ الايدي »* `'..result.sender_user_id_..'`\n*߷ تم رفعه مشرف* '
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=True&can_restrict_members=false&can_pin_messages=True&can_promote_members=false")
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع مشرف @(.*)$") and Constructor(msg) then
local username = text:match("^رفع مشرف @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *߷البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *߷ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
usertext = '\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷ تم رفعه مشرف* '
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=True&can_restrict_members=false&can_pin_messages=True&can_promote_members=false")
else
send(msg.chat_id_, msg.id_, ' *߷ لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text == ("تنزيل مشرف") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *߷البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷ اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷ الايدي »* `'..result.sender_user_id_..'`\n*߷ تم تنزيله ادمن من الجروب*'
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل مشرف @(.*)$") and Constructor(msg) then
local username = text:match("^تنزيل مشرف @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *߷البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," ߷ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end  
usertext = '\n *߷ اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷ تم تنزيله ادمن من الجروب*'
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
else
send(msg.chat_id_, msg.id_, '*߷لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end


if text == ("رفع ادمن بكل الصلاحيات") and msg.reply_to_message_id_ ~= 0 and BasicConstructor(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *߷البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷ اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷الايدي »* '..result.sender_user_id_..'\n*߷ تم رفعه مشرف بكل الصلاحيات*'
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True&can_manage_voice_chats=True")
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع ادمن بكل الصلاحيات @(.*)$") and BasicConstructor(msg) then
local username = text:match("^رفع ادمن بكل الصلاحيات @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *߷البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *߷ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
usertext = '\n *߷ اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷ تم رفعه مشرف بكل الصلاحيات*'
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True&can_manage_voice_chats=True")
else
send(msg.chat_id_, msg.id_, ' *߷ لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text == ("تنزيل ادمن بكل الصلاحيات") and msg.reply_to_message_id_ ~= 0 and BasicConstructor(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *߷البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *߷ اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
status  = '\n*߷ الايدي »* '..result.sender_user_id_..'\n*߷ تم تنزيله ادمن من الجروب بكل الصلاحيات*'
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false&can_manage_voice_chats=false")
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل ادمن بكل الصلاحيات @(.*)$") and BasicConstructor(msg) then
local username = text:match("^تنزيل ادمن بكل الصلاحيات @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *߷البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*߷عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
usertext = '\n *߷ اسم المستخدم » ['..result.title_..'](t.me/'..(username or 'BLACK_TEAM_4')..')'
status  = '\n*߷ تم تنزيله ادمن من الجروب بكل الصلاحيات*'
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false&can_manage_voice_chats=false")
else
send(msg.chat_id_, msg.id_, ' *߷ لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text == 'اعدادات الجروب' and Mod(msg) then
if database:get(bot_id..'lockpin'..msg.chat_id_) then
lock_pin = '✓'
else 
lock_pin = '✘'
end
if database:get(bot_id..'lock:tagservr'..msg.chat_id_) then
lock_tagservr = '✓'
else 
lock_tagservr = '✘'
end
if database:get(bot_id..'lock:text'..msg.chat_id_) then
lock_text = '✓'
else 
lock_text = '✘'
end
if database:get(bot_id.."lock:AddMempar"..msg.chat_id_) == 'kick' then
lock_add = '✓'
else 
lock_add = '✘'
end
if database:get(bot_id.."lock:Join"..msg.chat_id_) == 'kick' then
lock_join = '✓'
else 
lock_join = '✘'
end
if database:get(bot_id..'lock:edit'..msg.chat_id_) then
lock_edit = '✓'
else 
lock_edit = '✘'
end
print(welcome)
if database:get(bot_id..'Get:Welcome:Group'..msg.chat_id_) then
welcome = '✓'
else 
welcome = '✘'
end
if database:get(bot_id..'lock:edit'..msg.chat_id_) then
lock_edit_med = '✓'
else 
lock_edit_med = '✘'
end
if database:hget(bot_id.."flooding:settings:"..msg.chat_id_, "flood") == "kick" then 
flood = 'بالطرد' 
elseif database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "keed" then 
flood = 'بالتقيد' 
elseif database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "mute" then 
flood = 'بالكتم'   
elseif database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "del" then 
flood = 'بالمسح'   
else 
flood = '✘' 
end
if database:get(bot_id.."lock:Photo"..msg.chat_id_) == "del" then
lock_photo = '✓' 
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "ked" then 
lock_photo = 'بالتقيد'   
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "ktm" then 
lock_photo = 'بالكتم'
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "kick" then 
lock_photo = 'بالطرد'   
else
lock_photo = '✘'   
end
if database:get(bot_id.."lock:Contact"..msg.chat_id_) == "del" then
lock_phon = '✓' 
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "ked" then 
lock_phon = 'بالتقيد'
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "ktm" then 
lock_phon = 'بالكتم'
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "kick" then 
lock_phon = 'بالطرد'
else
lock_phon = '✘'
end
if database:get(bot_id.."lock:Link"..msg.chat_id_) == "del" then
lock_links = '✓'
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ked" then
lock_links = 'بالتقيد'
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ktm" then
lock_links = 'بالكتم'
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "kick" then
lock_links = 'بالطرد'
else
lock_links = '✘'
end
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "del" then
lock_cmds = '✓'
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ked" then
lock_cmds = 'بالتقيد'
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ktm" then
lock_cmds = 'بالكتم'   
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "kick" then
lock_cmds = 'بالطرد'
else
lock_cmds = '✘'
end
if database:get(bot_id.."lock:user:name"..msg.chat_id_) == "del" then
lock_user = '✓'
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ked" then
lock_user = 'بالتقيد'
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ktm" then
lock_user = 'بالكتم'
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "kick" then
lock_user = 'بالطرد'
else
lock_user = '✘'
end
if database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "del" then
lock_hash = '✓'
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ked" then 
lock_hash = 'بالتقيد'
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ktm" then 
lock_hash = 'بالكتم'
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "kick" then 
lock_hash = 'بالطرد'
else
lock_hash = '✘'
end
if database:get(bot_id.."lock:vico"..msg.chat_id_) == "del" then
lock_muse = '✓'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ked" then 
lock_muse = 'بالتقيد'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ktm" then 
lock_muse = 'بالكتم'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "kick" then 
lock_muse = 'بالطرد'
else
lock_muse = '✘'
end 
if database:get(bot_id.."lock:Video"..msg.chat_id_) == "del" then
lock_ved = '✓'
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "ked" then 
lock_ved = 'بالتقيد'
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "ktm" then 
lock_ved = 'بالكتم'
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "kick" then 
lock_ved = 'بالطرد'
else
lock_ved = '✘'
end
if database:get(bot_id.."lock:Animation"..msg.chat_id_) == "del" then
lock_gif = '✓'
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "ked" then 
lock_gif = 'بالتقيد'
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "ktm" then 
lock_gif = 'بالكتم'
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "kick" then 
lock_gif = 'بالطرد'
else
lock_gif = '✘'
end
if database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "del" then
lock_ste = '✓'
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "ked" then 
lock_ste = 'بالتقيد'
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "ktm" then 
lock_ste = 'بالكتم'
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "kick" then 
lock_ste = 'بالطرد'
else
lock_ste = '✘'
end
if database:get(bot_id.."lock:geam"..msg.chat_id_) == "del" then
lock_geam = '✓'
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "ked" then 
lock_geam = 'بالتقيد'
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "ktm" then 
lock_geam = 'بالكتم'
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "kick" then 
lock_geam = 'بالطرد'
else
lock_geam = '✘'
end
if database:get(bot_id.."lock:vico"..msg.chat_id_) == "del" then
lock_vico = '✓'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ked" then 
lock_vico = 'بالتقيد'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ktm" then 
lock_vico = 'بالكتم'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "kick" then 
lock_vico = 'بالطرد'
else
lock_vico = '✘'
end
if database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "del" then
lock_inlin = '✓'
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "ked" then 
lock_inlin = 'بالتقيد'
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "ktm" then 
lock_inlin = 'بالكتم'
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "kick" then 
lock_inlin = 'بالطرد'
else
lock_inlin = '✘'
end
if database:get(bot_id.."lock:forward"..msg.chat_id_) == "del" then
lock_fwd = '✓'
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "ked" then 
lock_fwd = 'بالتقيد'
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "ktm" then 
lock_fwd = 'بالكتم'
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "kick" then 
lock_fwd = 'بالطرد'
else
lock_fwd = '✘'
end
if database:get(bot_id.."lock:Document"..msg.chat_id_) == "del" then
lock_file = '✓'
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "ked" then 
lock_file = 'بالتقيد'
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "ktm" then 
lock_file = 'بالكتم'
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "kick" then 
lock_file = 'بالطرد'
else
lock_file = '✘'
end
if database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "del" then
lock_self = '✓'
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "ked" then 
lock_self = 'بالتقيد'
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "ktm" then 
lock_self = 'بالكتم'
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "kick" then 
lock_self = 'بالطرد'
else
lock_self = '✘'
end
if database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) == 'del' then
lock_bots = '✓'
elseif database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) == 'ked' then
lock_bots = 'بالتقيد'   
elseif database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) == 'kick' then
lock_bots = 'بالطرد'
else
lock_bots = '✘'
end
if database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "del" then
lock_mark = '✓'
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "ked" then 
lock_mark = 'بالتقيد'
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "ktm" then 
lock_mark = 'بالكتم'
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "kick" then 
lock_mark = 'بالطرد'
else
lock_mark = '✘'
end
if database:get(bot_id.."lock:Spam"..msg.chat_id_) == "del" then
lock_spam = '✓'
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "ked" then 
lock_spam = 'بالتقيد'
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "ktm" then 
lock_spam = 'بالكتم'
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "kick" then 
lock_spam = 'بالطرد'
else
lock_spam = '✘'
end
if not database:get(bot_id..'Reply:Manager'..msg.chat_id_) then
rdmder = '✓'
else
rdmder = '✘'
end
if not database:get(bot_id..'Reply:Sudo'..msg.chat_id_) then
rdsudo = '✓'
else
rdsudo = '✘'
end
if not database:get(bot_id..'Bot:Id'..msg.chat_id_)  then
idgp = '✓'
else
idgp = '✘'
end
if not database:get(bot_id..'Bot:Id:Photo'..msg.chat_id_) then
idph = '✓'
else
idph = '✘'
end
if not database:get(bot_id..'Lock:kick'..msg.chat_id_)  then
setadd = '✓'
else
setadd = '✘'
end
if not database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_)  then
banm = '✓'
else
banm = '✘'
end
if not database:get(bot_id..'Added:Me'..msg.chat_id_) then
addme = '✓'
else
addme = '✘'
end
if not database:get(bot_id..'Seh:User'..msg.chat_id_) then
sehuser = '✓'
else
sehuser = '✘'
end
if not database:get(bot_id..'Cick:Me'..msg.chat_id_) then
kickme = '✓'
else
kickme = '✘'
end
NUM_MSG_MAX = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 0
local text = 
'\n *߷اعدادات الجروب كتالي √↓*'..
'\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n*߷ علامة ال {✓} تعني معطل*'..
'\n*߷ علامة ال {✘} تعني مفعل*'..
'\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n*߷ الروابط »* { '..lock_links..
' }\n'..'*߷ المعرفات »* { '..lock_user..
' }\n'..'*߷ التاك »* { '..lock_hash..
' }\n'..'*߷ البوتات »* { '..lock_bots..
' }\n'..'*߷ التوجيه »* { '..lock_fwd..
' }\n'..'*߷ التثبيت »* { '..lock_pin..
' }\n'..'*߷ الاشعارات »* { '..lock_tagservr..
' }\n'..'*߷ الماركدون »* { '..lock_mark..
' }\n'..'*߷ التعديل »* { '..lock_edit..
' }\n'..'*߷ تعديل الميديا »* { '..lock_edit_med..
' }\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n'..'*߷ الكلايش »* { '..lock_spam..
' }\n'..'*߷ الكيبورد »* { '..lock_inlin..
' }\n'..'*߷ الاغاني »* { '..lock_vico..
' }\n'..'*߷ المتحركه »* { '..lock_gif..
' }\n'..'*߷ الملفات »* { '..lock_file..
' }\n'..'*߷ الدردشه »* { '..lock_text..
' }\n'..'*߷  الفيديو »* { '..lock_ved..
' }\n'..'*߷  الصور »* { '..lock_photo..
' }\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n'..'*߷  الصوت »* { '..lock_muse..
' }\n'..'*߷ الملصقات »* { '..lock_ste..
' }\n'..'*߷ الجهات »* { '..lock_phon..
' }\n'..'*߷ الدخول »* { '..lock_join..
' }\n'..'*߷ الاضافه »* { '..lock_add..
' }\n'..'*߷ السيلفي »* { '..lock_self..
' }\n'..'*߷ الالعاب »* { '..lock_geam..
' }\n'..'*߷ التكرار »* { '..flood..
' }\n'..'*߷ الترحيب »* { '..welcome..
' }\n'..'*߷ عدد التكرار »* { '..NUM_MSG_MAX..
' }\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n*߷ علامة ال {✓} تعني مفعل*'..
'\n*߷ علامة ال {✘} تعني معطل*'..
'\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n'..'*߷ امر صيح »* { '..kickme..
' }\n'..'*߷ امر اطردني »* { '..sehuser..
' }\n'..'*߷ امر مين ضافني »* { '..addme..
' }\n'..'*߷ ردود المدير »* { '..rdmder..
' }\n'..'*߷ ردود المطور »* { '..rdsudo..
' }\n'..'*߷ الايدي »* { '..idgp..
' }\n'..'*߷ الايدي بالصوره »* { '..idph..
' }\n'..'*߷ الرفع »* { '..setadd..
' }\n'..'*߷ الحظر »* { '..banm..' }\n\n┉  ┉  ┉  ┉ ┉  ┉  ┉  ┉  ┉  ┉\n *߷ CH » @BLACK_TEAM_4*\n'
send(msg.chat_id_, msg.id_,text) 
end
if text ==('تثبيت') and msg.reply_to_message_id_ ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:sismember(bot_id..'lock:pin',msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_," *߷عذرآ تم قفل التثبيت*")  
return false  
end
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.reply_to_message_id_,disable_notification_ = 1},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_," *߷تم تثبيت الرساله*")   
database:set(bot_id..'Pin:Id:Msg'..msg.chat_id_,msg.reply_to_message_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_," *߷انا لست ادمن هنا يرجى ترقيتي ادمن ثم اعد المحاوله*")  
elseif data.message_ == "CHAT_NOT_MODIFIED" then
send(msg.chat_id_,msg.id_," *߷لا توجد رساله مثبته*")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_," *߷ليست لدي صلاحية التثبيت يرجى التحقق من الصلاحيات*")  
end
end,nil) 
end
if text == 'الغاء التثبيت' and Mod(msg) and GetChannelMember(msg) then  
if database:sismember(bot_id..'lock:pin',msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_," *߷عذرآ تم قفل الثبيت*")  
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100','')},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_," *߷تم الغاء تثبيت الرساله*")   
database:del(bot_id..'Pin:Id:Msg'..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_," *߷انا لست ادمن هنا يرجى ترقيتي ادمن ثم اعد المحاوله*")  
elseif data.message_ == "CHAT_NOT_MODIFIED" then
send(msg.chat_id_,msg.id_," *߷لا توجد رساله مثبته*")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_," *߷ليست لدي صلاحية التثبيت يرجى التحقق من الصلاحيات*")  
end
end,nil)
end
if text == 'الغاء تثبيت الكل' and Mod(msg) and GetChannelMember(msg) then  
if database:sismember(bot_id..'lock:pin',msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_," *߷عذرآ تم قفل الثبيت*")  
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100','')},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"*߷تم الغاء تثبيت الكل*")   
https.request('https://api.telegram.org/bot'..token..'/unpinAllChatMessages?chat_id='..msg.chat_id_)
database:del(bot_id..'Pin:Id:Msg'..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_," *߷انا لست ادمن هنا يرجى ترقيتي ادمن ثم اعد المحاوله*")  
elseif data.message_ == "CHAT_NOT_MODIFIED" then
send(msg.chat_id_,msg.id_," *߷لا توجد رساله مثبته*")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_," *߷ليست لدي صلاحية التثبيت يرجى التحقق من الصلاحيات*")  
end
end,nil)
end
if text and text:match('^ضع تكرار (%d+)$') and Mod(msg) then   
local Num = text:match('ضع تكرار (.*)')
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"floodmax" ,Num) 
send(msg.chat_id_, msg.id_,' *߷تم وضع عدد التكرار* ('..Num..')')  
end 
if text and text:match('^ضع زمن التكرار (%d+)$') and Mod(msg) then   
local Num = text:match('^ضع زمن التكرار (%d+)$')
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"floodtime" ,Num) 
send(msg.chat_id_, msg.id_,' *߷تم وضع زمن التكرار* ('..Num..')') 
end
if text == "ضع رابط" or text == 'وضع رابط' and GetChannelMember(msg) then  
if msg.reply_to_message_id_ == 0  and Mod(msg) then  
send(msg.chat_id_,msg.id_," *߷حسنآ ارسل اليه الرابط الان*")
database:setex(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_,120,true) 
return false
end
end
if text == "تفعيل رابط" or text == 'تفعيل الرابط' then
if Mod(msg) then  
database:set(bot_id.."Link_Group:status"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_," *߷تم تفعيل الرابط*") 
return false  
end
end
if text == "تعطيل رابط" or text == 'تعطيل الرابط' then
if Mod(msg) then  
database:del(bot_id.."Link_Group:status"..msg.chat_id_) 
send(msg.chat_id_, msg.id_," *߷تم تعطيل الرابط*") 
return false end
end
if text == "تفعيل صورتي" or text == 'تفعيل الصوره' then
if Constructor(msg) then  
database:set(bot_id.."my_photo:status"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_," *߷تم تفعيل الصوره*") 
return false  
end
end
if text == "تعطيل الصوره" or text == 'تعطيل صورتي' then
if Constructor(msg) then  
database:del(bot_id.."my_photo:status"..msg.chat_id_) 
send(msg.chat_id_, msg.id_," *߷تم تعطيل الصوره*") 
return false end
end
if text == "الرابط" then 
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,ta) 
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_)) or database:get(bot_id.."Private:Group:Link"..msg.chat_id_) 
if linkgpp.ok == true then 
local Teext = ''..ta.title_..'\n'..linkgpp.result 
local inline = {
{{text = ta.title_, url=linkgpp.result}},
} 
send_inline_key(msg.chat_id_,Teext,nil,inline,msg.id_/2097152/0.5) 
else 
send(msg.chat_id_, msg.id_,'لا يوجد رابط ارسل ضع رابط') 
end 
end,nil) 
end
if text == 'مسح الرابط' or text == 'حذف الرابط' and GetChannelMember(msg) then  
if Mod(msg) then 
send(msg.chat_id_,msg.id_," *߷تم مسح الرابط*")   
database:del(bot_id.."Private:Group:Link"..msg.chat_id_) 
return false  
end
end
if text and text:match("^ضع صوره") and Mod(msg) and msg.reply_to_message_id_ == 0 then  
database:set(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_,true) 
send(msg.chat_id_, msg.id_,' *߷ارسل لي الصوره*') 
return false
end
if text == "حذف الصوره" or text == "مسح الصوره" and GetChannelMember(msg) then   
if Mod(msg) then
https.request('https://api.telegram.org/bot'..token..'/deleteChatPhoto?chat_id='..msg.chat_id_) 
send(msg.chat_id_, msg.id_,' *߷تم ازالة صورة الجروب*') 
end
return false  
end
if text == 'ضع وصف' or text == 'وضع وصف' then  
if Mod(msg) then
database:setex(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_,' *߷ارسل الان الوصف*')
end
return false  
end
if text == 'ضع ترحيب' or text == 'وضع ترحيب' then  
if Mod(msg) then
database:setex(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
t  = ' *߷ارسل لي الترحيب الان*'
tt = '\n*߷تستطيع اضافة مايلي !*\n*߷دالة عرض الاسم »*{`name`}\n*߷دالة عرض المعرف »*{`user`}'
send(msg.chat_id_, msg.id_,t..tt) 
end
return false  
end
if text == 'الترحيب' and Mod(msg) then 
local GetWelcomeGroup = database:get(bot_id..'Get:Welcome:Group'..msg.chat_id_)  
if GetWelcomeGroup then 
GetWelcome = GetWelcomeGroup
else 
GetWelcome = ' *߷لم يتم تعيين ترحيب للجروب*'
end 
send(msg.chat_id_, msg.id_,'['..GetWelcome..']') 
return false  
end
if text == 'تفعيل التحقق' and Manager(msg) then   
if database:get(bot_id.."Chek:Welcome"..msg.chat_id_) then
database:del(bot_id.."Chek:Welcome"..msg.chat_id_)
end
if not database:get(bot_id..'CAPTCHA'..msg.chat_id_) then
database:set(bot_id.."CAPTCHA"..msg.chat_id_,true) 
Text = ' *߷تم تفعيل التحقق عند دخول الاعضاء*'
else
Text = ' *߷بالتاكيد تم تفعيل التحقق*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل التحقق' and Manager(msg) then  
if not database:get(bot_id..'CAPTCHA'..msg.chat_id_) then
Text = '\n *߷بالتاكيد تم تعطيل التحقق*'
else
database:del(bot_id.."CAPTCHA"..msg.chat_id_) 
Text = '\n *߷تم تعطيل التحقق عند دخول الاعضاء*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الترحيب' and Mod(msg) and GetChannelMember(msg) then  
database:set(bot_id..'Chek:Welcome'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,' *߷تم تفعيل ترحيب الجروب*') 
return false  
end
if text == 'تعطيل الترحيب' and Mod(msg) and GetChannelMember(msg) then  
database:del(bot_id..'Chek:Welcome'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,' *߷تم تعطيل ترحيب الجروب*') 
return false  
end
if text == 'مسح الترحيب' or text == 'حذف الترحيب' then 
if Mod(msg) then
database:del(bot_id..'Get:Welcome:Group'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,' *߷تم ازالة ترحيب الجروب*') 
end
end
if text and text == "منع" and msg.reply_to_message_id_ == 0 and Manager(msg)  then       
send(msg.chat_id_, msg.id_," *߷ارسل الكلمه لمنعها*")  
database:set(bot_id.."GOLD1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"rep")  
return false  
end    
if text then   
local tsssst = database:get(bot_id.."GOLD1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if tsssst == "rep" then   
send(msg.chat_id_, msg.id_," *߷ارسل التحذير عند ارسال الكلمه*")  
database:set(bot_id.."GOLD1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"repp")  
database:set(bot_id.."GOLD1:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_, text)  
database:sadd(bot_id.."GOLD1:List:Filter"..msg.chat_id_,text)  
return false  end  
end
if text then  
local test = database:get(bot_id.."GOLD1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test == "repp" then  
send(msg.chat_id_, msg.id_," *߷تم منع الكلمه مع التحذير*")  
database:del(bot_id.."GOLD1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
local test = database:get(bot_id.."GOLD1:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
if text then   
database:set(bot_id.."GOLD1:Add:Filter:Rp2"..test..msg.chat_id_, text)  
end  
database:del(bot_id.."GOLD1:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
return false  end  
end

if text == "الغاء منع" and msg.reply_to_message_id_ == 0 and Manager(msg) then    
send(msg.chat_id_, msg.id_," *߷ارسل الكلمه الان*")  
database:set(bot_id.."GOLD1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"reppp")  
return false  end
if text then 
local test = database:get(bot_id.."GOLD1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test and test == "reppp" then   
send(msg.chat_id_, msg.id_," *߷تم الغاء منعها*")  
database:del(bot_id.."GOLD1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."GOLD1:Add:Filter:Rp2"..text..msg.chat_id_)  
database:srem(bot_id.."GOLD1:List:Filter"..msg.chat_id_,text)  
return false  end  
end


if text == 'منع' and tonumber(msg.reply_to_message_id_) > 0 and Manager(msg) then     
function cb(a,b,c) 
textt = ' *߷تم منع* '
if b.content_.ID == 'MessageSticker' then    
local idsticker = b.content_.sticker_.sticker_.persistent_id_
database:sadd(bot_id.."filtersteckr"..msg.chat_id_,idsticker)
text = 'الملصق'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح لن يتم ارسالها مجددا*')  
return false
end
if b.content_.ID == "MessagePhoto" then
local photo = b.content_.photo_.sizes_[1].photo_.persistent_id_
database:sadd(bot_id.."filterphoto"..msg.chat_id_,photo)
text = 'الصوره'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح لن يتم ارسالها مجددا*')  
return false
end
if b.content_.animation_.animation_ then
local idanimation = b.content_.animation_.animation_.persistent_id_
database:sadd(bot_id.."filteranimation"..msg.chat_id_,idanimation)
text = 'المتحركه'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح لن يتم ارسالها مجددا*')  
return false
end
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, cb, nil)
end
if text == 'الغاء منع' and tonumber(msg.reply_to_message_id_) > 0 and Manager(msg) then     
function cb(a,b,c) 
textt = ' *߷تم الغاء منع* '
if b.content_.sticker_ then
local idsticker = b.content_.sticker_.sticker_.persistent_id_
database:srem(bot_id.."filtersteckr"..msg.chat_id_,idsticker)
text = 'الملصق'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح يمكنهم الارسال الان*')  
return false
end
if b.content_.ID == "MessagePhoto" then
local photo = b.content_.photo_.sizes_[1].photo_.persistent_id_
database:srem(bot_id.."filterphoto"..msg.chat_id_,photo)
text = 'الصوره'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح يمكنهم الارسال الان*')  
return false
end
if b.content_.animation_.animation_ then
local idanimation = b.content_.animation_.animation_.persistent_id_
database:srem(bot_id.."filteranimation"..msg.chat_id_,idanimation)
text = 'المتحركه'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح يمكنهم الارسال الان*')  
return false
end
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, cb, nil)
end
if text == "مسح قائمه المنع"and Manager(msg) then   
local list = database:smembers(bot_id.."GOLD1:List:Filter"..msg.chat_id_)  
for k,v in pairs(list) do  
database:del(bot_id.."GOLD1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."GOLD1:Add:Filter:Rp2"..v..msg.chat_id_)  
database:srem(bot_id.."GOLD1:List:Filter"..msg.chat_id_,v)  
end  
send(msg.chat_id_, msg.id_," *߷تم مسح قائمه المنع*")  
end
if text == "قائمه المنع" and Manager(msg) then   
tdcli_function ({ID = "GetUser",user_id_ = bot_id},function(arg,data) 
local Text = "\n *߷قائمة المنع* \n*ٴ— — — — — — — — — — — — — —*\n"
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'صور', url="https://t.me/"..data.username_.."?start=ph"..msg.chat_id_},{text = 'كلمات', url="https://t.me/"..data.username_.."?start=msg"..msg.chat_id_}},
{{text = 'متحركات', url="https://t.me/"..data.username_.."?start=gif"..msg.chat_id_},{text = 'ملصقات', url="https://t.me/"..data.username_.."?start=Sti"..msg.chat_id_}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)
end
if text == 'مسح قائمه منع المتحركات' and Manager(msg) then     
database:del(bot_id.."filteranimation"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *߷تم مسح قائمه منع المتحركات*')  
end
if text == 'مسح قائمه منع الصور' and Manager(msg) then     
database:del(bot_id.."filterphoto"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *߷تم مسح قائمه منع الصور*')  
end
if text == 'مسح قائمه منع الملصقات' and Manager(msg) then     
database:del(bot_id.."filtersteckr"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *߷تم مسح قائمه منع الملصقات*')  
end
------------------

if text == 'مسح كليشه المطور' and DevGOLDW(msg) then
database:del(bot_id..'TEXT_SUDO')
send(msg.chat_id_, msg.id_,' *߷تم مسح كليشه المطور*')
end
if text == 'ضع كليشه المطور' and DevGOLDW(msg) then
database:set(bot_id..'Set:TEXT_SUDO'..msg.chat_id_..':'..msg.sender_user_id_,true)
send(msg.chat_id_,msg.id_,' *߷ارسل الكليشه الان*')
return false
end
if text and database:get(bot_id..'Set:TEXT_SUDO'..msg.chat_id_..':'..msg.sender_user_id_) then
if text == 'الغاء' then 
database:del(bot_id..'Set:TEXT_SUDO'..msg.chat_id_..':'..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,' *߷تم الغاء حفظ كليشة المطور*')
return false
end
database:set(bot_id..'TEXT_SUDO',text)
database:del(bot_id..'Set:TEXT_SUDO'..msg.chat_id_..':'..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,' *߷تم حفظ كليشة المطور*')
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تعين الايدي' and Manager(msg) and GetChannelMember(msg) then  
database:setex(bot_id.."CHENG:ID"..msg.chat_id_..""..msg.sender_user_id_,240,true)  
local Text= [[
 *߷ارسل الان النص*
*߷يمكنك اضافه :*
 *߷#rdphoto ↫ تعليق الصوره*
 *߷#username ↫ اسم* 
 *߷#msgs ↫ عدد رسائل* 
 *߷#photos ↫ عدد صور* 
 *߷#bio ↫ البايو* 
  *߷#custom ↫ اللقب* 
 *߷#id ↫ ايدي* 
 *߷#auto ↫ تفاعل* 
 *߷#stast ↫ موقع*  
 *߷#edit ↫ السحكات*
 *߷#game ↫ النقاط*
]]
send(msg.chat_id_, msg.id_,Text)
return false  
end 
if text == 'حذف الايدي' or text == 'مسح الايدي' and GetChannelMember(msg) then  
if Manager(msg) then
database:del(bot_id.."KLISH:ID"..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *߷تم ازالة كليشة الايدي*')
end
return false  
end 

if database:get(bot_id.."CHENG:ID"..msg.chat_id_..""..msg.sender_user_id_) then 
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_," *߷تم الغاء تعين الايدي*") 
database:del(bot_id.."CHENG:ID"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."CHENG:ID"..msg.chat_id_..""..msg.sender_user_id_) 
local CHENGER_ID = text:match("(.*)")  
database:set(bot_id.."KLISH:ID"..msg.chat_id_,CHENGER_ID)
send(msg.chat_id_, msg.id_,' *߷تم تعين الايدي*')
end

if text == 'طرد البوتات' and Mod(msg) and GetChannelMember(msg) then  
tdcli_function ({ ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah)  
local admins = tah.members_  
local x = 0
local c = 0
for i=0 , #admins do 
if tah.members_[i].status_.ID == "ChatMemberStatusEditor" then  
x = x + 1 
end
if tonumber(admins[i].user_id_) ~= tonumber(bot_id) then
chat_kick(msg.chat_id_,admins[i].user_id_)
end
c = c + 1
end 
if (c - x) == 0 then
send(msg.chat_id_, msg.id_, " *߷لا توجد بوتات في الجروب*")
else
local t = ' *߷عدد البوتات هنا >> {'..c..'}*\n*߷عدد البوتات التي هي ادمن >> {'..x..'}*\n*߷تم طرد >> {'..(c - x)..'} من البوتات*'
send(msg.chat_id_, msg.id_,t) 
end 
end,nil)  
end   
end
if text == ("كشف البوتات") and Mod(msg) then  
tdcli_function ({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(extra,result,success)
local admins = result.members_  
text = "\n *߷قائمة البوتات الموجوده* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
local n = 0
local t = 0
for i=0 , #admins do 
n = (n + 1)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_
},function(arg,ta) 
if result.members_[i].status_.ID == "ChatMemberStatusMember" then  
tr = ''
elseif result.members_[i].status_.ID == "ChatMemberStatusEditor" then  
t = t + 1
tr = ' {★}'
end
text = text..">> [@"..ta.username_..']'..tr.."\n"
if #admins == 0 then
send(msg.chat_id_, msg.id_, " *߷لا توجد بوتات في الجروب*")
return false 
end
if #admins == i then 
local a = '\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n*߷عدد البوتات التي هنا >> {'..n..'} بوت*\n'
local f = '*߷عدد البوتات التي هي ادمن >> {'..t..'}*\n*߷ملاحضه علامة ال (✯) تعني ان البوت ادمن* \n'
send(msg.chat_id_, msg.id_, text..a..f)
end
end,nil)
end
end,nil)
end

if database:get(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_, " *߷تم الغاء حفظ القوانين*") 
database:del(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
return false  
end 
database:set(bot_id.."Set:Rules:Group" .. msg.chat_id_,text) 
send(msg.chat_id_, msg.id_," *߷تم حفظ قوانين الجروب*") 
database:del(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
end  

if text == 'ضع قوانين' or text == 'وضع قوانين' and GetChannelMember(msg) then   
if Mod(msg) then
database:setex(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_,msg.id_," *߷ارسل لي القوانين الان*")  
end
end
if text == 'مسح القوانين' or text == 'حذف القوانين' then  
if Mod(msg) then
send(msg.chat_id_, msg.id_," *߷تم ازالة قوانين الجروب*")  
database:del(bot_id.."Set:Rules:Group"..msg.chat_id_) 
end
end
if text == 'القوانين' then 
local Set_Rules = database:get(bot_id.."Set:Rules:Group" .. msg.chat_id_)   
if Set_Rules then 
send(msg.chat_id_,msg.id_, Set_Rules)   
else  
send(msg.chat_id_, msg.id_," *߷لا توجد قوانين*")   
end
end
if text == 'قفل التفليش' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id..'lock:tagrvrbot'..msg.chat_id_,true)   
list ={"lock:Bot:kick","lock:user:name","lock:Link","lock:forward","lock:Sticker","lock:Animation","lock:Video","lock:Fshar","lock:Fars","Bot:Id:Photo","lock:Audio","lock:vico","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..lock..msg.chat_id_,'del')
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم قفـل التفليش* ')  
end,nil)   
end
if text == 'فتح التفليش' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id..'lock:tagrvrbot'..msg.chat_id_)   
list ={"lock:Bot:kick","lock:user:name","lock:Link","lock:forward","lock:Sticker","lock:Animation","lock:Video","lock:Fshar","lock:Fars","Bot:Id:Photo","lock:Audio","lock:vico","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..lock..msg.chat_id_)
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *߷بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'BLACK_TEAM_4')..') \n*߷تـم فـتح التفليش* ')  
end,nil)   
end
if text == 'طرد المحذوفين' or text == 'مسح المحذوفين' then  
if Mod(msg) then
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),offset_ = 0,limit_ = 1000}, function(arg,del)
for k, v in pairs(del.members_) do
tdcli_function({ID = "GetUser",user_id_ = v.user_id_},function(b,data) 
if data.first_name_ == false then
Group_Kick(msg.chat_id_, data.id_)
end
end,nil)
end
send(msg.chat_id_, msg.id_,' *߷تم طرد المحذوفين*')
end,nil)
end
end
if text == 'الصلاحيات' and Mod(msg) then 
local list = database:smembers(bot_id..'Coomds'..msg.chat_id_)
if #list == 0 then
send(msg.chat_id_, msg.id_,' *߷لا توجد صلاحيات مضافه*')
return false
end
t = "\n *߷قائمة الصلاحيات المضافه* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
var = database:get(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
if var then
t = t..''..k..'- '..v..' » ('..var..')\n'
else
t = t..''..k..'- '..v..'\n'
end
end
send(msg.chat_id_, msg.id_,t)
end
if text and text:match("^اضف صلاحيه (.*)$") and Mod(msg) then 
ComdNew = text:match("^اضف صلاحيه (.*)$")
database:set(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew)  
database:sadd(bot_id.."Coomds"..msg.chat_id_,ComdNew)  
database:setex(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true)  
send(msg.chat_id_, msg.id_, " *߷ارسل نوع الرتبه* \n*߷{عـضـو -- ممـيـز -- ادمـن -- مـديـر}*") 
end
if text and text:match("^مسح صلاحيه (.*)$") and Mod(msg) then 
ComdNew = text:match("^مسح صلاحيه (.*)$")
database:del(bot_id.."Comd:New:rt:bot:"..ComdNew..msg.chat_id_)
send(msg.chat_id_, msg.id_, " *߷تم مسح الصلاحيه* \n") 
end
if database:get(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_," *߷تم الغاء الامر* \n") 
database:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
if text == 'مدير' then
if not Constructor(msg) then
send(msg.chat_id_, msg.id_" *߷تستطيع اضافه صلاحيات {ادمن - مميز - عضو}* \n*߷ارسل الصلاحيه مجددا*\n") 
return false
end
end
if text == 'ادمن' then
if not Manager(msg) then 
send(msg.chat_id_, msg.id_," *߷تستطيع اضافه صلاحيات {مميز - عضو}* \n*߷ارسل الصلاحيه مجددا*\n") 
return false
end
end
if text == 'مميز' then
if not Mod(msg) then
send(msg.chat_id_, msg.id_," *߷ تستطيع اضافه صلاحيات {عضو}* \n*߷ارسل الصلاحيه مجددا*\n") 
return false
end
end
if text == 'مدير' or text == 'ادمن' or text == 'مميز' or text == 'عضو' then
local textn = database:get(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_)  
database:set(bot_id.."Comd:New:rt:bot:"..textn..msg.chat_id_,text)
send(msg.chat_id_, msg.id_, " *߷تـم اضـافـه الامـر*") 
database:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
end
if text and text:match('رفع (.*)') and tonumber(msg.reply_to_message_id_) > 0 and Mod(msg) then   
local RTPA = text:match('رفع (.*)')
if database:sismember(bot_id..'Coomds'..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local blakrt = database:get(bot_id.."Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if blakrt == 'مميز' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'..'\n*߷تم رفعه '..RTPA..'*\n')   
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_,RTPA) 
database:sadd(bot_id..'Special:User'..msg.chat_id_,result.sender_user_id_)  
elseif blakrt == 'ادمن' and Manager(msg) then 
send(msg.chat_id_, msg.id_,'\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'..'\n*߷تم رفعه '..RTPA..'*\n')   
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_,RTPA)
database:sadd(bot_id..'Mod:User'..msg.chat_id_,result.sender_user_id_)  
elseif blakrt == 'مدير' and Constructor(msg) then
send(msg.chat_id_, msg.id_,'\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'..'\n*߷تم رفعه '..RTPA..'*\n')   
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_,RTPA)  
database:sadd(bot_id..'Manager'..msg.chat_id_,result.sender_user_id_)  
elseif blakrt == 'عضو' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'..'\n*߷تم رفعه '..RTPA..'*\n')   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match('تنزيل (.*)') and tonumber(msg.reply_to_message_id_) > 0 and Mod(msg) then   
local RTPA = text:match('تنزيل (.*)')
if database:sismember(bot_id..'Coomds'..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local blakrt = database:get(bot_id.."Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if blakrt == 'مميز' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'..'\n*߷م تنزيله من '..RTPA..'*\n')   
database:srem(bot_id..'Special:User'..msg.chat_id_,result.sender_user_id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_)
elseif blakrt == 'ادمن' and Manager(msg) then 
send(msg.chat_id_, msg.id_,'\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'..'\n*߷تم تنزيله من '..RTPA..'*\n')   
database:srem(bot_id..'Mod:User'..msg.chat_id_,result.sender_user_id_) 
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_)
elseif blakrt == 'مدير' and Constructor(msg) then
send(msg.chat_id_, msg.id_,'\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'..'\n*߷ تم تنزيله من '..RTPA..'*\n')   
database:srem(bot_id..'Manager'..msg.chat_id_,result.sender_user_id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_)
elseif blakrt == 'عضو' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *߷اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'..'\n*߷تم تنزيله من '..RTPA..'*\n')   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match('^رفع (.*) @(.*)') and Mod(msg) then   
local text1 = {string.match(text, "^(رفع) (.*) @(.*)$")}
if database:sismember(bot_id..'Coomds'..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local blakrt = database:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if blakrt == 'مميز' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'BLACK_TEAM_4')..')'..'\n*߷تم رفعه '..text1[2]..'*')   
database:sadd(bot_id..'Special:User'..msg.chat_id_,result.id_)  
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_,text1[2])
elseif blakrt == 'ادمن' and Manager(msg) then 
send(msg.chat_id_, msg.id_,'\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'BLACK_TEAM_4')..')'..'\n*߷تم رفعه '..text1[2]..'*')   
database:sadd(bot_id..'Mod:User'..msg.chat_id_,result.id_)  
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_,text1[2])
elseif blakrt == 'مدير' and Constructor(msg) then
send(msg.chat_id_, msg.id_,'\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'BLACK_TEAM_4')..')'..'\n*߷تم رفعه '..text1[2]..'*')   
database:sadd(bot_id..'Manager'..msg.chat_id_,result.id_)  
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_,text1[2])
elseif blakrt == 'عضو' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'BLACK_TEAM_4')..')'..'\n*߷تم رفعه '..text1[2]..'*')   
end
else
info = ' *߷المعرف غلط*'
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end 
end
if text and text:match('^تنزيل (.*) @(.*)') and Mod(msg) then    
local text1 = {string.match(text, "^(تنزيل) (.*) @(.*)$")}
if database:sismember(bot_id..'Coomds'..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local blakrt = database:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if blakrt == 'مميز' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'BLACK_TEAM_4')..')'..'\n*߷تم تنريله من '..text1[2]..'*')   
database:srem(bot_id..'Special:User'..msg.chat_id_,result.id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_)
elseif blakrt == 'ادمن' and Manager(msg) then 
send(msg.chat_id_, msg.id_,'\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'BLACK_TEAM_4')..')'..'\n*߷تم تنريله من '..text1[2]..'*')   
database:srem(bot_id..'Mod:User'..msg.chat_id_,result.id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_)
elseif blakrt == 'مدير' and Constructor(msg) then
send(msg.chat_id_, msg.id_,'\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'BLACK_TEAM_4')..')'..'\n*߷تم تنريله من '..text1[2]..'*')   
database:srem(bot_id..'Manager'..msg.chat_id_,result.id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_)
elseif blakrt == 'عضو' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *߷اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'BLACK_TEAM_4')..')'..'\n*߷تم تنريله من '..text1[2]..'*')   
end
else
info = ' *߷المعرف غلط*'
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end  
end
if text == "مسح رسايلي" or text == "مسح رسائلي" or text == "حذف رسايلي" or text == "حذف رسائلي" then  
send(msg.chat_id_, msg.id_,' *߷تم مسح رسائلك*'  )  
database:del(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) 
end
if text == 'تفعيل الاذاعه' and DevGOLDW(msg) then  
if database:get(bot_id..'Bc:Bots') then
database:del(bot_id..'Bc:Bots') 
Text = '\n *߷تم تفعيل الاذاعه*' 
else
Text = '\n *߷بالتاكيد تم تفعيل الاذاعه*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الاذاعه' and DevGOLDW(msg) then  
if not database:get(bot_id..'Bc:Bots') then
database:set(bot_id..'Bc:Bots',true) 
Text = '\n *߷تم تعطيل الاذاعه*' 
else
Text = '\n *߷ بالتاكيد تم تعطيل الاذاعه*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل التواصل' and DevGOLDW(msg) then  
if database:get(bot_id..'Tuasl:Bots') then
database:del(bot_id..'Tuasl:Bots') 
Text = '\n *߷تم تفعيل التواصل*' 
else
Text = '\n *߷بالتاكيد تم تفعيل التواصل*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل التواصل' and DevGOLDW(msg) then  
if not database:get(bot_id..'Tuasl:Bots') then
database:set(bot_id..'Tuasl:Bots',true) 
Text = '\n *߷تم تعطيل التواصل*' 
else
Text = '\n *߷بالتاكيد تم تعطيل التواصل*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل البوت الخدمي' and DevGOLDW(msg) then   
if database:get(bot_id..'Free:Bots') then
database:del(bot_id..'Free:Bots') 
Text = '\n *߷تم تفعيل البوت الخدمي*' 
else
Text = '\n *߷بالتاكيد تم تفعيل البوت الخدمي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل البوت الخدمي' and DevGOLDW(msg) then   
if not database:get(bot_id..'Free:Bots') then
database:set(bot_id..'Free:Bots',true) 
Text = '\n *߷تم تعطيل البوت الخدمي*' 
else
Text = '\n *߷بالتاكيد تم تعطيل البوت الخدمي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match('^مسح (%d+)$') and Manager(msg) and GetChannelMember(msg) then   
if not database:get(bot_id..'VVVZVV:Delete:Time'..msg.chat_id_..':'..msg.sender_user_id_) then   
local num = tonumber(text:match('^مسح (%d+)$')) 
if num > 1000 then 
send(msg.chat_id_, msg.id_,'*߷تستطيع المسح 1000 رساله كحد اقصى*') 
return false  
end  
local msgm = msg.id_
for i=1,tonumber(num) do
DeleteMessage(msg.chat_id_, {[0] = msgm})
msgm = msgm - 1048576
end
send(msg.chat_id_,msg.id_,'*߷تم حذف {'..num..'}*')  
database:setex(bot_id..'VVVZVV:Delete:Time'..msg.chat_id_..':'..msg.sender_user_id_,300,true)
end
end
if text == "تنظيف الميديا" and BasicConstructor(msg) then
msgm = {[0]=msg.id_}
local Message = msg.id_
for i=1,200 do
Message = Message - 1048576
msgm[i] = Message
end
tdcli_function({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = msgm},function(arg,data)
new = 0
msgm2 = {}
for i=0 ,data.total_count_ do
if data.messages_[i] and data.messages_[i].content_ and data.messages_[i].content_.ID ~= "MessageText" then
msgm2[new] = data.messages_[i].id_
new = new + 1
end
end
DeleteMessage(msg.chat_id_,msgm2)
end,nil)  
send(msg.chat_id_, msg.id_,"*تم تنظيف الميديا 𖢄*")
end
if text == "تنظيف التعديل" and Manager(msg) then
Msgs = {[0]=msg.id_}
local Message = msg.id_
for i=1,100 do
Message = Message - 1048576
Msgs[i] = Message
end
tdcli_function({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data)
new = 0
Msgs2 = {}
for i=0 ,data.total_count_ do
if data.messages_[i] and (not data.messages_[i].edit_date_ or data.messages_[i].edit_date_ ~= 0) then
Msgs2[new] = data.messages_[i].id_
new = new + 1
end
end
DeleteMessage(msg.chat_id_,Msgs2)
end,nil)  
send(msg.chat_id_, msg.id_,'*߷تم تنظيف جميع الرسائل المعدله*')
end
if text == "تغير اسم البوت" or text == "تغيير اسم البوت" then 
if DevGOLDW(msg) then
database:setex(bot_id..'Set:Name:Bot'..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_," *߷ارسل لي الاسم الان* ")  
end
return false
end

if text == ""..(database:get(bot_id..'Name:Bot') or 'بلاك').."" then  
Namebot = (database:get(bot_id..'Name:Bot') or 'بلاك')
local GOLD_Msg = {
'عمغي 🥺💕.',
'هاا شتريد كافي ☹️.',
'مشايف بوت شني 😂.',
'كول حبيبي ؟ اني '..Namebot..'',
'مشغول حالياً',
'عمري فداك '..Namebot..' كول حب'
}
send(msg.chat_id_, msg.id_,'['..GOLD_Msg[math.random(#GOLD_Msg)]..']') 
return false
end
if text=="اذاعه خاص" and msg.reply_to_message_id_ == 0 and Sudo(msg) then 
if database:get(bot_id..'Bc:Bots') and not DevGOLDW(msg) then 
send(msg.chat_id_, msg.id_,' *߷الاذاعه معطله من قبل المطور الاساسي*')
return false
end
database:setex(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *߷ارسل الان اذاعتك* \n*߷للخروج ارسل الغاء*") 
return false
end 
if text=="اذاعه" and msg.reply_to_message_id_ == 0 and Sudo(msg) then 
if database:get(bot_id..'Bc:Bots') and not DevGOLDW(msg) then 
send(msg.chat_id_, msg.id_,' *߷الاذاعه معطله من قبل المطور الاساسي*')
return false
end
database:setex(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *߷ارسل الان اذاعتك* \n*߷للخروج ارسل الغاء* ") 
return false
end  
if text=="اذاعه بالتوجيه" and msg.reply_to_message_id_ == 0  and Sudo(msg) then 
if database:get(bot_id..'Bc:Bots') and not DevGOLDW(msg) then 
send(msg.chat_id_, msg.id_,' *߷الاذاعه معطله من قبل المطور الاساسي*')
return false
end
database:setex(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *߷ارسل لي التوجيه الان*") 
return false
end 
if text=="اذاعه بالتوجيه خاص" and msg.reply_to_message_id_ == 0  and Sudo(msg) then 
if database:get(bot_id..'Bc:Bots') and not DevGOLDW(msg) then 
send(msg.chat_id_, msg.id_,' *߷ الاذاعه معطله من قبل المطور الاساسي*')
return false
end
database:setex(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *߷ارسل لي التوجيه الان*") 
return false
end 
if text and text:match('^ضع اسم (.*)') and Manager(msg) or text and text:match('^وضع اسم (.*)') and Manager(msg) then 
local Name = text:match('^ضع اسم (.*)') or text and text:match('^وضع اسم (.*)') 
tdcli_function ({ ID = "ChangeChatTitle",chat_id_ = msg.chat_id_,title_ = Name },function(arg,data) 
if data.message_ == "Channel chat title can be changed by administrators only" then
send(msg.chat_id_,msg.id_," *߷البوت ليس ادمن يرجى ترقيتي !*")  
return false  
end 
if data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_," *߷ليست لدي صلاحية تغير اسم الجروب*")  
else
send(msg.chat_id_,msg.id_,' *߷تم تغيير اسم الجروب الى* {['..Name..']}')  
end
end,nil) 
end
if text == "تاك للكل" and Mod(msg) and GetChannelMember(msg) then   
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = 200},function(ta,GOLD)
local t = "\n*ツ قائمة الاعضاء* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
x = 0
local list = GOLD.members_
for k, v in pairs(list) do
x = x + 1
if database:get(bot_id..'user:Name'..v.user_id_) then
t = t..""..x.." → {[@"..database:get(bot_id..'user:Name'..v.user_id_).."]}\n"
else
t = t..""..x.." → {"..v.user_id_.."}\n"
end
end
send(msg.chat_id_,msg.id_,t)
end,nil)
end
if text == ("تنزيل الكل") and msg.reply_to_message_id_ ~= 0 and Manager(msg) and GetChannelMember(msg) then   
function start_function(extra, result, success)
if GOLDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_," *߷لا تستطيع تنزيل 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if Can_or_NotCan(result.sender_user_id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\n *𖢄 تم تنزيل الشخص من جميع الرتب *")
else
send(msg.chat_id_, msg.id_,"\n *߷ عذرا العضو لايملك رتبه* \n")
end
if GOLDSudoBot(msg.sender_user_id_) then
database:srem(bot_id..'DEV:Sudo:T', result.sender_user_id_)
database:srem(bot_id..'Sudo:User', result.sender_user_id_)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'DEV:Sudo:T',msg.sender_user_id_) then
database:srem(bot_id..'Sudo:User', result.sender_user_id_)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'Sudo:User',msg.sender_user_id_) then
database:srem(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'CoSu'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'Constructor'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'Manager'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match("^تنزيل الكل @(.*)$") and Manager(msg) then
function FunctionStatus(extra, result, success)
if (result.id_) then
if GOLDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_," *߷لا تستطيع تنزيل 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")
return false 
end
if Can_or_NotCan(result.id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\n *𖢄 تم تنزيل الشخص من جميع الرتب *")
else
send(msg.chat_id_, msg.id_,"\n *߷ عذرا العضو لايملك رتبه* \n")
end
if GOLDSudoBot(msg.sender_user_id_) then
database:srem(bot_id..'DEV:Sudo:T', result.id_)
database:srem(bot_id..'Sudo:User', result.id_)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'DEV:Sudo:T',msg.sender_user_id_) then
database:srem(bot_id..'Sudo:User', result.id_)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'Sudo:User',msg.sender_user_id_) then
database:srem(bot_id..'CoSu'..msg.chat_id_, result.id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'CoSu'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'Constructor'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'Manager'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
end
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text:match("^تنزيل الكل @(.*)$")}, FunctionStatus, nil)
end
if text == ("مسح ردود المطور") and DevGOLDW(msg) then 
local list = database:smembers(bot_id..'List:Rd:Sudo')
for k,v in pairs(list) do
database:del(bot_id.."Add:Rd:Sudo:Gif"..v)   
database:del(bot_id.."Add:Rd:Sudo:vico"..v)   
database:del(bot_id.."Add:Rd:Sudo:stekr"..v) 
database:del(bot_id.."Add:Rd:Sudo:Text"..v)   
database:del(bot_id.."Add:Rd:Sudo:Photo"..v)
database:del(bot_id.."Add:Rd:Sudo:Video"..v)
database:del(bot_id.."Add:Rd:Sudo:File"..v)
database:del(bot_id.."Add:Rd:Sudo:Audio"..v)
database:del(bot_id..'List:Rd:Sudo')
end
send(msg.chat_id_, msg.id_," *߷تم مسح ردود المطور*")
end

if text == ("ردود المطور") and DevGOLDW(msg) then 
local list = database:smembers(bot_id..'List:Rd:Sudo')
text = "\n ߷قائمة ردود المطور \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
if database:get(bot_id.."Add:Rd:Sudo:Gif"..v) then
db = 'متحركه'
elseif database:get(bot_id.."Add:Rd:Sudo:vico"..v) then
db = 'بصمه'
elseif database:get(bot_id.."Add:Rd:Sudo:stekr"..v) then
db = 'ملصق'
elseif database:get(bot_id.."Add:Rd:Sudo:Text"..v) then
db = 'رساله'
elseif database:get(bot_id.."Add:Rd:Sudo:Photo"..v) then
db = 'صوره'
elseif database:get(bot_id.."Add:Rd:Sudo:Video"..v) then
db = 'فيديو'
elseif database:get(bot_id.."Add:Rd:Sudo:File"..v) then
db = 'ملف'
elseif database:get(bot_id.."Add:Rd:Sudo:Audio"..v) then
db = 'اغنيه'
end
text = text..""..k.." >> ("..v..") » {"..db.."}\n"
end
if #list == 0 then
text = " ߷لا يوجد ردود للمطور"
end
send(msg.chat_id_, msg.id_,'['..text..']')
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id..'Text:Sudo:Bot'..msg.sender_user_id_..':'..msg.chat_id_)
if database:get(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true1' then
database:del(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."Add:Rd:Sudo:stekr"..test, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."Add:Rd:Sudo:vico"..test, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."Add:Rd:Sudo:Gif"..test, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"','') 
text = text:gsub("'",'') 
text = text:gsub('`','') 
text = text:gsub('*','') 
database:set(bot_id.."Add:Rd:Sudo:Text"..test, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."Add:Rd:Sudo:Audio"..test, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."Add:Rd:Sudo:File"..test, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."Add:Rd:Sudo:Video"..test, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."Add:Rd:Sudo:Photo"..test, photo_in_group)  
end
send(msg.chat_id_, msg.id_,' *߷تم حفظ الرد*')
return false  
end  
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true' then
send(msg.chat_id_, msg.id_,' *߷ارسل الرد الذي تريد اضافته*')
database:set(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_, 'true1')
database:set(bot_id..'Text:Sudo:Bot'..msg.sender_user_id_..':'..msg.chat_id_, text)
database:sadd(bot_id..'List:Rd:Sudo', text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:On'..msg.sender_user_id_..':'..msg.chat_id_) == 'true' then
send(msg.chat_id_, msg.id_,' *߷تم ازالة الرد العام*')
list = {"Add:Rd:Sudo:Audio","Add:Rd:Sudo:File","Add:Rd:Sudo:Video","Add:Rd:Sudo:Photo","Add:Rd:Sudo:Text","Add:Rd:Sudo:stekr","Add:Rd:Sudo:vico","Add:Rd:Sudo:Gif"}
for k,v in pairs(list) do
database:del(bot_id..v..text)
end
database:del(bot_id..'Set:On'..msg.sender_user_id_..':'..msg.chat_id_)
database:srem(bot_id..'List:Rd:Sudo', text)
return false
end
end
if text == 'اضف رد عام' and DevGOLDW(msg) then    
send(msg.chat_id_, msg.id_,' *߷ارسل الكلمه تريد اضافتها*')
database:set(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_,true)
return false 
end
if text == 'حذف رد عام' and DevGOLDW(msg) then    
send(msg.chat_id_, msg.id_,' *߷ارسل الكلمه تريد حذفها*')
database:set(bot_id..'Set:On'..msg.sender_user_id_..':'..msg.chat_id_,true)
return false 
end
if text and not database:get(bot_id..'Reply:Sudo'..msg.chat_id_) then
if not database:sismember(bot_id..'Spam:Texting'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."Add:Rd:Sudo:Gif"..text)   
local veico = database:get(bot_id.."Add:Rd:Sudo:vico"..text)   
local stekr = database:get(bot_id.."Add:Rd:Sudo:stekr"..text) 
local text1 = database:get(bot_id.."Add:Rd:Sudo:Text"..text)   
local photo = database:get(bot_id.."Add:Rd:Sudo:Photo"..text)
local video = database:get(bot_id.."Add:Rd:Sudo:Video"..text)
local document = database:get(bot_id.."Add:Rd:Sudo:File"..text)
local audio = database:get(bot_id.."Add:Rd:Sudo:Audio"..text)
------------------------------------------------------------------------ امـيـر الـدلـيـم
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text1 then 
send(msg.chat_id_, msg.id_,text1)
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if stekr then 
sendSticker(msg.chat_id_, msg.id_, 0, 1, nil, stekr)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, veico)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_, 0, 1, nil,video)
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if anemi then 
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, anemi, '', nil)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, document)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil,photo,'')
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
end
end
if text == ("مسح ردود المدير") and BasicConstructor(msg) then
local list = database:smembers(bot_id..'List:Manager'..msg.chat_id_..'')
for k,v in pairs(list) do
database:del(bot_id.."Add:Rd:Manager:Gif"..v..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..v..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..v..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..v..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..v..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..v..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..v..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..v..msg.chat_id_)
database:del(bot_id..'List:Manager'..msg.chat_id_)
end
send(msg.chat_id_, msg.id_," *߷تم مسح ردود المدير*")
end
if text == ("ردود المدير") and Manager(msg) then
local list = database:smembers(bot_id..'List:Manager'..msg.chat_id_..'')
text = " ߷قائمه ردود المدير \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
if database:get(bot_id.."Add:Rd:Manager:Gif"..v..msg.chat_id_) then
db = 'متحركه'
elseif database:get(bot_id.."Add:Rd:Manager:Vico"..v..msg.chat_id_) then
db = 'بصمه'
elseif database:get(bot_id.."Add:Rd:Manager:Stekrs"..v..msg.chat_id_) then
db = 'ملصق'
elseif database:get(bot_id.."Add:Rd:Manager:Text"..v..msg.chat_id_) then
db = 'رساله'
elseif database:get(bot_id.."Add:Rd:Manager:Photo"..v..msg.chat_id_) then
db = 'صوره'
elseif database:get(bot_id.."Add:Rd:Manager:Video"..v..msg.chat_id_) then
db = 'فيديو'
elseif database:get(bot_id.."Add:Rd:Manager:File"..v..msg.chat_id_) then
db = 'ملف'
elseif database:get(bot_id.."Add:Rd:Manager:Audio"..v..msg.chat_id_) then
db = 'اغنيه'
end
text = text..""..k..">> ("..v..") » {"..db.."}\n"
end
if #list == 0 then
text = " ߷لا يوجد ردود للمدير"
end
send(msg.chat_id_, msg.id_,'['..text..']')
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id..'Text:Manager'..msg.sender_user_id_..':'..msg.chat_id_..'')
if database:get(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true1' then
database:del(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."Add:Rd:Manager:Stekrs"..test..msg.chat_id_, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."Add:Rd:Manager:Vico"..test..msg.chat_id_, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."Add:Rd:Manager:Gif"..test..msg.chat_id_, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"','') 
text = text:gsub("'",'') 
text = text:gsub('`','') 
text = text:gsub('*','') 
database:set(bot_id.."Add:Rd:Manager:Text"..test..msg.chat_id_, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."Add:Rd:Manager:Audio"..test..msg.chat_id_, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."Add:Rd:Manager:File"..test..msg.chat_id_, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."Add:Rd:Manager:Video"..test..msg.chat_id_, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."Add:Rd:Manager:Photo"..test..msg.chat_id_, photo_in_group)  
end
send(msg.chat_id_, msg.id_,' *߷تم حفظ الرد*')
return false  
end  
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true' then
send(msg.chat_id_, msg.id_,' *߷ارسل الرد الذي تريد اضافته*')
database:set(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_,'true1')
database:set(bot_id..'Text:Manager'..msg.sender_user_id_..':'..msg.chat_id_, text)
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:sadd(bot_id..'List:Manager'..msg.chat_id_..'', text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_..'') == 'true2' then
send(msg.chat_id_, msg.id_,' *߷تم ازالة الرد* ')
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:del(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_)
database:srem(bot_id..'List:Manager'..msg.chat_id_..'', text)
return false
end
end
if text == "اضف رد" and Manager(msg) and GetChannelMember(msg) then   
send(msg.chat_id_, msg.id_,"*߷ارسل الكلمه التي تريد اضافتها*")
database:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "حذف رد" and Manager(msg) and GetChannelMember(msg) then   
send(msg.chat_id_, msg.id_,"*߷ارسل الكلمه التي تريد حذفها*")
database:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true2")
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '*߷الان ارسل الرد الذي تريد اضافته* \n*߷قد يكون (ملف - فديو - نص - ملصق - بصمه - متحركه )*\n*߷يمكنك اضافه الى النص :*\n߷`#username` > معرف المستخدم\n߷`#msgs` > عدد رسائل المستخدم\n߷`#name` > اسم المستخدم\n߷`#id` > ايدي المستخدم\n߷`#stast` > رتبه المستخدم \n߷`#edit` > عدد السحكات ')
database:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true1")
database:set(bot_id.."Text:Manager"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:sadd(bot_id.."List:Manager"..msg.chat_id_.."", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_.."") == "true2" then
send(msg.chat_id_, msg.id_,"*߷تم ازالة الرد من قائمه الردود*")
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:del(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."List:Manager"..msg.chat_id_.."", text)
return false
end
end
if text and not database:get(bot_id.."Reply:Manager"..msg.chat_id_) then
if not database:sismember(bot_id..'Spam:Texting'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
local veico = database:get(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
local stekr = database:get(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
local Text = database:get(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
local photo = database:get(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
local video = database:get(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
local document = database:get(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
local audio = database:get(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local Msguser = database:get(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local rtp = Rutba(msg.sender_user_id_,msg.chat_id_)
local edit = database:get(bot_id..'edits'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or 'لا يوجد')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',edit)
local Text = Text:gsub('#msgs',Msguser)
local Text = Text:gsub('#stast',rtp)
send(msg.chat_id_, msg.id_,'['..Text..']')
database:sadd(bot_id.."Spam:Texting"..msg.sender_user_id_,text) 
end,nil)
end
if stekr then 
sendSticker(msg.chat_id_, msg.id_, 0, 1, nil, stekr)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, veico)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_, 0, 1, nil,video)
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if anemi then 
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, anemi, '', nil)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, document)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil,photo,'')
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
end
end
if text == ""..(database:get(bot_id..'Name:Bot') or 'بلاك').." غادر" or text == 'غادر' then  
if Sudo(msg) and not database:get(bot_id..'Left:Bot'..msg.chat_id_)  then 
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
send(msg.chat_id_, msg.id_,'*߷تم مغادرة المجموعه*') 
database:srem(bot_id..'Chek:Groups',msg.chat_id_)  
end
return false  
end
if text == "بوت" then
local Namebot = (database:get(bot_id..'Name:Bot') or 'بلاك') 
local GOLD_Msg = { 
'᥀︙مرحبا انا  '..Namebot..' .',
} 
Namebot = GOLD_Msg[math.random(#GOLD_Msg)] 
local msg_id = msg.id_/2097152/0.5  
local texxtt = ''..Namebot..''
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = texxtt, url="https://t.me/BLACK_TEAM_4"},
},
{
{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url = "https://t.me/BLACK_TEAM_4"},
},
}
local function getpro(extra, result, success) 
if result.photos_[0] then 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&photo=' .. URL.escape(Namebot).."&photo="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
else 
send(msg.chat_id_, msg.id_,Namebot, 1, 'md') 
end 
end 
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = bot_id, offset_ = 0, limit_ = 1 }, getpro, nil) 
end

if text == 'الاحصائيات' and Sudo(msg) then
local Namebot = (database:get(bot_id..'Name:Bot') or 'بلاك') 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
tessttm = "NAME BOT ↤"..Namebot..'\n groubs ↤ {'..Groups..'}\nSubscribers ↤ {'..Users..'}'
local msg_id = msg.id_/2097152/0.5  
local tessttmo = 'المجموعات » '..Groups..''
local tessttm = 'المشتركين » '..Users..''
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = tessttmo, url = "https://t.me/BLACK_TEAM_4"},
},
{
{text = tessttm, url = "https://t.me/BLACK_TEAM_4"},
},
{
{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url = "https://t.me/BLACK_TEAM_4"},
}
}
local function getpro(extra, result, success) 
if result.photos_[0] then 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&photo=' .. URL.escape(Namebot).."&photo="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
else 
send(msg.chat_id_, msg.id_,Namebot, 1, 'md') 
end 
end 
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = bot_id, offset_ = 0, limit_ = 1 }, getpro, nil) 
end
if text == 'الجروبات' and Sudo(msg) then
local Namebot = (database:get(bot_id..'Name:Bot') or 'الملوك') 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
tessttm = "NAME BOT ↤"..Namebot..'\n groubs ↤ {'..Groups..'}\nSubscribers ↤ {'..Users..'}'
local msg_id = msg.id_/2097152/0.5  
local tessttmo = 'المجموعات » '..Groups..''
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = tessttmo, url = "https://t.me/BLACK_TEAM_4"},
},
{
{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url = "https://t.me/BLACK_TEAM_4"},
}
}
local function getpro(extra, result, success) 
if result.photos_[0] then 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&photo=' .. URL.escape(Namebot).."&photo="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
else 
send(msg.chat_id_, msg.id_,Namebot, 1, 'md') 
end 
end 
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = bot_id, offset_ = 0, limit_ = 1 }, getpro, nil) 
end
if text == 'المشتركين' and Sudo(msg) then
local Namebot = (database:get(bot_id..'Name:Bot') or 'الملوك') 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
tessttm = "NAME BOT ↤"..Namebot..'\n groubs ↤ {'..Groups..'}\nSubscribers ↤ {'..Users..'}'
local msg_id = msg.id_/2097152/0.5  
local tessttm = 'المشتركين » '..Users..''
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = tessttm, url = "https://t.me/BLACK_TEAM_4"},
},
{
{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url = "https://t.me/BLACK_TEAM_4"},
}
}
local function getpro(extra, result, success) 
if result.photos_[0] then 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&photo=' .. URL.escape(Namebot).."&photo="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
else 
send(msg.chat_id_, msg.id_,Namebot, 1, 'md') 
end 
end 
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = bot_id, offset_ = 0, limit_ = 1 }, getpro, nil) 
end

if text == 'تفعيل المغادره' and DevGOLDW(msg) then   
if database:get(bot_id..'Left:Bot'..msg.chat_id_) then
Text = ' *߷تم تفعيل مغادرة البوت*'
database:del(bot_id..'Left:Bot'..msg.chat_id_)  
else
Text = ' *߷بالتاكيد تم تفعيل مغادرة البوت*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل المغادره' and DevGOLDW(msg) then  
if not database:get(bot_id..'Left:Bot'..msg.chat_id_) then
Text = ' *߷تم تعطيل مغادرة البوت*'
database:set(bot_id..'Left:Bot'..msg.chat_id_,true)   
else
Text = ' *߷بالتاكيد تم تعطيل مغادرة البوت*'
end
send(msg.chat_id_, msg.id_, Text) 
end

if text == 'تفعيل ردود المدير' and Manager(msg) then   
if database:get(bot_id..'Reply:Manager'..msg.chat_id_) then
Text = ' *߷تم تفعيل ردود المدير*'
database:del(bot_id..'Reply:Manager'..msg.chat_id_)  
else
Text = ' *߷تم تفعيل ردود المدير*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل ردود المدير' and Manager(msg) then  
if not database:get(bot_id..'Reply:Manager'..msg.chat_id_) then
database:set(bot_id..'Reply:Manager'..msg.chat_id_,true)  
Text = '\n *߷تم تعطيل ردود المدير*' 
else
Text = '\n *߷بالتاكيد تم تعطيل ردود المدير*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل ردود المطور' and Manager(msg) then   
if database:get(bot_id..'Reply:Sudo'..msg.chat_id_) then
database:del(bot_id..'Reply:Sudo'..msg.chat_id_)  
Text = '\n *߷تم تفعيل ردود المطور*' 
else
Text = '\n *߷بالتاكيد تم تفعيل ردود المطور*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل ردود المطور' and Manager(msg) then  
if not database:get(bot_id..'Reply:Sudo'..msg.chat_id_) then
database:set(bot_id..'Reply:Sudo'..msg.chat_id_,true)   
Text = '\n *߷تم تعطيل ردود المطور*' 
else
Text = '\n *߷بالتاكيد تم تعطيل ردود المطور*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الايدي' and Manager(msg) then   
if database:get(bot_id..'Bot:Id'..msg.chat_id_)  then
database:del(bot_id..'Bot:Id'..msg.chat_id_) 
Text = '\n *߷تم تفعيل الايدي*' 
else
Text = '\n *߷ بالتاكيد تم تفعيل الايدي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الايدي' and Manager(msg) then  
if not database:get(bot_id..'Bot:Id'..msg.chat_id_)  then
database:set(bot_id..'Bot:Id'..msg.chat_id_,true) 
Text = '\n *߷تم تعطيل الايدي*' 
else
Text = '\n *߷بالتاكيد تم تعطيل الايدي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الايدي بالصوره' and Manager(msg) then   
if database:get(bot_id..'Bot:Id:Photo'..msg.chat_id_)  then
database:del(bot_id..'Bot:Id:Photo'..msg.chat_id_) 
Text = '\n *߷تم تفعيل الايدي بالصور*' 
else
Text = '\n *߷بالتاكيد تم تفعيل الايدي بالصوره*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الايدي بالصوره' and Manager(msg) then  
if not database:get(bot_id..'Bot:Id:Photo'..msg.chat_id_)  then
database:set(bot_id..'Bot:Id:Photo'..msg.chat_id_,true) 
Text = '\n *߷تم تعطيل الايدي بالصوره*' 
else
Text = '\n *߷بالتاكيد تم تعطيل الايدي بالصوره*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الحظر' and Constructor(msg) then   
if database:get(bot_id..'Lock:kick'..msg.chat_id_)  then
database:del(bot_id..'Lock:kick'..msg.chat_id_) 
Text = '\n *߷تم تفعيل الحظر*' 
else
Text = '\n *߷بالتاكيد تم تفعيل الحظر*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الحظر' and Constructor(msg) then  
if not database:get(bot_id..'Lock:kick'..msg.chat_id_)  then
database:set(bot_id..'Lock:kick'..msg.chat_id_,true) 
Text = '\n *߷تم تعطيل الحظر*' 
else
Text = '\n *߷بالتاكيد تم تعطيل الحظر*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الرفع' and Constructor(msg) then   
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_)  then
database:del(bot_id..'Lock:Add:Bot'..msg.chat_id_) 
Text = '\n *߷تم تفعيل الرفع*' 
else
Text = '\n *߷بالتاكيد تم تفعيل الرفع*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الرفع' and Constructor(msg) then  
if not database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_)  then
database:set(bot_id..'Lock:Add:Bot'..msg.chat_id_,true) 
Text = '\n *߷تم تعطيل الرفع*' 
else
Text = '\n *߷بالتاكيد تم تعطيل الرفع*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^وضع لقب (.*)$") and msg.reply_to_message_id_ and Constructor(msg) then
local timsh = text:match("^وضع لقب (.*)$")
function start_function(extra, result, success)
local chek = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..bot_id)
local getInfo = JSON.decode(chek)
if getInfo.result.can_promote_members == false then
send(msg.chat_id_, msg.id_,'*߷لا يمكنني تعديل  او وضع لقب ليس لدي صلاحيه*') 
return false  
end
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=true&can_restrict_members=false&can_pin_messages=True&can_promote_members=false")
okfalse = json:decode(https.request("https://api.telegram.org/bot"..token.."/setChatAdministratorCustomTitle?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&custom_title="..timsh) ) 
if okfalse.ok == false then
send(msg.chat_id_, msg.id_,'*߷لا يمكن وضع او تعديل لقب له*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n*߷العضو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'J_F_A_I')..') '
status  = '\n*߷الايدي »* '..result.sender_user_id_..'\n*߷تم ضافه {'..timsh..'} كلقب له*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == 'ايدي' and tonumber(msg.reply_to_message_id_) == 0 and not database:get(bot_id..'BLACKBOTSS:Lock:ID:Bot'..msg.chat_id_) then
if not database:sismember(bot_id..'BLACKBOTSS:Spam:Group'..msg.sender_user_id_,text) then
database:sadd(bot_id.."BLACKBOTSS:Spam:Group"..msg.sender_user_id_,text) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = msg.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,taha,success) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'لا يوجد'
end
local Id = msg.sender_user_id_
local NumMsg = database:get(bot_id..'BLACKBOTSS:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'BLACKBOTSS:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."BLACKBOTSS:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) or 0
local Total_Photp = (taha.total_count_ or 0)
local Texting = {
'صورتك فدشي 😘😔❤️',
"صارلك شكد مخليه ",
"وفالله 😔💘",
"كشخه برب 😉💘",
"دغيره شبي هذ 😒",
"عمري الحلوين 💘",
}
local Description = Texting[math.random(#Texting)]
local get_id = database:get(bot_id.."BLACKBOTSS:Klesh:Id:Bot"..msg.chat_id_)
if not database:get(bot_id..'BLACKBOTSS:Lock:ID:Bot:Photo'..msg.chat_id_) then
if taha.photos_[0] then
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
sendPhoto(msg.chat_id_,msg.id_,taha.photos_[0].sizes_[1].photo_.persistent_id_,get_id)
else
sendPhoto(msg.chat_id_,msg.id_,taha.photos_[0].sizes_[1].photo_.persistent_id_,'⌯︙'..Description..'\n⌯︙ايديك -› '..Id..'\n⌯︙معرفك -› '..UserName_User..'\n⌯︙رتبتك -› '..Status_Gps..'\n⌯︙رسائلك -› '..NumMsg..'\n⌯︙السحكات -› '..message_edit..' \n⌯︙تتفاعلك -› '..TotalMsg..'\n⌯︙ مجوهراتك -› '..Num_Games)  
end
else
inline = {{{text = '- اضغط هنا للمسح.',callback_data=msg.sender_user_id_..":cancelRd:del"}}, }
send_inlin_key(msg.chat_id_,'⌯︙ليس لديك صوره \n'..'\n*⌯︙ايديك -› '..Id..'\n⌯︙معرفك -›* ['..UserName_User..']*\n⌯︙رتبتك -› '..Status_Gps..'\n⌯︙رسائلك -› '..NumMsg..'\n⌯︙السحكات -› '..message_edit..' \n⌯︙تتفاعلك -› '..TotalMsg..'\n⌯︙ مجوهراتك -› '..Num_Games..'*',inline,msg.id_)
end
else
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
inline = {{{text = '- اضغط هنا للمسح.',callback_data=msg.sender_user_id_..":cancelRd:add"}}, }
send_inlin_key(msg.chat_id_,'['..get_id..']',inline,msg.id_)
else
inline = {{{text = '- اضغط هنا للمسح.',callback_data=msg.sender_user_id_..":cancelRd:add"}}, }
send_inlin_key(msg.chat_id_,'\n*⌯︙ايديك -› '..Id..'\n⌯︙معرفك -›* ['..UserName_User..']*\n⌯︙رتبتك -› '..Status_Gps..'\n⌯︙رسائلك -› '..NumMsg..'\n⌯︙السحكات -› '..message_edit..' \n⌯︙تتفاعلك -› '..TotalMsg..'\n⌯︙ مجوهراتك -› '..Num_Games..'*',inline,msg.id_)
end
end
end,nil)   
end,nil)   
end
end
if text == "معلوماتي" and not database:get(bot_id..'Bot:Id'..msg.chat_id_) then
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
local rtp = Rutba(msg.sender_user_id_,msg.chat_id_)
local Msguser = tonumber(database:get(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) or 1)
local msg_id = msg.id_/2097152/0.5
local Text = "معلوماتك"
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '- معرفك ↫'..data.username_,url="t.me/"..data.username_}},
{{text = '- رتبتك ↫'..rtp, url="t.me/"..data.username_}},
{{text = '- رسائلك ↫'..Msguser, url="t.me/"..data.username_}},
{{text = '- ايديك ↫'..msg.sender_user_id_, url="t.me/"..data.username_}},
}
local function getpro(extra, result, success)
if result.photos_[0] then
https.request("https://api.telegram.org/bot"..token..'/sendphoto?chat_id=' .. msg.chat_id_ .. '&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
else
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil)
end,nil)
end

if text == "رتبتي" and not database:get(bot_id..'ghiktr'..msg.chat_id_) then     
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
if result.username_ then
username = result.username_ 
else
username = 'BLACK_TEAM_4'
end
local msg_id = msg.id_/2097152/0.5  
local textt = '߷ رتبتك '..Rutba(msg.sender_user_id_,msg.chat_id_)
local BLACK_TEAM_4 = 'https://t.me/BLACK_TEAM_4'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = textt, url="http://t.me/"..username},
},
{
{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url = "https://t.me/BLACK_TEAM_4"},
},
}
local function getpro(extra, result, success) 
if result.photos_[0] then 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&photo=' .. URL.escape(textt).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
else 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=' .. URL.escape(BLACK_TEAM_4).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end end 
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil) 
end,nil)
end
if text == 'تفعيل رتبتي' and Manager(msg) then   
if database:get(bot_id..'ghiktr'..msg.chat_id_)  then
database:del(bot_id..'ghiktr'..msg.chat_id_) 
Text = '\n*߷ تم تفعيل رتبتي*' 
else
Text = '\n*߷ بالتاكيد تم تفعيل رتبتي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل رتبتي' and Manager(msg) then  
if not database:get(bot_id..'ghiktr'..msg.chat_id_)  then
database:set(bot_id..'ghiktr'..msg.chat_id_,true) 
Text = '\n*߷ تم تعطيل رتبتي*' 
else
Text = '\n*߷ بالتاكيد تم تعطيل رتبتي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == "انا مين" then
local my_ph = database:get(bot_id.."my_anamen:status"..msg.chat_id_)
if not my_ph then
send(msg.chat_id_, msg.id_,"߷انا مين معطله") 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
if result.username_ then
username = result.username_ 
else
username = 'BLACK_TEAM_4'
end
local msg_id = msg.id_/2097152/0.5  
local textt = '߷ انت '..Rutba(msg.sender_user_id_,msg.chat_id_)
local BLACK_TEAM_4 = 'https://t.me/BLACK_TEAM_4'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = textt, url="http://t.me/"..username},
},
{
{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url = "https://t.me/BLACK_TEAM_4"},
},
}
local function getpro(extra, result, success) 
if result.photos_[0] then 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&photo=' .. URL.escape(textt).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
else 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=' .. URL.escape(BLACK_TEAM_4).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end end 
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil) 
end,nil)
end
if text == "تعطيل انا مين"  and Manager(msg) then   
if Constructor(msg) then  
database:del(bot_id.."my_anamen:status"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"*߷ تم تعطيل انا مين*") 
return false end
end
if text == "تفعيل انا مين"  and Manager(msg) then   
if Constructor(msg) then  
database:set(bot_id.."my_anamen:status"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"*߷ تم تفعيل انا مين*") 
return false  
end
end

if text == "اسمي" and not database:get(bot_id..'shiktr'..msg.chat_id_) then     
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
if result.username_ then
username = result.username_ 
else
username = 'BLACK_TEAM_4'
end
local msg_id = msg.id_/2097152/0.5  
local textt = "𖢌 ليس لديك صور "..(database:get(bot_id..'Name:Bot_') or 'اخري ߷')
local JABWA = 'https://t.me/BLACK_TEAM_4'
keyboard = {} 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = ''..result.first_name_..'', url = "http://t.me/"..username},
},
{
{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url = "https://t.me/BLACK_TEAM_4"},
},
}
local function getpro(extra, result, success) 
if result.photos_[0] then 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&photo=' .. URL.escape(textt).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
else 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=' .. URL.escape(Jabwa).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end end 
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil) 
end,nil)
end
if text == "بايو" and not database:get(bot_id..'shiktr'..msg.chat_id_) then     
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
if result.username_ then
username = result.username_ 
else
username = 'BLACK_TEAM_4'
end
local msg_id = msg.id_/2097152/0.5  
local textt = ' '..getbio(msg.sender_user_id_,msg.chat_id_)
local JABWA = 'https://t.me/BLACK_TEAM_4'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = textt, url = "http://t.me/"..username},
},
{
{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url = "https://t.me/BLACK_TEAM_4"},
},
}
local function getpro(extra, result, success) 
if result.photos_[0] then 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&photo=' .. URL.escape(textt).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
else 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=' .. URL.escape(Jabwa).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end end 
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil) 
end,nil)
end
if text == "تستستستستصت" and not database:get(bot_id..'GeId.result.custom_title'..msg.chat_id_) then     
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
if result.username_ then
username = result.username_ 
else
username = 'BLACK_TEAM_4'
end
local msg_id = msg.id_/2097152/0.5
local textt = "𖢄 اخر صوره "..(database:get(bot_id..'getChatMember') or 'لديك .')  
local JABWA = 'https://t.me/BLACK_TEAM_4'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = textt, url= "http://t.me/"..username},
},
}
local function getpro(extra, result, success) 
if result.photos_[0] then 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&photo=' .. URL.escape(textt).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
else 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=' .. URL.escape(Jabwa).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end end 
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil) 
end,nil)
end
if text == "التاريخ" and not database:get(bot_id..'GeId.result.custom_title'..msg.chat_id_) then     
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
if result.username_ then
username = result.username_ 
else
username = 'BLACK_TEAM_4'
end
local msg_id = msg.id_/2097152/0.5
local textt =  "• التاريخ » "..os.date("%Y/%m/%d")  
local JABWA = 'https://t.me/BLACK_TEAM_4'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = textt, url= "http://t.me/"..username},
},
}
local function getpro(extra, result, success) 
if result.photos_[0] then 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&photo=' .. URL.escape(textt).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
else 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=' .. URL.escape(Jabwa).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end end 
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil) 
end,nil)
end
if text == "الساعه" and not database:get(bot_id..'GeId.result.custom_title'..msg.chat_id_) then     
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
if result.username_ then
username = result.username_ 
else
username = 'BLACK_TEAM_4'
end
local msg_id = msg.id_/2097152/0.5
local textt = " الساعه الان ⇔"..os.date("%I:%M%p")
local JABWA = 'https://t.me/BLACK_TEAM_4'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = textt, url= "http://t.me/"..username},
},
}
local function getpro(extra, result, success) 
if result.photos_[0] then 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&photo=' .. URL.escape(textt).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
else 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=' .. URL.escape(Jabwa).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end end 
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil) 
end,nil)
end
if text == "رسائلي" and not database:get(bot_id..'GeId.result.custom_title'..msg.chat_id_) then     
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
if result.username_ then
username = result.username_ 
else
username = 'S_a_i_d_i'
end
local msg_id = msg.id_/2097152/0.5
local textt = "߷عدد رسائلك » "..database:get(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_)
local Jabwa = 'https://t.me/Qtdao/71'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = textt, url= "http://t.me/"..username},
},
{
{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url = "https://t.me/BLACK_TEAM_4"},
},
}
local function getpro(extra, result, success) 
if result.photos_[0] then 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&photo=' .. URL.escape(textt).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
else 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=' .. URL.escape(Jabwa).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end end 
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil) 
end,nil)
end
if text == 'لقبه' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
send(msg.chat_id_, msg.id_,'*߷ لقبه هو :* '..getcustom(msg,result)) 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text == 'لقبي' and tonumber(msg.reply_to_message_id_) == 0 then
send(msg.chat_id_, msg.id_,'*߷ لقبك هو :* '..getcustom(msg,msg)) 
end
if text == 'ايديي' then
send(msg.chat_id_, msg.id_,' *߷ايديك »* '..msg.sender_user_id_)
end
if text == 'الرتبه' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(extra,data) 
local rtp = Rutba(result.sender_user_id_,msg.chat_id_)
local username = ' ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
local iduser = result.sender_user_id_
send(msg.chat_id_, msg.id_,'*߷اسم المستخدم » (*'..username..'*)\n߷الرتبه » ('..rtp..')*\n')
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
---------
if text and text:match("^الرتبه @(.*)$") then
local username = text:match("^الرتبه @(.*)$")
function start_function(extra, result, success)
if result.id_ then
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(extra,data) 
local rtp = Rutba(result.id_,msg.chat_id_)
local username = ('[@'..data.username_..']' or 'لا يوجد')
local iduser = result.id_
send(msg.chat_id_, msg.id_,'*߷اسم المستخدم » (*'..username..'*)\n߷الرتبه » ('..rtp..')*\n')
end,nil)
else
send(msg.chat_id_, msg.id_,'*- المعرف غير صحيح* ')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
if text == 'كشف' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(extra,data) 
local rtp = Rutba(result.sender_user_id_,msg.chat_id_)
local username = ' ['..data.first_name_..'](t.me/'..(data.username_ or 'BLACK_TEAM_4')..')'
local iduser = result.sender_user_id_
send(msg.chat_id_, msg.id_,'*߷الايدي » ('..iduser..')*\n*߷الاسم » (*'..username..')\n*߷الرتبه » ('..rtp..')*\n*߷نوع الكشف » بالرد*')
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match("^كشف @(.*)$") then
local username = text:match("^كشف @(.*)$")
function Function_v(extra, result, success)
if result.id_ then
tdcli_function({ID = "GetUser",user_id_ = result.id_}, function(arg, data)
if data.username_ then
UserName_User = '@' .. data.username_
else
UserName_User = 'لا يوجد'
end
local Id = data.id_
local frLsn = data.first_name_..' '..(data.last_name_ or "")
 local Status_Gps = Rutba(Id,msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n*߷الاسم » ('..frLsn..')\n߷الايدي » '..Id..'\n߷المعرف » *['..UserName_User..']*\n߷الرتبة » '..Status_Gps..'\n߷نوع الكشف - بالمعرف*')
end, nil)
else
send(msg.chat_id_, msg.id_, ' *߷لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function({ID = "SearchPublicChat",username_ = username}, Function_v, nil)
return false
end
if text and text:match("^كشف (%d+)$") then
local userid = text:match("^كشف (%d+)$") 
if userid then
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
local UserName = ("@"..data.username_ or "لا يوجد")
local id = userid
local rtp = Rutba(id,msg.chat_id_)
texts ='*߷الايدي » ('..id..')*\n*߷المعرف » (*['..UserName..'])\n*߷الرتبه » ('..rtp..')*\n*߷نوع الكشف » بالايدي*'
send(msg.chat_id_, msg.id_, texts)
end,nil)
return false
end
end  
if text==('عدد الجروب') and Mod(msg) then  
if msg.can_be_deleted_ == false then 
send(msg.chat_id_,msg.id_," *߷البوت ليس ادمن* \n") 
return false  
end 
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,ta) 
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub('-100','')},function(arg,data) 
local amir = ' *߷عدد الادمنيه :* '..data.administrator_count_..
'\n\n*߷عدد المطرودين :* '..data.kicked_count_..
'\n\n*߷عدد الاعضاء :* '..data.member_count_..
'\n\n*߷عدد رسائل الجروب :* '..(msg.id_/2097152/0.5)..
'\n\n*߷ اسم الجروب :* ['..ta.title_..']'
send(msg.chat_id_, msg.id_, amir) 
end,nil)
end,nil)
end 
if text then   
if database:get(bot_id..'Set:array'..msg.sender_user_id_..':'..msg.chat_id_) == 'true1' then
local test = database:get(bot_id..'Text:array'..msg.sender_user_id_..':'..msg.chat_id_..'')
text = text:gsub('"','') 
text = text:gsub("'",'') 
text = text:gsub('`','') 
text = text:gsub('*','') 
database:sadd(bot_id.."Add:Rd:array:Text"..test..msg.chat_id_,text)  
_key = {
{{text="اضغط هنا لانهاء الاضافه",callback_data="EndAddarray"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,'߷تم حفظ الرد يمكنك ارسال اخر او اكمال العمليه من خلال الزر اسفل ✅',_key,msg.id_)
return false  
end
end    
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_) == 'dttd' then
database:del(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_)
gery = database:get(bot_id.."Set:array:addpu"..msg.sender_user_id_..":"..msg.chat_id_)
if not database:sismember(bot_id.."Add:Rd:array:Text"..gery..msg.chat_id_,text) then
send(msg.chat_id_, msg.id_,' *߷لا يوجد رد متعدد * ')
return false
end
send(msg.chat_id_, msg.id_,' *߷تم حذفه بنجاح .* ')
database:srem(bot_id.."Add:Rd:array:Text"..gery..msg.chat_id_,text)
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_) == 'delrd' then
database:del(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_)
if not database:sismember(bot_id..'List:array'..msg.chat_id_,text) then
send(msg.chat_id_, msg.id_,' *߷لا يوجد رد متعدد * ')
return false
end
send(msg.chat_id_, msg.id_,' *߷قم بارسال الرد الذي تريد حذفه منه* ')
database:set(bot_id.."Set:array:addpu"..msg.sender_user_id_..":"..msg.chat_id_,text)
database:set(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_,"dttd")
return false
end
end
if text == "حذف رد من متعدد" and Manager(msg) then
send(msg.chat_id_, msg.id_,"*߷ارسل الكلمه الرد الاصليه*")
database:set(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_,"delrd")
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:array"..msg.sender_user_id_..":"..msg.chat_id_) == 'true' then
send(msg.chat_id_, msg.id_,' *߷ارسل الرد الذي تريد اضافته*')
database:set(bot_id..'Set:array'..msg.sender_user_id_..':'..msg.chat_id_,'true1')
database:set(bot_id..'Text:array'..msg.sender_user_id_..':'..msg.chat_id_, text)
database:del(bot_id.."Add:Rd:array:Text"..text..msg.chat_id_)   
database:sadd(bot_id..'List:array'..msg.chat_id_..'', text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:array:rd"..msg.sender_user_id_..":"..msg.chat_id_) == 'delrd' then
database:del(bot_id.."Set:array:rd"..msg.sender_user_id_..":"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *߷تم ازالة الرد المتعدد بنجاح* ')
database:del(bot_id.."Add:Rd:array:Text"..text..msg.chat_id_)
database:srem(bot_id..'List:array'..msg.chat_id_, text)
return false
end
end
if text == "حذف رد متعدد" and Manager(msg) then
send(msg.chat_id_, msg.id_,"*߷ارسل الكلمه التي تريد حذفها*")
database:set(bot_id.."Set:array:rd"..msg.sender_user_id_..":"..msg.chat_id_,"delrd")
return false 
end
if text then
if  database:sismember(bot_id..'List:array'..msg.chat_id_,text) then
local list = database:smembers(bot_id.."Add:Rd:array:Text"..text..msg.chat_id_)
quschen = list[math.random(#list)]
send(msg.chat_id_, msg.id_,quschen)
end
end
if text == ("الردود المتعدده") and Manager(msg) then
local list = database:smembers(bot_id..'List:array'..msg.chat_id_..'')
text = " ߷قائمه الردود المتعدده \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n"
for k,v in pairs(list) do
text = text..""..k..">> ("..v..") » {رساله}\n"
end
if #list == 0 then
text = " ߷لا يوجد ردود متعدده"
end
send(msg.chat_id_, msg.id_,'['..text..']')
end
if text == ("مسح الردود المتعدده") and BasicConstructor(msg) and GetChannelMember(msg) then   
local list = database:smembers(bot_id..'List:array'..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."Add:Rd:array:Text"..v..msg.chat_id_)   
database:del(bot_id..'List:array'..msg.chat_id_)
end
send(msg.chat_id_, msg.id_," *߷تم مسح الردود المتعدده*")
end
if text == "اضف رد متعدد" and Manager(msg) and GetChannelMember(msg) then   
send(msg.chat_id_, msg.id_,"*߷ارسل الكلمه التي تريد اضافتها*")
database:set(bot_id.."Set:array"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == 'اطردني' or text == 'طردني' and GetChannelMember(msg) then   
if not database:get(bot_id..'Cick:Me'..msg.chat_id_) then
if Can_or_NotCan(msg.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n ߷عذرا لا استطيع طرد ( '..Rutba(msg.sender_user_id_,msg.chat_id_)..' )')
return false
end
_key = {
{{text="تأكيد الامر",callback_data="OkKikedMe"..msg.sender_user_id_},{text="الغاء الامر",callback_data="noKikedMs"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,"߷قم بتأكيد العمليه الان",_key,msg.id_)
return false
else
send(msg.chat_id_, msg.id_,' ߷تم تعطيل امر اطردني') 
end
end
if text == 'نزلني' or text == 'نزيلني' and GetChannelMember(msg) then 
if not database:get(bot_id..'Cick:Me'..msg.chat_id_) then 
local Text = "*߷*هل انت متاكد  من تنزيلك من جميع الرتب*߷*"
keyboard = {} 
keyboard.inline_keyboard = {
{{text="◐ نعم ◐",callback_data="nzllne"..msg.sender_user_id_},{text="◐ لا ◐",callback_data="noKikedMe"..msg.sender_user_id_}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end 
end
if text and text:match("^صيح (.*)$") then
local username = text:match("^صيح (.*)$") 
if not database:get(bot_id..'Seh:User'..msg.chat_id_) then
function start_function(extra, result, success)
if result and result.message_ and result.message_ == "USERNAME_NOT_OCCUPIED" then 
send(msg.chat_id_, msg.id_,' *߷المعرف غلط* ') 
return false  
end
if result and result.type_ and result.type_.channel_ and result.type_.channel_.ID == "Channel" then
send(msg.chat_id_, msg.id_,' *߷لا استطيع اصيح معرف قنوات*') 
return false  
end
if result.type_.user_.type_.ID == "UserTypeBot" then
send(msg.chat_id_, msg.id_,' *߷لا استطيع اصيح معرف بوتات*') 
return false  
end
if result and result.type_ and result.type_.channel_ and result.type_.channel_.is_supergroup_ == true then
send(msg.chat_id_, msg.id_,'*߷لا اسطيع صيح معرفات الجروبات*') 
return false  
end
if result.id_ then
send(msg.chat_id_, msg.id_,' *߷تعالي يستا بينادوا عليك😂🙂 ['..username..']*') 
return false
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
else
send(msg.chat_id_, msg.id_,' *߷تم تعطيل امر صيح*') 
end
return false
end
if text == 'مين ضافني' then
if not database:get(bot_id..'Added:Me'..msg.chat_id_) then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusCreator" then
send(msg.chat_id_, msg.id_,'߷انت منشئ الجروب') 
return false
end
local Added_Me = database:get(bot_id.."Who:Added:Me"..msg.chat_id_..':'..msg.sender_user_id_)
if Added_Me then 
tdcli_function ({ID = "GetUser",user_id_ = Added_Me},function(extra,result,success)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
Text = ' ߷الشخص الذي قام باضافتك هو » '..Name
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end,nil)
else
send(msg.chat_id_, msg.id_,' ߷انت دخلت عبر الرابط اصحي يرايق') 
end
end,nil)
else
send(msg.chat_id_, msg.id_,' *߷تم تعطيل امر مين ضافني*') 
end
end
if text == 'تفعيل ضافني' and Manager(msg) then   
if database:get(bot_id..'Added:Me'..msg.chat_id_) then
Text = ' *߷تم تفعيل امر مين ضافني*'
database:del(bot_id..'Added:Me'..msg.chat_id_)  
else
Text = ' *߷بالتاكيد تم تفعيل امر مين ضافني*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل ضافني' and Manager(msg) then  
if not database:get(bot_id..'Added:Me'..msg.chat_id_) then
database:set(bot_id..'Added:Me'..msg.chat_id_,true)  
Text = '\n *߷تم تعطيل امر مين ضافني*'
else
Text = '\n *߷بالتاكيد تم تعطيل امر مين ضافني*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل صيح' and Manager(msg) then   
if database:get(bot_id..'Seh:User'..msg.chat_id_) then
Text = ' *߷تم تفعيل امر صيح*'
database:del(bot_id..'Seh:User'..msg.chat_id_)  
else
Text = ' *߷بالتاكيد تم تفعيل امر صيح*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تنزيل جميع الرتب' and BasicConstructor(msg) then  
database:del(bot_id..'Constructor'..msg.chat_id_)
database:del(bot_id..'Manager'..msg.chat_id_)
database:del(bot_id..'Mod:User'..msg.chat_id_)
database:del(bot_id..'Special:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n *߷تم تنزيل الكل من الرتب الاتيه* \n*߷المميزين ، الادمنيه ، المدراء ، المنشئين* \n')
end
if text == 'تعطيل صيح' and Manager(msg) then  
if not database:get(bot_id..'Seh:User'..msg.chat_id_) then
database:set(bot_id..'Seh:User'..msg.chat_id_,true)  
Text = '\n *߷تم تعطيل امر صيح*'
else
Text = '\n *߷بالتاكيد تم تعطيل امر صيح*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل اطردني' and Manager(msg) then   
if database:get(bot_id..'Cick:Me'..msg.chat_id_) then
Text = ' *߷تم تفعيل امر اطردني*'
database:del(bot_id..'Cick:Me'..msg.chat_id_)  
else
Text = ' *߷بالتاكيد تم تفعيل امر اطردني*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل اطردني' and Manager(msg) then  
if not database:get(bot_id..'Cick:Me'..msg.chat_id_) then
database:set(bot_id..'Cick:Me'..msg.chat_id_,true)  
Text = '\n *߷تم تعطيل امر اطردني*'
else
Text = '\n *߷بالتاكيد تم تعطيل امر اطردني*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == "صورتي"  then
local my_ph = database:get(bot_id.."my_photo:status"..msg.chat_id_)
if not my_ph then
send(msg.chat_id_, msg.id_," *߷الصوره معطله*") 
return false  
end
local function getpro(extra, result, success)
if result.photos_[0] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_," ߷عدد صورك ↫ "..result.total_count_.." صوره‌‏", msg.id_, msg.id_, "md")
else
send(msg.chat_id_, msg.id_,'لا تمتلك صوره في حسابك', 1, 'md')
  end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil)
end
if text == 'تغير الايدي' and Manager(msg) then 
local List = {
[[
- ᴜѕᴇʀɴᴀᴍᴇ 𓄹𓄼 #id .
- ʏᴏᴜʀ ɪᴅ 𓄹𓄼 #username  .
- ᴍѕɢѕ 𓄹𓄼 #msgs .
- ѕᴛᴀᴛѕ 𓄹𓄼 #stast .
- ᴇᴅɪᴛ 𓄹𓄼 #game .
]],
[[
➭- 𝒔𝒕𝒂𓂅 #stast 𓍯. 💕
➮- 𝒖𝒔𝒆𝒓𓂅 #username 𓍯. 💕
➭- 𝒎𝒔𝒈𝒆𓂅 #msgs 𓍯. 💕
➭- 𝒊𝒅 𓂅 #id 𓍯. 💕
]],
[[
⚕ 𓆰 𝑾𝒆𝒍𝒄𝒐𝒎𝒆 𝑻𝒐 𝑮𝒓𝒐𝒖𝒑 ★
• 🖤 | 𝑼𝑬𝑺 : #username ‌‌‏⚚
• 🖤 | 𝑺𝑻𝑨 : #stast 🧙🏻‍♂ ☥
• 🖤 | 𝑰𝑫 : #id ‌‌‏♕
• 🖤 | 𝑴𝑺𝑮 : #msgs 𓆊
]],
[[
┌ 𝐔𝐒𝐄𝐑 𖤱 #username 𖦴 .
├ 𝐌𝐒𝐆 𖤱 #msgs 𖦴 .
├ 𝐒𝐓𝐀 𖤱 #stast 𖦴 .
└ 𝐈𝐃 𖤱 #id 𖦴 .
]],
[[
➼ : 𝐼𝐷 𖠀 #id . ♡
➼ : 𝑈𝑆𝐸𝑅 𖠀 #username .♡
➼ : 𝑀𝑆𝐺𝑆 𖠀 #msgs .♡
➼ : 𝑆𝑇𝐴S𝑇 𖠀 #stast .♡ 
➼ : 𝐸𝐷𝐼𝑇  𖠀 #edit .♡
]],
[[
- ايديڪ  ⁞ #id 💘 ٬
- يوزرڪ القميل ⁞ #username 💘 ٬
- رسائلڪ  الطيفهہَ ⁞ #msgs 💘 ٬
- رتبتڪ الحلوه ⁞ #stast  💘٬
- سحڪاتڪ الفول ⁞ #edit 💘 ٬ 
]],
[[
- 𝒊𝒅 ➺ #id 💗
- 𝒖𝒔𝒆𝒓 ➺  #username 💗
- 𝒎𝒔𝒈 ➺ #msgs 💗
- 𝒔𝒕𝒂𝒕𝒆 ➺ #stast 💗
- 𝒆𝒅I𝒕 ➺ #edit  💗
]],
[[
☁️ . USERNAME . #username  💞🧸
☁️ . STAST . #stast 💗🦄
☁️ . ID . #id 🧘🏼‍♀💘
☁️ . MSGS . #msgs 💗👧🏻
]],
[[
- 𓏬 𝐔𝐬𝐄𝐫 : #username 𓂅 .
- 𓏬 𝐌𝐬𝐆  : #msgs 𓂅 .
- 𓏬 𝐒𝐭𝐀 : #stast 𓂅 .
- 𓏬 𝐈𝐃 : #id 𓂅 .
]],
[[
• 𝙐𝙎𝙀𝙍𝙉𝘼𝙈𝙀 ➤ #username .
• 𝙈𝙀𝙎𝙎𝘼𝙂𝙀𝙎 ➤ #msgs .
• 𝙎𝙏??𝙏𝙎 ➤ #stast .
• 𝙄𝘿 ➤ #id .
]]}
local Text_Rand = List[math.random(#List)]
database:set(bot_id.."KLISH:ID"..msg.chat_id_,Text_Rand)
send(msg.chat_id_, msg.id_,'*߷تم تغير الايدي ارسل ايدي لرؤيته*')
end
if text == 'ايدي' and tonumber(msg.reply_to_message_id_) == 0 and not database:get(bot_id..'BLACKBOTSS:Lock:ID:Bot'..msg.chat_id_) then
if not database:sismember(bot_id..'BLACKBOTSS:Spam:Group'..msg.sender_user_id_,text) then
database:sadd(bot_id.."BLACKBOTSS:Spam:Group"..msg.sender_user_id_,text) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = msg.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,taha,success) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'لا يوجد'
end
local Id = msg.sender_user_id_
local NumMsg = database:get(bot_id..'BLACKBOTSS:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'BLACKBOTSS:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."BLACKBOTSS:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) or 0
local Total_Photp = (taha.total_count_ or 0)
local Texting = {
'صورتك فدشي 😘😔❤️',
"صارلك شكد مخليه ",
"وفالله 😔💘",
"كشخه برب 😉💘",
"دغيره شبي هذ 😒",
"عمري الحلوين 💘",
}
local Description = Texting[math.random(#Texting)]
local get_id = database:get(bot_id.."BLACKBOTSS:Klesh:Id:Bot"..msg.chat_id_)
if not database:get(bot_id..'BLACKBOTSS:Lock:ID:Bot:Photo'..msg.chat_id_) then
if taha.photos_[0] then
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
sendPhoto(msg.chat_id_,msg.id_,taha.photos_[0].sizes_[1].photo_.persistent_id_,get_id)
else
sendPhoto(msg.chat_id_,msg.id_,taha.photos_[0].sizes_[1].photo_.persistent_id_,'⌯︙'..Description..'\n⌯︙ايديك -› '..Id..'\n⌯︙معرفك -› '..UserName_User..'\n⌯︙رتبتك -› '..Status_Gps..'\n⌯︙رسائلك -› '..NumMsg..'\n⌯︙السحكات -› '..message_edit..' \n⌯︙تتفاعلك -› '..TotalMsg..'\n⌯︙ مجوهراتك -› '..Num_Games)  
end
else
inline = {{{text = '- اضغط هنا للمسح.',callback_data=msg.sender_user_id_..":cancelRd:del"}}, }
send_inlin_key(msg.chat_id_,'⌯︙ليس لديك صوره \n'..'\n*⌯︙ايديك -› '..Id..'\n⌯︙معرفك -›* ['..UserName_User..']*\n⌯︙رتبتك -› '..Status_Gps..'\n⌯︙رسائلك -› '..NumMsg..'\n⌯︙السحكات -› '..message_edit..' \n⌯︙تتفاعلك -› '..TotalMsg..'\n⌯︙ مجوهراتك -› '..Num_Games..'*',inline,msg.id_)
end
else
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
inline = {{{text = '- اضغط هنا للمسح.',callback_data=msg.sender_user_id_..":cancelRd:add"}}, }
send_inlin_key(msg.chat_id_,'['..get_id..']',inline,msg.id_)
else
inline = {{{text = '- اضغط هنا للمسح.',callback_data=msg.sender_user_id_..":cancelRd:add"}}, }
send_inlin_key(msg.chat_id_,'\n*⌯︙ايديك -› '..Id..'\n⌯︙معرفك -›* ['..UserName_User..']*\n⌯︙رتبتك -› '..Status_Gps..'\n⌯︙رسائلك -› '..NumMsg..'\n⌯︙السحكات -› '..message_edit..' \n⌯︙تتفاعلك -› '..TotalMsg..'\n⌯︙ مجوهراتك -› '..Num_Games..'*',inline,msg.id_)
end
end
end,nil)   
end,nil)   
end
end

if text == 'سحكاتي' or text == 'تعديلاتي' then 
local Num = tonumber(database:get(bot_id..'edits'..msg.chat_id_..msg.sender_user_id_) or 0)
if Num == 0 then 
Text = ' *߷ ليس لديك سحكات*'
else
Text = ' *߷عدد سحكاتك » { '..Num..' } *'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == "مسح سحكاتي" or text == "حذف سحكاتي" then  
send(msg.chat_id_, msg.id_,' *߷تم مسح سحكاتك*'  )  
database:del(bot_id..'edits'..msg.chat_id_..msg.sender_user_id_)
end
if text == "مسح جهاتي" or text == "حذف جهاتي" then  
send(msg.chat_id_, msg.id_,' *߷تم مسح جهاتك*'  )  
database:del(bot_id..'Add:Contact'..msg.chat_id_..':'..msg.sender_user_id_)
end
if text == 'جهاتي' or text == 'شكد ضفت' and GetChannelMember(msg) then   
local Num = tonumber(database:get(bot_id..'Add:Contact'..msg.chat_id_..':'..msg.sender_user_id_) or 0) 
if Num == 0 then 
Text = '߷لم تقم بأضافه احد'
else
Text = '߷عدد جهاتك » { '..Num..' }'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == "تنظيف المشتركين" and DevGOLDW(msg) then   
local pv = database:smembers(bot_id.."User_Bot")
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]
},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",  
chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} 
},function(arg,data) 
if data.ID and data.ID == "Ok"  then
else
database:srem(bot_id.."User_Bot",pv[i])
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,' *߷ لا يوجد مشتركين وهميين في البوت* \n')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,' *߷عدد المشتركين الان » ( '..#pv..' )*\n*߷تم ازالة » ( '..sendok..' ) من المشتركين*\n*߷الان عدد المشتركين الحقيقي » ( '..ok..' ) مشترك* \n')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "تنظيف الجروبات" and DevGOLDW(msg) then   
local group = database:smembers(bot_id..'Chek:Groups') 
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
database:srem(bot_id..'Chek:Groups',group[i])  
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=group[i],user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,' *߷ لا يوجد جروبات وهميه في البوت*\n')   
else
local GOLD = (w + q)
local sendok = #group - GOLD
if q == 0 then
GOLD = ''
else
GOLD = '\n*߷تم ازالة » { '..q..' } جروبات من البوت*'
end
if w == 0 then
GOLDk = ''
else
GOLDk = '\n*߷تم ازالة » {'..w..'} جروب لان البوت عضو*'
end
send(msg.chat_id_, msg.id_,' *߷عدد الجروبات الان » { '..#group..' }'..GOLDk..''..GOLD..'*\n*߷الان عدد الجروبات الحقيقي » { '..sendok..' } جروبات*\n')   
end
end
end,nil)
end
return false
end
if text and text:match("^(gpinfo)$") or text and text:match("^معلومات الجروب$") then
function gpinfo(arg,data)
-- vardump(data) 
GOLDdx(msg.chat_id_, msg.id_, ' *߷ايدي المجموعة » ( '..msg.chat_id_..' )*\n*߷عدد الادمنيه » ( '..data.administrator_count_..' )*\n*߷عدد المحظورين » ( '..data.kicked_count_..' )*\n*߷عدد الاعضاء » ( '..data.member_count_..' )*\n', 'md') 
end 
getChannelFull(msg.chat_id_, gpinfo, nil) 
end
-----------
if text ==("مسح") and Mod(msg) and tonumber(msg.reply_to_message_id_) > 0 then
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.reply_to_message_id_),msg.id_})   
end   
if database:get(bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
database:del(bot_id..'id:user'..msg.chat_id_)  
send(msg.chat_id_, msg.id_, " *߷تم الغاء الامر* ") 
database:del(bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id..'id:user'..msg.chat_id_)  
database:del(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) 
database:incrby(bot_id..'Msg_User'..msg.chat_id_..':'..iduserr,numadded)  
send(msg.chat_id_, msg.id_," *߷تم اضافة له {"..numadded..'} من الرسائل*')  
end
------------------------------------------------------------------------
if database:get(bot_id.."gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
database:del(bot_id..'idgem:user'..msg.chat_id_)  
send(msg.chat_id_, msg.id_, " *߷تم الغاء الامر* ") 
database:del(bot_id.."gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id..'idgem:user'..msg.chat_id_)  
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..iduserr,numadded)  
send(msg.chat_id_, msg.id_,  1, "*߷تم اضافة له* {"..numadded..'} من النقود', 1 , 'md')  
end
------------------------------------------------------------
if text and text:match("^اضف رسائل (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then
amir = text:match("^اضف رسائل (%d+)$")
database:set(bot_id..'id:user'..msg.chat_id_,amir)  
database:setex(bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, ' *߷ارسل لي عدد الرسائل الان*') 
return false
end
------------------------------------------------------------------------
if text and text:match("^اضف نقاط (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
amir = text:match("^اضف نقاط (%d+)$")
database:set(bot_id..'idgem:user'..msg.chat_id_,amir)  
database:setex(bot_id.."gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, ' *߷ارسل لي عدد النقاط التي تريد اضافتها*') 
return false
end
------------------------------------------------------------------------
if text and text:match("^اضف نقاط (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^اضف نقاط (%d+)$")
function reply(extra, result, success)
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_," *߷تم اضافة له {"..Num..'} من النقاط*')  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^اضف رسائل (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^اضف رسائل (%d+)$")
function reply(extra, result, success)
database:del(bot_id..'Msg_User'..msg.chat_id_..':'..result.sender_user_id_) 
database:incrby(bot_id..'Msg_User'..msg.chat_id_..':'..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_, "\n *߷تم اضافة له {"..Num..'} من الرسائل*')  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end
if text == 'نقاط' or text == 'نقاطي' and GetChannelMember(msg) then  
local Num = database:get(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_) or 0
if Num == 0 then 
Text = ' *߷لم تلعب اي لعبه للحصول على نقاط*'
else
Text = ' *߷عدد نقاطك التي ربحتها هيه » { '..Num..' } نقاط*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^بيع نقاطي (%d+)$") or text and text:match("^بيع نقاط (%d+)$")  then  
local NUMPY = text:match("^بيع نقاطي (%d+)$") or text and text:match("^بيع نقاط (%d+)$") 
if tonumber(NUMPY) == tonumber(0) then
send(msg.chat_id_,msg.id_,"\n* ߷لا استطيع البيع اقل من 1 *") 
return false 
end
if tonumber(database:get(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_)) == tonumber(0) then
send(msg.chat_id_,msg.id_,' *߷ليس لديك نقاط في الالعاب*\n*߷اذا كنت تريد ربح نقاط \n*߷ارسل الالعاب وابدأ اللعب !* ') 
else
local NUM_GAMES = database:get(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_)
if tonumber(NUMPY) > tonumber(NUM_GAMES) then
send(msg.chat_id_,msg.id_,'\n ߷ليس لديك نقاط في هذه لعبه \n ߷لزيادة نقاطك في اللعبه \n ߷ارسل الالعاب وابدأ اللعب !') 
return false 
end
local NUMNKO = (NUMPY * 50)
database:decrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_,NUMPY)  
database:incrby(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_,NUMNKO)  
send(msg.chat_id_,msg.id_,' *߷تم خصم » { '..NUMPY..' } من نقاطك* \n*߷وتم اضافة » { '..(NUMPY * 50)..' } رساله الى رسالك*')
end 
return false 
end
if text == 'فحص البوت' and Manager(msg) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. msg.chat_id_ ..'&user_id='.. bot_id..'')
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.ok == true then
if Json_Info.result.status == "administrator" then
if Json_Info.result.can_change_info == true then
info = 'ꪜ' else info = '✘' end
if Json_Info.result.can_delete_messages == true then
delete = 'ꪜ' else delete = '✘' end
if Json_Info.result.can_invite_users == true then
invite = 'ꪜ' else invite = '✘' end
if Json_Info.result.can_pin_messages == true then
pin = 'ꪜ' else pin = '✘' end
if Json_Info.result.can_restrict_members == true then
restrict = 'ꪜ' else restrict = '✘' end
if Json_Info.result.can_promote_members == true then
promote = 'ꪜ' else promote = '✘' end 
send(msg.chat_id_,msg.id_,'\n *߷اهلا عزيزي البوت هنا ادمن*'..'\n*߷وصلاحياته هي ↓* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ '..'\n*߷تغير معلومات الجروب ↞ ❴ '..info..' ❵'..'*\n*߷حذف الرسائل ↞ ❴ '..delete..' ❵'..'*\n*߷حظر المستخدمين ↞ ❴ '..restrict..' ❵'..'*\n*߷دعوة مستخدمين ↞ ❴ '..invite..' ❵'..'*\n*߷تثبيت الرسائل ↞ ❴ '..pin..' ❵'..'*\n*߷اضافة مشرفين جدد ↞ ❴ '..promote..' ❵*')   
end
end
end

if text and text:match("^المطور$") or text and text:match("^مطور$") or text and text:match("^الدعم$") then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,dp) 
local Name1 = result.first_name_
local Name1 = Name1:gsub('"',"") 
local Name1 = Name1:gsub("'","") 
local Name1 = Name1:gsub("","") 
local Name1 = Name1:gsub("*","") 
local Name1 = Name1:gsub("{","") 
local Name1 = Name1:gsub("}","") 
local Name = '['..Name1..'](tg://user?id='..result.id_..')'
local NameChat = dp.title_
local NameChat = NameChat:gsub('"',"") 
local NameChat = NameChat:gsub("'","") 
local NameChat = NameChat:gsub("","") 
local NameChat = NameChat:gsub("*","") 
local NameChat = NameChat:gsub("{","") 
local NameChat = NameChat:gsub("}","") 
local LinkGp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if LinkGp.ok == true then 
LinkGroup = LinkGp.result
else
LinkGroup = 'لا يوجد'
end
sendText(SUDO,"߷هناك شخص يطلبك عزيزي المطور \n߷الشخص  {"..Name.."}\n߷اسم الجروب {"..NameChat.."}\n߷ايدي الجروب {"..msg.chat_id_.."}\n߷رابط الجروب \n ["..LinkGroup.."] ",0,'md')
end,nil)
end,nil)
end

if text and text:match("^تغير رد المطور (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المطور (.*)$") 
database:set(bot_id.."Sudo:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *߷تم تغير رد المطور الى »* "..Teext)
end
if text and text:match("^تغير رد المالك (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المالك (.*)$") 
database:set(bot_id.."CoSu:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *߷تم تغير رد المالك الى »* "..Teext)
end
if text and text:match("^تغير رد منشئ الاساسي (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد منشئ الاساسي (.*)$") 
database:set(bot_id.."BasicConstructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *߷تم تغير رد المنشئ الاساسي الى »* "..Teext)
end
if text and text:match("^تغير رد المنشئ (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المنشئ (.*)$") 
database:set(bot_id.."Constructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *߷تم تغير رد المنشئ الى »* "..Teext)
end
if text and text:match("^تغير رد المدير (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المدير (.*)$") 
database:set(bot_id.."Manager:Rd"..msg.chat_id_,Teext) 
send(msg.chat_id_, msg.id_," *߷تم تغير رد المدير الى »* "..Teext)
end
if text and text:match("^تغير رد الادمن (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد الادمن (.*)$") 
database:set(bot_id.."Mod:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *߷تم تغير رد الادمن الى »* "..Teext)
end
if text and text:match("^تغير رد المميز (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المميز (.*)$") 
database:set(bot_id.."Special:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *߷تم تغير رد المميز الى »* "..Teext)
end
if text and text:match("^تغير رد العضو (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد العضو (.*)$") 
database:set(bot_id.."Memp:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *߷تم تغير رد العضو الى »* "..Teext)
end

if text and text:match("^(.*)$") then
if database:get(bot_id..'help'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *߷تم حفظ الكليشه*')
database:del(bot_id..'help'..msg.sender_user_id_)
database:set(bot_id..'help_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help1'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *߷تم حفظ الكليشه*')
database:del(bot_id..'help1'..msg.sender_user_id_)
database:set(bot_id..'help1_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help2'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *߷تم حفظ الكليشه*')
database:del(bot_id..'help2'..msg.sender_user_id_)
database:set(bot_id..'help2_text',text)
return false
end
end

if text and text:match("^(.*)$") then
if database:get(bot_id..'help3'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *߷تم حفظ الكليشه*')
database:del(bot_id..'help3'..msg.sender_user_id_)
database:set(bot_id..'help3_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help4'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *߷تم حفظ الكليشه*')
database:del(bot_id..'help4'..msg.sender_user_id_)
database:set(bot_id..'help4_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help5'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *߷تم حفظ الكليشه*')
database:del(bot_id..'help5'..msg.sender_user_id_)
database:set(bot_id..'help5_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help6'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *߷تم حفظ الكليشه*')
database:del(bot_id..'help6'..msg.sender_user_id_)
database:set(bot_id..'help6_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help7'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *߷تم حفظ الكليشه*')
database:del(bot_id..'help7'..msg.sender_user_id_)
database:set(bot_id..'help7_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help8'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *߷تم حفظ الكليشه*')
database:del(bot_id..'help8'..msg.sender_user_id_)
database:set(bot_id..'help8_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help9'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *߷تم حفظ الكليشه*')
database:del(bot_id..'help9'..msg.sender_user_id_)
database:set(bot_id..'help9_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help10'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *߷تم حفظ الكليشه*')
database:del(bot_id..'help10'..msg.sender_user_id_)
database:set(bot_id..'help10_text',text)
return false
end
end

if text == 'استعاده الاوامر' and DevGOLDW(msg) then
database:del(bot_id..'help_text')
database:del(bot_id..'help1_text')
database:del(bot_id..'help2_text')
database:del(bot_id..'help3_text')
database:del(bot_id..'help4_text')
database:del(bot_id..'help5_text')
database:del(bot_id..'help6_text')
database:del(bot_id..'help7_text')
database:del(bot_id..'help8_text')
database:del(bot_id..'help9_text')
database:del(bot_id..'help10_text')
send(msg.chat_id_, msg.id_, ' *߷تم استعادة الاوامر القديمه*')
end
if text == 'تغير امر الاوامر' and DevGOLDW(msg) then
send(msg.chat_id_, msg.id_, ' *߷الان يمكنك ارسال الكليشه الاوامر*')
database:set(bot_id..'help'..msg.sender_user_id_,'true')
return false 
end
if text == 'تغير امر م1' and DevGOLDW(msg) then
send(msg.chat_id_, msg.id_, ' *߷الان يمكنك ارسال الكليشه م1*')
database:set(bot_id..'help1'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م2' and DevGOLDW(msg) then
send(msg.chat_id_, msg.id_, ' *߷الان يمكنك ارسال الكليشه م2*')
database:set(bot_id..'help2'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م3' and DevGOLDW(msg) then
send(msg.chat_id_, msg.id_, ' *߷الان يمكنك ارسال الكليشه م3*')
database:set(bot_id..'help3'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م4' and DevGOLDW(msg) then
send(msg.chat_id_, msg.id_, ' *߷الان يمكنك ارسال الكليشه م4*')
database:set(bot_id..'help4'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م5' and DevGOLDW(msg) then
send(msg.chat_id_, msg.id_, ' *߷الان يمكنك ارسال الكليشه م5*')
database:set(bot_id..'help5'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م6' and DevGOLDW(msg) then
send(msg.chat_id_, msg.id_, ' *߷الان يمكنك ارسال الكليشه م6*')
database:set(bot_id..'help6'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م7' and DevGOLDW(msg) then
send(msg.chat_id_, msg.id_, ' *߷الان يمكنك ارسال الكليشه م7*')
database:set(bot_id..'help7'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م8' and DevGOLDW(msg) then
send(msg.chat_id_, msg.id_, ' *߷ الان يمكنك ارسال الكليشه م8*')
database:set(bot_id..'help8'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م9' and DevGOLDW(msg) then
send(msg.chat_id_, msg.id_, ' *߷الان يمكنك ارسال الكليشه م9*')
database:set(bot_id..'help9'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م10' and DevGOLDW(msg) then
send(msg.chat_id_, msg.id_, ' *߷الان يمكنك ارسال الكليشه م10*')
database:set(bot_id..'help10'..msg.sender_user_id_,'true')
return false 
end
if text == 'الاوامر' or text == 'اوامر' or text == 'الأوامر' then
local Text =[[
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ قم بأختيار اللغه.. ↑↓
◍ Choose language.. ↑↓ 
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'english 𝅘𝅥𝅮', callback_data=msg.sender_user_id_.."/hlepp"}, {text = 'عربي 𝅘𝅥𝅮', callback_data=msg.sender_user_id_.."/helpp1"}, 
},
{
{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}, 
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if DAata == '/helpp' then
local Teext =[[
ɢʀᴏᴜᴘ ᴄᴏᴍᴍᴀɴᴅ𝙨 𖤍
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉┉ ≈ ┉ ≈ ┉ 
𖢄️╿¹ ⤍ Protection orders.
𖢄️╿² ⤍ Disable and activate.
𖢄️╿³ ⤍ Orders place.
𖢄️╿⁴ ⤍ Scan and delete orders.
𖢄️╿₅ ⤍ Media orders.
𖢄️╿₆ ⤍ Rum orders.
𖢄️╿₇ ⤍ Entertainment orders.
𖢄️╿₈ ⤍ Developer orders.
𖢄️╿₉ ⤍ Basic developer.
𖢄️╿¹₀ ⤍ Members' orders
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉┉ ≈ ┉ ≈ ┉ 
[ 𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩](https://t.me/BLACK_TEAM_4) 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '¹', callback_data="/help1"},{text = '²', callback_data="/help2"},{text = '³', callback_data="/help3"}},
{{text = '⁴', callback_data="/help4"},{text = '₅', callback_data="/help5"}},
{{text = '₆', callback_data="/help6"},{text = '₇', callback_data="/help7"},{text = '₈', callback_data="/help8"}},
{{text = '₉', callback_data="/help9"},{text = '¹₀', callback_data="/help10"}},
{{text = '𝘾𝙃 𝙎𝙊𝙐𝙍𝘾𝙀 𐇑', url="t.me/BLACK_TEAM_4"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
return false
end
if DAata == '/helpp1' then
local Teext =[[
اوامر المجموعه 𖤍
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉┉ ≈ ┉ ≈ ┉ 
𖢄️╿¹ ⤍ اوامر الحماية .
𖢄️╿² ⤍ تعطيل وتفعيل .
𖢄️╿³ ⤍ اوامر ضع واضف .
𖢄️╿⁴ ⤍ اوامر مسح وحذف .
𖢄️╿₅ ⤍ اوامر الادمنيه .
𖢄️╿₆ ⤍ اوامر الروم .
𖢄️╿₇ ⤍ اوامر التسليه .
𖢄️╿₈ ⤍ اوامر المطور .
𖢄️╿₉ ⤍ المطور الاساسي .
𖢄️╿¹₀ ⤍ اوامر الاعضاء .
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉┉ ≈ ┉ ≈ ┉ 
[ 𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩](https://t.me/BLACK_TEAM_4) 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '¹', callback_data="/help1"},{text = '²', callback_data="/help2"},{text = '³', callback_data="/help3"}},
{{text = '⁴', callback_data="/help4"},{text = '₅', callback_data="/help5"}},
{{text = '₆', callback_data="/help6"},{text = '₇', callback_data="/help7"},{text = '₈', callback_data="/help8"}},
{{text = '₉', callback_data="/help9"},{text = '¹₀', callback_data="/help10"}},
{{text = '𝘾𝙃 𝙎𝙊𝙐𝙍𝘾𝙀 𐇑', url="t.me/BLACK_TEAM_4"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
return false
end
if text == '𝑠𝑜𝑢𝑟𝑐𝑒 𝑏𝑙𝑎𝑐𝑘 𝑑𝑒𝑣𝑒𝑙𝑜𝑝𝑒𝑟𝑠' then
local Text = [[
𖤍 اهلا بك في قسم مطورين السورس
𖤍 اختر ما تريد معرفته من الاسفل
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '𝑠𝑜𝑢𝑟𝑐𝑒 𝑏𝑙𝑎𝑐𝑘 𝑑𝑒𝑣𝑒𝑙𝑜𝑝𝑒𝑟𝑠 ♩', callback_data="/help12"},{text = '𝐓𝐰𝐚𝐬𝐨𝐥', callback_data="/help11"},
},
{
{text = '𝐂𝐡𝐚𝐧𝐧𝐞𝐥𝐬', callback_data="/help13"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩' then
local Text = [[
𖤍 اهلا بك في قسم مطورين السورس
𖤍 اختر ما تريد معرفته من الاسفل
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '𝑠𝑜𝑢𝑟𝑐𝑒 𝑏𝑙𝑎𝑐𝑘 𝑑𝑒𝑣𝑒𝑙𝑜𝑝𝑒𝑟𝑠 ♩', callback_data="/help12"},{text = '𝐓𝐰𝐚𝐬𝐨𝐥', callback_data="/help11"},
},
{
{text = '𝐂𝐡𝐚𝐧𝐧𝐞𝐥𝐬', callback_data="/help13"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'الابراج' then
local Text = [[
߷اهلا بك عزيزي اختر برجك ⍖ .
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'برج الدلو 𐇑', callback_data="/help22"},{text = 'برج الثور 𐇑', callback_data="/help21"},{text = 'برج الاسد 𐇑', callback_data="/help24"},
},
{
{text = 'برج العذراء 𐇑', callback_data="/help25"},{text = 'برج السرطان 𐇑', callback_data="/help23"},
},
{
{text = 'برج القوس 𐇑', callback_data="/help28"},{text = 'برج العقرب 𐇑', callback_data="/help27"},
},
{
{text = 'برج الميزان 𐇑', callback_data="/help26"},{text = 'برج الجوزاء 𐇑', callback_data="/help20"},
},
{
{text = 'برج الحوت 𐇑', callback_data="/help31"},{text = 'برج الحمل 𐇑', callback_data="/help30"},{text = 'برج الجدي 𐇑', callback_data="/help29"},
},
{
{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url = "https://t.me/BLACK_TEAM_4"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'تعطيل الالعاب الاحترافيه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id..'lockGeamVip'..msg.chat_id_,true)  
send(msg.chat_id_, msg.id_,'*߷تم تعطيل الالعاب الاحترافيه*')
end
if text == 'تفعيل الالعاب الاحترافيه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id..'lockGeamVip'..msg.chat_id_)  
send(msg.chat_id_, msg.id_,'*߷تم تفعيل الالعاب الاحترافيه*')
end
if text == 'الالعاب الاحترافيه' and Special(msg) then  
if not database:get(bot_id..'lockGeamVip'..msg.chat_id_) then
_key = {
{{text="♟ Chess Game ♟",url='https://t.me/T4TTTTBOT?game=chess'}},
{{text="لعبة فلابي بيرد 🐥",url='https://t.me/awesomebot?game=FlappyBird'},{text="تحداني فالرياضيات 🔢",url='https://t.me/gamebot?game=MathBattle'}},
{{text="تحداني في ❌⭕️",url='t.me/XO_AABOT?start3836619'},{text="سباق الدراجات 🏍",url='https://t.me/gamee?game=MotoFX'}},
{{text="سباق سيارات 🏎",url='https://t.me/gamee?game=F1Racer'},{text="متشابه 👾",url='https://t.me/gamee?game=DiamondRows'}},
{{text="كرة قدم ⚽",url='https://t.me/gamee?game=FootballStar'}},
{{text="دومنا🥇",url='https://vipgames.com/play/?affiliateId=wpDom/#/games/domino/lobby'},{text="❕ليدو",url='https://vipgames.com/play/?affiliateId=wpVG#/games/ludo/lobby'}},
{{text="ورق🤹‍♂",url='https://t.me/gamee?game=Hexonix'},{text="Hexonix❌",url='https://t.me/gamee?game=Hexonix'}},
{{text="MotoFx🏍️",url='https://t.me/gamee?game=MotoFx'}},
{{text="لعبة 2048 🎰",url='https://t.me/awesomebot?game=g2048'},{text="Squares🏁",url='https://t.me/gamee?game=Squares'}},
{{text="Atomic 1▶️",url='https://t.me/gamee?game=AtomicDrop1'},{text="Corsairs",url='https://t.me/gamebot?game=Corsairs'}},
{{text="LumberJack",url='https://t.me/gamebot?game=LumberJack'}},
{{text="LittlePlane",url='https://t.me/gamee?game=LittlePlane'},{text="RollerDisco",url='https://t.me/gamee?game=RollerDisco'}},
{{text="🦖 GOLD Game 🦖",url='https://t.me/T4TTTTBOT?game=GOLD'},{text="🐍 3D Snake Game 🐍",url='https://t.me/T4TTTTBOT?game=snake'}},
{{text="🔵 Color Game 🔴",url='https://t.me/T4TTTTBOT?game=color'}},
{{text="🚀 Rocket Game 🚀",url='https://t.me/T4TTTTBOT?game=rocket'},{text="🏹 Arrow Game 🏹",url='https://t.me/T4TTTTBOT?game=arrow'}},
{{text = '𝘾𝙃 𝙎𝙊𝙐𝙍𝘾𝙀 𐇑', url="t.me/BLACK_TEAM_4"}},
{{text = '𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶', url="t.me/UUOUOU_7"}},
}
send_inlin_key(msg.chat_id_," *߷قائمه الالعاب الاحترافيه اضغط للعب*",_key,msg.id_)
else
send(msg.chat_id_, msg.id_," *߷الالعاب الاحترافيه معطله في الوقت الحالي .*")
end
end
if text == "تعطيل الزخرفه" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*߷تم تعطيل الزخرفه*')
database:set(bot_id.." amir:zhrf_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل الزخرفه" and Manager(msg) then
send(msg.chat_id_, msg.id_,'*߷تم تفعيل الزخرفه*')
database:set(bot_id.." amir:zhrf_Bots"..msg.chat_id_,"open")
end
if text and text:match("^زخرفه (.*)$") and database:get(bot_id.." amir:zhrf_Bots"..msg.chat_id_) == "open" then
local TextZhrfa = text:match("^زخرفه (.*)$")
zh = https.request('https://vvvzvv.ml/amirZhfa/Teland.php?en='..URL.escape(TextZhrfa)..'')
zx = JSON.decode(zh)
t = "\n*߷قائمه الزخرفه* \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉  \n"
i = 0
for k,v in pairs(zx.ok) do
i = i + 1
t = t..i.."-  "..v.." \n"
end
send(msg.chat_id_, msg.id_, t..'┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n߷[𝘾𝙃 𝙎𝙊𝙐𝙍𝘾𝙀 𐇑](t.me/BLACK_TEAM_4) ')
end
if text == "تعطيل الابراج" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*߷تم تعطيل الابراج*')
database:set(bot_id.." amir:brj_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل الابراج" and Manager(msg) then
send(msg.chat_id_, msg.id_,'*߷تم تفعيل الابراج*')
database:set(bot_id.." amir:brj_Bots"..msg.chat_id_,"open")
end
if text and text:match("^برج (.*)$") and database:get(bot_id.." amir:brj_Bots"..msg.chat_id_) == "open" then
local Textbrj = text:match("^برج (.*)$")
gk = https.request('https://vvvzvv.ml/amirBrg/Teland.php?br='..URL.escape(Textbrj)..'')
br = JSON.decode(gk)
i = 0
for k,v in pairs(br.ok) do
i = i + 1
t = v.."\n"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "تعطيل حساب العمر" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*߷تم تعطيل حساب العمر*')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"close")
end
if text == "تعطيل حساب العمر" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*߷تم تعطيل حساب العمر*')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل حساب العمر" and Manager(msg) then
send(msg.chat_id_, msg.id_,'*߷تم تفعيل حساب العمر*')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"open")
end
if text and text:match("^احسب (.*)$") and database:get(bot_id.." amir:age_Bots"..msg.chat_id_) == "open" then
local Textage = text:match("^احسب (.*)$")
ge = https.request('https://vvvzvv.ml/amirOmr/Teland.php?age='..URL.escape(Textage)..'')
ag = JSON.decode(ge)
i = 0
for k,v in pairs(ag.ok) do
i = i + 1
t = v.."\n"
end
send(msg.chat_id_, msg.id_, t)
end
if text and not database:get(bot_id.."AutoFile") then
Time = database:get(bot_id.."AutoFile:Time")
if Time then 
if Time ~= os.date("%x") then  
local list = database:smembers(bot_id..'Chek:Groups') 
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'GOLDW Chat'
link = database:get(bot_id.."Private:Group:Link"..msg.chat_id_) or ''
CoSu = database:smembers(bot_id..'CoSu'..v)
ASAS = database:smembers(bot_id..'Basic:Constructor'..v)
MNSH = database:smembers(bot_id..'Constructor'..v)
MDER = database:smembers(bot_id..'Manager'..v)
MOD = database:smembers(bot_id..'Mod:User'..v)
if k == 1 then
t = t..'"'..v..'":{"GOLDW":"'..NAME..'",'
else
t = t..',"'..v..'":{"GOLDW":"'..NAME..'",'
end
if #CoSu ~= 0 then 
t = t..'"CoSu":['
for k,v in pairs(CoSu) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(SUDO, msg.id_,0, 1, nil, './'..bot_id..'.json', '߷عدد مجموعات التي في البوت { '..#list..'}')
database:set(bot_id.."AutoFile:Time",os.date("%x"))
end
else 
database:set(bot_id.."AutoFile:Time",os.date("%x"))
end
end
if text == "امسح" and Manager(msg) then 
local cun = database:smembers(bot_id..":IdMsg:"..msg.chat_id_)
for k,v in pairs(cun) do 
DeleteMessage(msg.chat_id_, {[0] = v})
end
send(msg.chat_id_, msg.id_,"߷تم مسح الميديا بنجاح")
end
if text == "غنيلي" and not database:get(bot_id.."sing:for:me"..msg.chat_id_) then
data,res = https.request('https://vvvzvv.ml/amirVois/Teland.php')
if res == 200 then
audios = json:decode(data)
if audios.Info == true then
local Text ='𖢄︙تم اختيار المقطع الصوتي لك*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝘾𝙃 𝙎𝙊𝙐𝙍𝘾𝙀 𐇑.',url="t.me/BLACK_TEAM_4"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendVoice?chat_id=' .. msg.chat_id_ .. '&voice='..URL.escape(audios.info)..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
end
if text == 'جوكر' or text == 'الجووكر' or text == 'محمد' or text == '𖢄 الجوكر 𖢄' or text == 'قلب جاك' then
local Text =[[
چوڪرّ 𝐽𝑂𝐾𝐸𝑅𐇭
]]
keyboard = {} 
keyboard.inline_keyboard = {

{
{text = 'چوڪرّ 𝐽𝑂𝐾𝐸𝑅𐇭', url = "https://t.me/UUOUOU_7"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/UUOUOU_7&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'قناه تحديثات البوت 𖢄' or text == 'قناه السورس' or text == 'قناة السورس' then
local Text = [[
W𝙀𝙇𝘾𝙊𝙈𝙀 𝙏𝙊 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝘾𝙆 ߷
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹.',url="t.me/BLACK_TEAM_4"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/BLACK_TEAM_4&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'خالد' or text == 'قلب جوكر' or text == 'مبرمج السورس' or text == '𖢄 جاك 𖢄' or text == 'قلب الجوكر' then
local Text =[[
جٰـہٰٖاٰكٰـہٰٖ 𝚓𝚊𝚌𝚔 ⇡
]]
keyboard = {} 
keyboard.inline_keyboard = {

{
{text = 'جٰـہٰٖاٰكٰـہٰٖ 𝚓𝚊𝚌𝚔 ⇡', url = "https://t.me/V_P_E"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/V_P_E&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == "اسئله دينيه" or text == "اساله دينيه" then 
local TWEET_Msg = { 
"من هو الصحابي الذي عند موته اهتز عرش الرحمن؟ ",
"من هي أخر من توفى من زوجات الرسول صلى الله عليه وسلم؟ ",
"سورة ذكرت فيها البسملة مرتين، أذكر اسم السورة مع ذكر أماكنها وأرقام الآيات؟ ",
"ما هي أطول كلمة في القرآن الكريم؟ مع ذكر اسم السورة الموجودة فيها الآية، ورقم الآية؟ ",
"ما هي أطول سورة في القرآن، مع ذكر عدد آياتها؟",
"ما هي أقصر سورة في القرآن الكريم، مع ذكر عدد آياتها؟ ",
" من هي الأم التي لم تلد؟",
"ما الذي يطلق على الميته التي تقع من مكان مرتفع ؟ ",
"ما هو الحيوان الذي إذا تغير دمه أصبح طاهر؟ ",
" سماه الرسول صلى الله عليه وسلم فرعون أمته؟ ",
"من الذي عدلت شهادته شهادة الرجلين؟ ",
"ما أول ما تكلم به رسول الله صلى الله عليه وسلم حين قدم المدينة؟ ",
"ما هو اللقب الذي أطلقته أهل مكة على النبي صلى الله عليه وسلم قبل البعثة؟ ",
"من هو أكبر أعمام النبي صلى الله عليه وسلم؟ ",
"متى كانت غزوة الخندق؟",
"ما هي الأداة الذي قتل بها قابيل لأخيه هابيل؟ ",
"من هو النبي الذي سمى بالذبيح؟ ",
"كم يوم ظل إبراهيم في النار؟ ",
" ما الذي يطلق على الميته التي تقع من مكان ",
" ما هو الحيوان الذي إذا تغير دمه أصبح طاهر؟",
"من هو أول من آمن بنبوة الرسول صلى الله عليه وسلم قبل أن يبعث رسولاً؟ ",
"سورة في القرآن الكريم لم تبدأ بالبسملة، فما هي؟  ",
"من هي السيدة الملقبة بجدة العرب؟ ",
"سورتان في القرآن الكريم معروفتين باسم الزهراوان، فما هما؟ ",
} 
send(msg.chat_id_, msg.id_,'['..TWEET_Msg[math.random(#TWEET_Msg)]..']')  
return false 
end
if text == "بروفايل" and not  database:get(bot_id.."sing:for:me"..msg.chat_id_) then 
ght = math.random(1,28); 
local Text ='تم اختيار البروفايل لك' 
keyboard = {}  
keyboard.inline_keyboard = { 
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹.',url="t.me/BLACK_TEAM_4"}},
} 
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/S_A55_D/'..ght..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text == 'مبرمجين السورس' or text == 'مطورين السورس' or text == 'التسنن' then
local Text = [[
W𝙀𝙇𝘾𝙊𝙈𝙀 𝙏𝙊 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝘾𝙆 ߷
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝑠𝑜𝑢𝑟𝑐𝑒 𝑏𝑙𝑎𝑐𝑘 𝑑𝑒𝑣𝑒𝑙𝑜𝑝𝑒𝑟𝑠 ♩',url="t.me/Dv_GOLD"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/BLACK_TEAM_4&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == '𖢄 ملف games.lua'  then
local Text = [[
ـ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
ـ 1 {games.lua} » 
- هذا ملف العاب السورس لتفعيل هذا الملف اكتب في اي جروب البوت موجوده تفعيل games.lua
ـ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'توضيح تفعيل المتحر',url="https://t.me/BLACK_TEAM_4/426"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == '𖢄 ملف Reply.lua'  then
local Text = [[
ـ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
ـ 4 {Reply.lua} » 
- هذا ملف خاص ب ردود البوت لتفعيل هذا الملف اكتب في اي جروب البوت موجوده تفعيل Reply.lua ولتعطيل الردود اكتب تعطيل Reply.lua
ـ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'توضيح تفعيل المتحر',url="https://t.me/BLACK_TEAM_4/426"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == '𖢄 ملف all.lua'  then
local Text = [[
ـ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
ـ 2 {all.lua} » 
- هذا ملف خاص لتعطيل او تفعيل التاك (امر all) لتفعيل هذا الملف اكتب في اي جروب البوت موجوده تفعيل all.lua
ـ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'توضيح تفعيل المتحر',url="https://t.me/BLACK_TEAM_4/426"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == '𖢄 ملف commands.lua'  then
local Text = [[
ـ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
ـ 3 {commands.lua} » 
- هذا ملف فيه اوامر المجموعات بصيغه عاديه لتفعيل هذا الملف اكتب في اي جروب البوت موجوده تفعيل commands.lua
ـ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'توضيح تفعيل المتحر',url="https://t.me/BLACK_TEAM_4/426"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == "صور انيمي" or text == 'انيمي' and not  database:get(bot_id.."sing:for:me"..msg.chat_id_) then 
ght = math.random(1,230); 
local Text ='تم اختيار هذه الصوره لـك' 
keyboard = {}  
keyboard.inline_keyboard = { 
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
} 
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/taha_ow/'..ght..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text == "مهنتي" or text == "مستقبلي" or text == "مهنتيي" then 
local TWEET_Msg = { 
"انت هقر كبير ",
"مفتش مباحث 🕵️ ",
"مدرس 👩‍🏫 ",
"دكتور حريم🤰",
"كلب كبير  🌚 ",
" حرامي وثخ 🥷 ",
"مبرمج هقر  👨‍💻",
"ظابط وكده 👮 ",
" صايع حقير  💃 ",
" هقر قلبي ❤",
" مهندس 👨‍🔧 ",
"جزار  👨‍🚒 ",
"فلااح  👨‍🌾 ",
"رسام  👨‍🎨 ",
"روش فشخ 💂‍♂",
" سوبر مان 🦸‍♂",
" قاضي 👨‍⚖",
" ساحر 🧛",
"منظف حمامات 🧻",
} 
send(msg.chat_id_, msg.id_,'['..TWEET_Msg[math.random(#TWEET_Msg)]..']')  
return false 
end
if text == "ادعيه" or text == "ادعيه دينيه" then 
local TWEET_Msg = { 
"اللهم طهر قلبي من كل خلق لا يرضيك اللهم يا مقلب القلوب ثبت قلوبنا وقلوب إخواننا على دينك وطاعتك. إلهي عوضني خيرا فيمن فقدت واحفظ ",
"إلهي عوضني خيرا فيمن فقدت واحفظ لي من أحببت اللهم اجعلني أنا وقارئ هذه الرسالة من السبعين ألفا الذين يدخلون الجنة بلا حساب ولا سابق عذاب أمين يا الله حسبي الله لا إله إلا هو عليه توكلت وهو رب العرش العظيم ",
"والْعَصْر إِنَّ الْإِنْسَان لَفِي خُسْر إِلَّا الَّذِينَ آمَنُوا وعَمِلُوا الصَّالِحَات وتَوَاصَوْا بِالْحَقِّ وتَوَاصَوْا بِالصَّبْرِ. ",
"اذكر الله في راحِتك ليذكُرك في حاجْتك ",
"‏اللهمَّ أَخْرِجْنَا من ضيقِ أنفُسِنا إلى سِعةِ رحمتِكَ 💙 ",
"يارب يامنزل الغيث من السماء ابعد البلاء عن بلادنا و بلاد المسلمين اجمعين 💙 ",
"يارب إن ضاقت بي الدنيا من الناس ارحمني برحمتك يا لطيف يا رحيم 💙 ",
"‏اللهمّ الكتف الثابت الذي لا تهون عليه مواجعنا 💙 ",
"‏اللهم صّلِ وسَلّمْ عَلى نَبِيْنَا مُحَمد ﷺ 💙 ",
"‏اللهم أجعل لي نصيب في كل شئ أحببته💙 ",
"اجعلوا للقرآن نصيبًا مِن فجركم 💙 ",
"اللهم اشفي كل عزيز و غالي 💙 ",
"يارب ابعد عنا ضيق الدنيا و متاعبها 💙 ",
"يارب العالمين اغفر لي وارحمن ",
"‏مامن لسان يستغفر إلا فتحت له الدنيا بما فيها أستغفرك ربي وأتوب إليك ",
} 
send(msg.chat_id_, msg.id_,'['..TWEET_Msg[math.random(#TWEET_Msg)]..']')  
return false 
end
if text == "انصحني" or text == "انصحنى" or text == "انصح" then 
local TWEET_Msg = { 
"عامل الناس بأخلاقك ولا بأخلاقهم", 
"الجمال يلفت الأنظار لكن الطيبه تلفت القلوب ", 
"الاعتذار عن الأخطاء لا يجرح كرامتك بل يجعلك كبير في نظر الناس ",
"لا ترجي السماحه من بخيل.. فما في البار لظمان ماء",
"لا تحقرون صغيره إن الجبال من الحصي",
"لا تستحي من إعطاء فإن الحرمان أقل منه ", 
"لا تظلم حتى لا تتظلم ",
"لا تقف قصاد الريح ولا تمشي معها ",
"لا تكسب موده التحكم الا بالتعقل",
"لا تمد عينك في يد غيرك ",
"لا تملح الا لمن يستحقاها ويحافظ عليها",
"لا حياه للإنسان بلا نبات",
"لا حياه في الرزق.. ولا شفاعه في الموت",
"كما تدين تدان",
"لا دين لمن لا عهد له ",
"لا سلطان على الدوق فيما يحب أو بكره",
"لا مروه لمن لادين له ",
"لا يدخل الجنه من لايأمن من جازه بوائقه",
"يسروا ولا تعسروا... ويشورا ولا تنفروا",
"يدهم الصدر ما يبني العقل الواسع ",
"أثقل ما يوضع في الميزان يوم القيامة حسن الخلق ",
"أجهل الناس من ترك يقين ما عنده لظن ما عند الناس ",
"أحياناً.. ويصبح الوهم حقيقه ",
"مينفعش تعاتب حد مبيعملش حساب لزعلك عشان متزعلش مرتين . ",
"السفر ومشاهده اماكن مختلفه وجديده ",
"عدم تضيع الفرص واسثمارها لحظه مجبئها ",
" اعطاء الاخرين اكثر من ما يتوقعون",
"معامله الناس بلطف ولكن عدم السماح لاحد بستغالال ذالك ",
"تكوين صدقات جديده مع الحفظ بلاصدقاء القودامي ",
"تعلم اصول المهنه بدلا من تضيع الوقت ف تعلم حيل المهنه ",
"مدح ع الاقل ثلاث اشخاص يوميا ",
"النظر ف عيون الشخاص عند مخاطبتهم ",
"التحلي بلسماح مع الاخرين او النفس ",
"الاكثار من قول كلمه شكرا ",
" مصافحه الاخرين بثبات وقوة ",
"الابتعاد عن المناطق السيئه السمعه لتجنب الاحداث السئه ",
" ادخار 10٪ع الاقل من الدخل",
" تجنب المخاوف من خلال التعلم من تجارب مختلفه",
" الحفاظ ع السمعه لانها اغلي ما يملك الانسان",
" تحويل الاعداء الي اصدقاء من خلال القيام بعمل جيد",
"لا تصدق كل ما تسمعع. ولا تنفق كل ما تمتلك . ولا تنم قدر ما ترغب ",
" اعتني بسمعتك جيدا فستثبت للك الايام انها اغلي ما تملك",
"حين تقول والدتك ستندم ع فعل ذالك ستندم عليه غالبا.. ",
" لا تخش العقبات الكبيره فخلفها تقع الفرص العظيمه",
"قد لا يتطلب الامر اكثر من شخص واحد لقلب حياتك رأس ع عقب ",
"اختر رفيقه حياتك بحرص فهو قرار سيشكل 90٪من سعادتك او بؤسك ",
" اقلب اداءك الاصدقاء بفعل شي جميل ومفجائ لهم",
"حين تدق الفرصه ع باباك ادعوها للبيت ",
"تعلم القواعد جيدا ثن اكسر بعدها ",
"احكم ع نجاحك من خلال قدرتك ع العطاء وليس الاخذ ",
" لا تتجاهل الشيطان مهما بدل ثيابه",
"ركز ع جعل الاشياء افضل وليس اكبر او اعظم ",
"كن سعيد  بما تمتلك واعمل لامتلاك ما تريد ",
"اعط الناس اكثر من ما يتوقعون ",
" لا تكن منشغل لدرجه عدم التعرف ع اصدقاء جدد",
"استحمه يوم العيد يمعفن🤓",
"مش تحب اي حد يقرب منك ",
" خليك مع البت راجل خليك تقيل🥥",
" انصح نفسك بنفسك بمت😆",
" كنت نصحت نفسي ياخويا😹", 
} 
send(msg.chat_id_, msg.id_,'['..TWEET_Msg[math.random(#TWEET_Msg)]..']')  
return false 
end
if text == "تويت بالصوره" then  
ght = math.random(1,33);  
local Text ='مرحبا إليك تويت بالصوره'  
keyboard = {}   
keyboard.inline_keyboard = {  
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/UUOUOU_7"}},
}  
local msg_id = msg.id_/2097152/0.5  
https.request("https://api.telegram.org/bot"..token..'/sendphoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/koko12300'..ght..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text == "ثيم" then  
ght = math.random(1,33);  
local Text ='الستخدم ثيم اخر اكتب ثيم'  
keyboard = {}   
keyboard.inline_keyboard = {  
 {{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}  
local msg_id = msg.id_/2097152/0.5  
https.request("https://api.telegram.org/bot"..token..'/sendDocument?chat_id=' .. msg.chat_id_ .. '&document=https://t.me/ahmedthem1/'..ght..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text == "لو خيروك بالصوره" then  
ght = math.random(1,33);  
local Text ='مرحبا اليك لو خيروك بالصوره'  
keyboard = {}   
keyboard.inline_keyboard = {  
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}  
local msg_id = msg.id_/2097152/0.5  
https.request("https://api.telegram.org/bot"..token..'/sendphoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/ahmed_1asd/'..ght..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text == "شنو رئيك بهذا" or text == "شنو رئيك بهذ" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"ادب سسز يباوع علي بنات ??🥺"," مو خوش ولد 😶","بقلبي وما احبه 😾😹"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "شنو رئيك بهاي" or text == "شنو رئيك بهايي" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"دور حلوين 🤕😹","جكمه وصخه عوفها ☹️😾","حقيره ومنتكبره 😶😂"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "هينه" or text == "رزله" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"ولك هيو لتندك بسيادك لو بهاي 👞👈","ميستاهل اتعبي روحي ويا لانه عار","عوفه يروحي هاذا طيز يضل يمضرط🤣"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "مصه" or text == "بوسه" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"مووووووووواححح????","مابوس ولي😌😹","خدك/ج نضيف 😂","البوسه بالف حمبي 🌝💋","خلي يزحفلي وابوسه 🙊😻","كل شويه ابوسه كافي 😏","ماابوسه والله هذا بقلبي🦎","محح هاي لخولات صاكه??"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "كت تويت" or text == "تويت" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"آخر مرة زرت مدينة الملاهي؟","آخر مرة أكلت أكلتك المفضّلة؟","الوضع الحالي؟\n‏1. سهران\n‏2. ضايج\n‏3. أتأمل","آخر شيء ضاع منك؟","كلمة أخيرة لشاغل البال؟","طريقتك المعتادة في التخلّص من الطاقة السلبية؟","شهر من أشهر العام له ذكرى جميلة معك؟","كلمة غريبة من لهجتك ومعناها؟🤓","‏- شيء سمعته عالق في ذهنك هاليومين؟","متى تكره الشخص الذي أمامك حتى لو كنت مِن أشد معجبينه؟","‏- أبرز صفة حسنة في صديقك المقرب؟","هل تشعر أن هنالك مَن يُحبك؟","اذا اكتشفت أن أعز أصدقائك يضمر لك السوء، موقفك الصريح؟","أجمل شيء حصل معك خلال هاليوم؟","صِف شعورك وأنت تُحب شخص يُحب غيرك؟👀💔","كلمة لشخص غالي اشتقت إليه؟??","آخر خبر سعيد، متى وصلك؟","أنا آسف على ....؟","أوصف نفسك بكلمة؟","صريح، مشتاق؟","‏- صريح، هل سبق وخذلت أحدهم ولو عن غير قصد؟","‏- ماذا ستختار من الكلمات لتعبر لنا عن حياتك التي عشتها الى الآن؟💭","‏- فنان/ة تود لو يدعوكَ على مائدة عشاء؟😁❤","‏- تخيّل شيء قد يحدث في المستقبل؟","‏- للشباب | آخر مرة وصلك غزل من فتاة؟🌚","شخص أو صاحب عوضك ونساك مُر الحياة ما اسمه ؟","اذا شفت حد واعجبك وعندك الجرأه انك تروح وتتعرف عليه ، مقدمة الحديث شو راح تكون ؟."," فنانك المُفضل؟","لو خيروك تصاحب الناس الاذكياء او الناس المرحين","اسم معلم ترك اثراً جميل عليك رغم قسوتة.؟","وش الحب بنظرك؟","لو خيروك جاي او قهوه","لو فزعت/ي لصديق/ه وقالك مالك دخل وش بتسوي/ين؟","شاركنا أقوى بيت شِعر من تأليفك؟","نصيحه تبدا ب -لا- ؟","كل شيء يهون الا ؟","عندك الشخص الي مستعد يوقف ضد العالم عشانك.؟","العلاقة السرية دائماً تكون حلوة؟","منشن شخص واعترف له بشي","منشن لصديقك المُقرب؟.","اخر خيانه؟.","أول حرف من اسم الحب؟","تشارك كل شي لاهلك ولا فيه أشياء ما تتشارك؟","أكثر شيء تغيّر في أسلوب حياتك بعد كورونا ؟","هات شعورك بسطر اغُنيه؟","شيء مهما حطيت فيه مصاري بتكون مبسوط؟","اغرب شي سويته ؟","كيف تشوف الجيل هذا؟","اخر همك في الحياة ؟","انت من الناس الكتومة ولا تفضفض؟","اكثر مكان تروحه لحالك ؟","قوة الصداقة بشو بتتكون؟","تطبيق تبي تحذفه من جهازك بس مضطر تستخدمه ؟","كم أعلى مبلغ جمعته؟","اخر شي شريته ؟","كلمة للشخص اللي يسب ويسكر؟","لعبة بجوالك تلعبها دايم ؟","مر عليك موقف محرج؟","علمنا عن تجربه خلت شخصيتك اقوى ؟","يوم من أيام الأسبوع روتينه ممل عندك ؟","عندك شخص تسميه ثالث والديك؟","شو هو طعامك المفضل؟","اخر همك في الحياة ؟","شو حابب تقول للاشخاص اللي بتدخل حياتك؟","عبر عن حبك او كرهك لشخص ما تقدر توصل له مشاعرك","موهبتك المكبوتة ؟","انت من الناس اللي تتغزل بالكل ولا بالشخص اللي تحبه بس؟","عبر عن حبك او كرهك لشخص ما تقدر توصل له مشاعرك","ماذا يعني لك حرف A","ماذا يعني لك حرحرM","نسبة رضاك عن نفسك من 10 ؟","عندكم شخص بالبيت بصلح اي شي بيخرب؟","تحس نفسك هطف ؟","تدوس على قلبك او كرامتك؟","  تحس حياتك فاشله ولا ناجحه؟","لو الشخص اللي تحبه قال بدخل حساباتك بتعطيه ولا بترفض؟","ميزة وعيب فيك ؟","وش ينادونك في البيت ؟", }  
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end

if text == 'تفعيل الردود' and Manager(msg) then   
database:del(bot_id..'lock:reply'..msg.chat_id_)  
Text = ' *߷تم تفعيل الردود*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الردود' and Manager(msg) then  
database:set(bot_id..'lock:reply'..msg.chat_id_,true)  
Text = '\n *߷تم تعطيل الردود*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'رابط حذف' or text == 'رابط الحذف' or text == 'بوت حذف' or text == 'بوت الحذف' then  
local Text = [[  
[𝐋𝐢𝐧𝐤 𝐓𝐨 𝐃𝐞𝐥𝐞𝐭𝐞 𝐒𝐨𝐜𝐢𝐚𝐥.](t.me/BLACK_TEAM_4)
]]  
keyboard = {}  
keyboard.inline_keyboard = {  
{{text = 'Telegram',url="https://my.telegram.org/auth?to=delete"},{text = 'Bot Telegram', url="t.me/LC6BOT"}},  
{{text = 'instagram', url="https://www.instagram.com/accounts/login/?next=/accounts/remove/request/permanent/"}},  
{{text = 'Facebook', url="https://www.facebook.com/help/deleteaccount"}}, 
}  
local msg_id = msg.id_/2097152/0.5  
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))  
end
if text and text:match('^الحساب (%d+)$') then
local id = text:match('^الحساب (%d+)$')
local text = 'اضغط لمشاهده الحساب'
tdcli_function ({ID="SendMessage", chat_id_=msg.chat_id_, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=text, disable_web_page_preview_=1, clear_draft_=0, entities_={[0] = {ID="MessageEntityMentionName", offset_=0, length_=19, user_id_=id}}}}, dl_cb, nil)
end
local function oChat(chat_id,cb)
tdcli_function ({
ID = "OpenChat",
chat_id_ = chat_id
}, cb, nil)
end
if text == "صلاحياته" and tonumber(msg.reply_to_message_id_) > 0 then
if tonumber(msg.reply_to_message_id_) ~= 0 then 
function prom_reply(extra, result, success) 
Get_Info(msg,msg.chat_id_,result.sender_user_id_)
end  
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},prom_reply, nil)
end
end
------------------------------------------------------------------------
if text == "صلاحياتي" then 
if tonumber(msg.reply_to_message_id_) == 0 then 
Get_Info(msg,msg.chat_id_,msg.sender_user_id_)
end  
end
------------------------------------------------------------------------
if text and text:match('^صلاحياته @(.*)') then   
local username = text:match('صلاحياته @(.*)')   
if tonumber(msg.reply_to_message_id_) == 0 then 
function prom_username(extra, result, success) 
if (result and result.code_ == 400 or result and result.message_ == "USERNAME_NOT_OCCUPIED") then
SendText(msg.chat_id_,msg.id_,"*߷المعرف غير صحيح \n*")   
return false 
end   
Get_Info(msg,msg.chat_id_,result.id_)
end  
tdcli_function ({ID = "SearchPublicChat",username_ = username},prom_username,nil) 
end 
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
end -- Chat_Type = 'GroupBot' 
end -- end msg 
--------------------------------------------------------------------------------------------------------------
function tdcli_update_callback(data)  -- clback
if data.ID == "UpdateChannel" then 
if data.channel_.status_.ID == "ChatMemberStatusKicked" then 
t = "قام احد المنشئين بطرد البوت من مجموعته\n\n"
tdcli_function({ID ="GetChat",chat_id_="-100"..data.channel_.id_},function(arg,chat)  
local NameChat = chat.title_
t =t.."اسم المجموعه\n"..NameChat
local IdChat = "-100"..data.channel_.id_
t =t.."\n\nايدي المجموعه\n"..IdChat
send(SUDO, msg.id_,t)
database:srem(bot_id..'Chek:Groups','-100'..data.channel_.id_)  
end,nil)
end
end
if data.ID == "UpdateNewCallbackQuery" then
local Chat_id = data.chat_id_
local From_id = data.id_
local Msg_id = data.message_id_
local msg_idd = Msg_id/2097152/0.5
local DAata = data.payload_.data_
if DAata and DAata:match("^(%d+)unbeen(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('unbeen',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
database:srem(bot_id..'Ban:User'..Chat_id, OnID)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = Chat_id, user_id_ = OnID, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('\n*𖢄︙تم الغاء حظره بنجاح*')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false
end
if DAata and DAata:match("^(%d+)been(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('been',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if database:get(bot_id..'Lock:kick'..Chat_id) and not Constructor(data) then
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *𖢄︙تم تعطيل الحظر*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false
end
if GOLDSudoBot(OnID) then
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape("*𖢄︙لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false
end
if tonumber(OnID) == tonumber(bot_id) then  
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *𖢄︙لا تسطيع حظر البوت* ")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false
end
if Can_or_NotCan(OnID, Chat_id) == true then
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('\n *𖢄︙عذرا لا تستطيع حظر* ( '..Rutba(OnID,Chat_id)..' )')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = Chat_id, user_id_ = OnID, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,da) 
if (da and da.code_ and da.code_ == 400 and da.message_ == "CHAT_ADMIN_REQUIRED") then 
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(' *𖢄︙ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false  
end
if data.can_be_deleted_ == false then 
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(' *𖢄︙البوت ليس ادمن يرجى ترقيتي !*')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false  
end
database:sadd(bot_id..'Ban:User'..Chat_id, OnID)
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('\n*𖢄︙تم حظره بنجاح*')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
chat_kick(Chat_id, OnID)
end,nil)   
end
return false
end
if DAata and DAata:match("^(%d+)unMut(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('unMut',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if not database:sismember(bot_id..'Muted:User'..Chat_id,OnID) then
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('\n*𖢄︙الشخص غير مكتوم*')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false
end
database:srem(bot_id..'Muted:User'..Chat_id, OnID)
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('\n*𖢄︙تم الغاء كتمه بنجاح*')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false
end
if DAata and DAata:match("^(%d+)Mut(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('Mut',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if tonumber(OnID) == tonumber(bot_id) then  
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape( " *𖢄︙لا تسطيع كتم البوت* ")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false 
end
if GOLDSudoBot(OnID) then
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape("*𖢄︙لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false 
end
if Can_or_NotCan(OnID, Chat_id) == true then
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('\n *𖢄︙عذرا لا تستطيع كتم* ( '..Rutba(OnID,Chat_id)..' )')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
else
if data.can_be_deleted_ == false then 
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(' *𖢄︙البوت ليس ادمن يرجى ترقيتي !*')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false  
end
database:sadd(bot_id..'Muted:User'..Chat_id, OnID)
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('\n*𖢄︙تم كتمه بنجاح*')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
return false
end
if DAata and DAata:match("^(%d+)unrestrict(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('unrestrict',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. Chat_id .. "&user_id=" .. OnID .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('\n*𖢄︙تم الغاء تقيبده بنجاح*')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false
end
if DAata and DAata:match("^(%d+)restrict(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('restrict',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if tonumber(OnID) == tonumber(bot_id) then  
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape( " *𖢄︙لا تسطيع تقييد البوت* ")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false 
end
if GOLDSudoBot(OnID) then
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape("*𖢄︙لا تستطيع (كتم،طرد،حظر،تققيد) 𝓭𝓮𝓿𝓮𝓵𝓸𝓹𝓮𝓻 𓏶 او الاساسي*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false 
end
if Can_or_NotCan(OnID, Chat_id) == true then
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('\n *𖢄︙عذرا لا تستطيع تقييد* ( '..Rutba(OnID,Chat_id)..' )')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
else
if data.can_be_deleted_ == false then 
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(' *𖢄︙البوت ليس ادمن يرجى ترقيتي !*')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false  
end
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..Chat_id.."&user_id="..OnID)
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('\n*𖢄︙تم تقييده بنجاح*')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
return false
end
if DAata and DAata:match("^(%d+)UpS(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('UpS',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if SudoBotCoSu(data) then
if database:sismember(bot_id..'Basic:Constructor'..Chat_id,OnID) then
datainlineText = "لديه رتبه منشئ اساسي"
datainline = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Constructor'..Chat_id,OnID) then
datainlineText = "لديه رتبه منشئ"
datainline = {
{{text = '𖢄 منشئ اساسي',callback_data=data.sender_user_id_.."Basic"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Manager'..Chat_id,OnID) then
datainlineText = "لديه رتبه مدير"
datainline = {
{{text = '𖢄 منشئ',callback_data=data.sender_user_id_.."Constructor"..OnID}},
{{text = '𖢄 منشئ اساسي',callback_data=data.sender_user_id_.."Basic"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Mod:User'..Chat_id,OnID) then
datainlineText = "لديه رتبه ادمن"
datainline = {
{{text = '𖢄 مدير',callback_data=data.sender_user_id_.."Manager"..OnID}},
{{text = '𖢄 منشئ',callback_data=data.sender_user_id_.."Constructor"..OnID}},
{{text = '𖢄 منشئ اساسي',callback_data=data.sender_user_id_.."Basic"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Special:User'..Chat_id,OnID) then
datainlineText = "لديه رتبه مميز"
datainline = {
{{text = '𖢄 ادمن',callback_data=data.sender_user_id_.."mod"..OnID}},
{{text = '𖢄 مدير',callback_data=data.sender_user_id_.."Manager"..OnID}},
{{text = '𖢄 منشئ',callback_data=data.sender_user_id_.."Constructor"..OnID}},
{{text = '𖢄 منشئ اساسي',callback_data=data.sender_user_id_.."Basic"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
else
datainlineText = "لا يمتلك رتبه"
datainline = {
{{text = '𖢄 مميز',callback_data=data.sender_user_id_.."Special"..OnID}},
{{text = '𖢄 ادمن',callback_data=data.sender_user_id_.."mod"..OnID}},
{{text = '𖢄 مدير',callback_data=data.sender_user_id_.."Manager"..OnID}},
{{text = '𖢄 منشئ',callback_data=data.sender_user_id_.."Constructor"..OnID}},
{{text = '𖢄 منشئ اساسي',callback_data=data.sender_user_id_.."Basic"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
end
elseif BasicConstructor(data) then
if database:sismember(bot_id..'Constructor'..Chat_id,OnID) then
datainlineText = "عذرا الشخص يمتلك اعلى رتبه تستطيع  رفعه لها"
datainline = {	
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Manager'..Chat_id,OnID) then
datainlineText = "لديه رتبه مدير"
datainline = {
{{text = '𖢄 منشئ',callback_data=data.sender_user_id_.."Constructor"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Mod:User'..Chat_id,OnID) then
datainlineText = "لديه رتبه ادمن"
datainline = {
{{text = '𖢄 مدير',callback_data=data.sender_user_id_.."Manager"..OnID}},
{{text = '𖢄 منشئ',callback_data=data.sender_user_id_.."Constructor"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Special:User'..Chat_id,OnID) then
datainlineText = "لديه رتبه مميز"
datainline = {
{{text = '𖢄 ادمن',callback_data=data.sender_user_id_.."mod"..OnID}},
{{text = '𖢄 مدير',callback_data=data.sender_user_id_.."Manager"..OnID}},
{{text = '𖢄 منشئ',callback_data=data.sender_user_id_.."Constructor"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
else
datainlineText = "لا يمتلك رتبه"
datainline = {
{{text = '𖢄 مميز',callback_data=data.sender_user_id_.."Special"..OnID}},
{{text = '𖢄 ادمن',callback_data=data.sender_user_id_.."mod"..OnID}},
{{text = '𖢄 مدير',callback_data=data.sender_user_id_.."Manager"..OnID}},
{{text = '𖢄 منشئ',callback_data=data.sender_user_id_.."Constructor"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
end
elseif Constructor(data) then
if database:sismember(bot_id..'Basic:Constructor'..Chat_id,OnID) then
datainlineText = "عذرا الشخص يمتلك رتبه اعلى من رتبتك"
datainline = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Constructor'..Chat_id,OnID) then
datainlineText = "عذرا الشخص يمتلك رتبه مشابهه ل رتبتك"
datainline = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Manager'..Chat_id,OnID) then
datainlineText = "عذرا الشخص يمتلك اعلى رتبه تستطيع  رفعه لها"
datainline = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Mod:User'..Chat_id,OnID) then
datainlineText = "لديه رتبه ادمن"
datainline = {
{{text = '𖢄 مدير',callback_data=data.sender_user_id_.."Manager"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Special:User'..Chat_id,OnID) then
datainlineText = "لديه رتبه مميز"
datainline = {
{{text = '𖢄 ادمن',callback_data=data.sender_user_id_.."mod"..OnID}},
{{text = '𖢄 مدير',callback_data=data.sender_user_id_.."Manager"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
else
datainlineText = "لا يمتلك رتبه"
datainline = {
{{text = '𖢄 مميز',callback_data=data.sender_user_id_.."Special"..OnID}},
{{text = '𖢄 ادمن',callback_data=data.sender_user_id_.."mod"..OnID}},
{{text = '𖢄 مدير',callback_data=data.sender_user_id_.."Manager"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
end
elseif Manager(data) then
if database:sismember(bot_id..'Basic:Constructor'..Chat_id,OnID) then
datainlineText = "عذرا الشخص يمتلك رتبه اعلى من رتبتك"
datainline = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Constructor'..Chat_id,OnID) then
datainlineText = "عذرا الشخص يمتلك رتبه مشابهه ل رتبتك"
datainline = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Manager'..Chat_id,OnID) then
datainlineText = "عذرا الشخص يمتلك رتبه مشابهه ل رتبتك"
datainline = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Mod:User'..Chat_id,OnID) then
datainlineText = "عذرا الشخص يمتلك اعلى رتبه تستطيع  رفعه لها"
datainline = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Special:User'..Chat_id,OnID) then
datainlineText = "لديه رتبه مميز"
datainline = {
{{text = '𖢄 ادمن',callback_data=data.sender_user_id_.."mod"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
else
datainlineText = "لا يمتلك رتبه"
datainline = {
{{text = '𖢄 مميز',callback_data=data.sender_user_id_.."Special"..OnID}},
{{text = '𖢄 ادمن',callback_data=data.sender_user_id_.."mod"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
end
elseif Mod(data) then
if database:sismember(bot_id..'Basic:Constructor'..Chat_id,OnID) then
datainlineText = "عذرا الشخص يمتلك رتبه اعلى من رتبتك"
datainline = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Constructor'..Chat_id,OnID) then
datainlineText = "عذرا الشخص يمتلك رتبه اعلى من رتبتك"
datainline = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Manager'..Chat_id,OnID) then
datainlineText = "عذرا الشخص يمتلك رتبه اعلى من رتبتك"
datainline = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Mod:User'..Chat_id,OnID) then
datainlineText = "عذرا الشخص يمتلك رتبه مشابهه ل رتبتك"
datainline = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif database:sismember(bot_id..'Special:User'..Chat_id,OnID) then
datainlineText = "عذرا الشخص يمتلك اعلى رتبه تستطيع  رفعه لها"
datainline = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
else
datainlineText = "لا يمتلك رتبه"
datainline = {
{{text = '𖢄 مميز',callback_data=data.sender_user_id_.."Special"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
end
end
bb = {} 
bb.inline_keyboard = datainline
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(datainlineText)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(bb)) 
return false
end
if DAata and DAata:match("^(%d+)Basic(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('Basic',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
database:sadd(bot_id..'Basic:Constructor'..data.chat_id_, OnID)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape("*𖢄︙تم تنفيذ الامر بنجاح*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))
return false
end
if DAata and DAata:match("^(%d+)Constructor(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('Constructor',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
database:sadd(bot_id..'Constructor'..data.chat_id_, OnID)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape("*𖢄︙تم تنفيذ الامر بنجاح*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false
end
if DAata and DAata:match("^(%d+)Manager(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('Manager',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
database:sadd(bot_id..'Manager'..data.chat_id_, OnID)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape("*𖢄︙تم تنفيذ الامر بنجاح*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false
end
if DAata and DAata:match("^(%d+)Mod(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('Mod',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
database:sadd(bot_id..'Mod:User'..data.chat_id_, OnID)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape("*𖢄︙تم تنفيذ الامر بنجاح*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false
end
if DAata and DAata:match("^(%d+)Special(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('Special',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
database:sadd(bot_id..'Special:User'..data.chat_id_, OnID)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape("*𖢄︙تم تنفيذ الامر بنجاح*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false
end
if DAata and DAata:match("^(%d+)unUpS(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('unUpS',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if database:sismember(bot_id..'Basic:Constructor'..Chat_id,OnID) then
Ba = "✅"
else
Ba = "✖"
end
if database:sismember(bot_id..'Constructor'..Chat_id,OnID) then
Co = "✅"
else
Co = "✖"
end
if database:sismember(bot_id..'Manager'..Chat_id,OnID) then
Ma = "✅"
else
Ma = "✖"
end
if database:sismember(bot_id..'Mod:User'..Chat_id,OnID) then
Mo = "✅"
else
Mo = "✖"
end
if database:sismember(bot_id..'Special:User'..Chat_id,OnID) then
Sp = "✅"
else
Sp = "✖"
end
if SudoBotCoSu(data) then
datainline = {
{{text =Ba,callback_data=data.sender_user_id_.."unBasic"..OnID},{text = 'منشئ اساسي',callback_data=data.sender_user_id_.."unBasic"..OnID}},
{{text =Co,callback_data=data.sender_user_id_.."unConstructor"..OnID},{text = 'منشئ',callback_data=data.sender_user_id_.."unConstructor"..OnID}},
{{text =Ma,callback_data=data.sender_user_id_.."unManager"..OnID},{text = 'مدير ',callback_data=data.sender_user_id_.."unManager"..OnID}},
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif BasicConstructor(data) then
datainline = {
{{text =Co,callback_data=data.sender_user_id_.."unConstructor"..OnID},{text = 'منشئ',callback_data=data.sender_user_id_.."unConstructor"..OnID}},
{{text =Ma,callback_data=data.sender_user_id_.."unManager"..OnID},{text = 'مدير ',callback_data=data.sender_user_id_.."unManager"..OnID}},
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif Constructor(data) then
datainline = {
{{text =Ma,callback_data=data.sender_user_id_.."unManager"..OnID},{text = 'مدير ',callback_data=data.sender_user_id_.."unManager"..OnID}},
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif Manager(data) then
datainline = {
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif Mod(data) then
datainline = {
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
end
bb = {} 
bb.inline_keyboard = datainline
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('߷علامه ✅ تعني ان الشخص يمتلك رتبه ويمكنك تنزيلها بالضغط علي الرتبه بالاسفل .')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(bb)) 
return false
end
if DAata and DAata:match("^(%d+)unBasic(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('unBasic',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if database:sismember(bot_id..'Basic:Constructor'..Chat_id,OnID) then
database:srem(bot_id..'Basic:Constructor'..Chat_id,OnID)
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape("تم تنزيله بنجاح ✅").."&show_alert=true")
Ba = "✖"
else
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape("بالفعل هو ليس بمنشئ اساسي ✖").."&show_alert=true")
Ba = "✖"
end
if database:sismember(bot_id..'Constructor'..Chat_id,OnID) then
Co = "✅"
else
Co = "✖"
end
if database:sismember(bot_id..'Manager'..Chat_id,OnID) then
Ma = "✅"
else
Ma = "✖"
end
if database:sismember(bot_id..'Mod:User'..Chat_id,OnID) then
Mo = "✅"
else
Mo = "✖"
end
if database:sismember(bot_id..'Special:User'..Chat_id,OnID) then
Sp = "✅"
else
Sp = "✖"
end
bb = {} 
bb.inline_keyboard = {
{{text =Ba,callback_data=data.sender_user_id_.."unBasic"..OnID},{text = 'منشئ اساسي',callback_data=data.sender_user_id_.."unBasic"..OnID}},
{{text =Co,callback_data=data.sender_user_id_.."unConstructor"..OnID},{text = 'منشئ ',callback_data=data.sender_user_id_.."unConstructor"..OnID}},
{{text =Ma,callback_data=data.sender_user_id_.."unManager"..OnID},{text = 'مدير ',callback_data=data.sender_user_id_.."unManager"..OnID}},
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('߷علامه ✅ تعني ان الشخص يمتلك رتبه ويمكنك تنزيلها بالضغط علي الرتبه بالاسفل .')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(bb)) 
return false
end
if DAata and DAata:match("^(%d+)unConstructor(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('unConstructor',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if database:sismember(bot_id..'Constructor'..Chat_id,OnID) then
database:srem(bot_id..'Constructor'..Chat_id,OnID)
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape("تم تنزيله بنجاح ✅").."&show_alert=true")
Co = "✖"
else
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape("بالفعل هو ليس بمنشئ ✖").."&show_alert=true")
Co = "✖"
end
if database:sismember(bot_id..'Basic:Constructor'..Chat_id,OnID) then
Ba = "✅"
else
Ba = "✖"
end
if database:sismember(bot_id..'Manager'..Chat_id,OnID) then
Ma = "✅"
else
Ma = "✖"
end
if database:sismember(bot_id..'Mod:User'..Chat_id,OnID) then
Mo = "✅"
else
Mo = "✖"
end
if database:sismember(bot_id..'Special:User'..Chat_id,OnID) then
Sp = "✅"
else
Sp = "✖"
end
if SudoBotCoSu(data) then
datainline = {
{{text =Ba,callback_data=data.sender_user_id_.."unBasic"..OnID},{text = 'منشئ اساسي',callback_data=data.sender_user_id_.."unBasic"..OnID}},
{{text =Co,callback_data=data.sender_user_id_.."unConstructor"..OnID},{text = 'منشئ ',callback_data=data.sender_user_id_.."unConstructor"..OnID}},
{{text =Ma,callback_data=data.sender_user_id_.."unManager"..OnID},{text = 'مدير ',callback_data=data.sender_user_id_.."unManager"..OnID}},
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif BasicConstructor(data) then
datainline = {
{{text =Co,callback_data=data.sender_user_id_.."unConstructor"..OnID},{text = 'منشئ ',callback_data=data.sender_user_id_.."unConstructor"..OnID}},
{{text =Ma,callback_data=data.sender_user_id_.."unManager"..OnID},{text = 'مدير ',callback_data=data.sender_user_id_.."unManager"..OnID}},
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif Constructor(data) then
datainline = {
{{text =Ma,callback_data=data.sender_user_id_.."unManager"..OnID},{text = 'مدير ',callback_data=data.sender_user_id_.."unManager"..OnID}},
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif Manager(data) then
datainline = {
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif Mod(data) then
datainline = {
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
end
bb = {} 
bb.inline_keyboard = datainline
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('߷علامه ✅ تعني ان الشخص يمتلك رتبه ويمكنك تنزيلها بالضغط علي الرتبه بالاسفل .')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(bb)) 
return false
end
if DAata and DAata:match("^(%d+)unManager(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('unManager',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if database:sismember(bot_id..'Manager'..Chat_id,OnID) then
database:srem(bot_id..'Manager'..Chat_id,OnID)
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape("تم تنزيله بنجاح ✅").."&show_alert=true")
Ma = "✖"
else
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape("بالفعل هو ليس بمدير ✖").."&show_alert=true")
Ma = "✖"
end
if database:sismember(bot_id..'Basic:Constructor'..Chat_id,OnID) then
Ba = "✅"
else
Ba = "✖"
end
if database:sismember(bot_id..'Constructor'..Chat_id,OnID) then
Co = "✅"
else
Co = "✖"
end
if database:sismember(bot_id..'Mod:User'..Chat_id,OnID) then
Mo = "✅"
else
Mo = "✖"
end
if database:sismember(bot_id..'Special:User'..Chat_id,OnID) then
Sp = "✅"
else
Sp = "✖"
end
if SudoBotCoSu(data) then
datainline = {
{{text =Ba,callback_data=data.sender_user_id_.."unBasic"..OnID},{text = 'منشئ اساسي',callback_data=data.sender_user_id_.."unBasic"..OnID}},
{{text =Co,callback_data=data.sender_user_id_.."unConstructor"..OnID},{text = 'منشئ ',callback_data=data.sender_user_id_.."unConstructor"..OnID}},
{{text =Ma,callback_data=data.sender_user_id_.."unManager"..OnID},{text = 'مدير ',callback_data=data.sender_user_id_.."unManager"..OnID}},
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif BasicConstructor(data) then
datainline = {
{{text =Co,callback_data=data.sender_user_id_.."unConstructor"..OnID},{text = 'منشئ ',callback_data=data.sender_user_id_.."unConstructor"..OnID}},
{{text =Ma,callback_data=data.sender_user_id_.."unManager"..OnID},{text = 'مدير ',callback_data=data.sender_user_id_.."unManager"..OnID}},
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif Constructor(data) then
datainline = {
{{text =Ma,callback_data=data.sender_user_id_.."unManager"..OnID},{text = 'مدير ',callback_data=data.sender_user_id_.."unManager"..OnID}},
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif Manager(data) then
datainline = {
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif Mod(data) then
datainline = {
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
end
bb = {} 
bb.inline_keyboard = datainline
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('߷علامه ✅ تعني ان الشخص يمتلك رتبه ويمكنك تنزيلها بالضغط علي الرتبه بالاسفل .')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(bb)) 
return false
end
if DAata and DAata:match("^(%d+)unmod(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('unmod',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if database:sismember(bot_id..'Mod:User'..Chat_id,OnID) then
database:srem(bot_id..'Mod:User'..Chat_id,OnID)
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape("تم تنزيله بنجاح ✅").."&show_alert=true")
Mo = "✖"
else
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape("بالفعل هو ليس بأدمن ✖").."&show_alert=true")
Mo = "✖"
end
if database:sismember(bot_id..'Manager'..Chat_id,OnID) then
Ma = "✅"
else
Ma = "✖"
end
if database:sismember(bot_id..'Basic:Constructor'..Chat_id,OnID) then
Ba = "✅"
else
Ba = "✖"
end
if database:sismember(bot_id..'Constructor'..Chat_id,OnID) then
Co = "✅"
else
Co = "✖"
end
if database:sismember(bot_id..'Special:User'..Chat_id,OnID) then
Sp = "✅"
else
Sp = "✖"
end
if SudoBotCoSu(data) then
datainline = {
{{text =Ba,callback_data=data.sender_user_id_.."unBasic"..OnID},{text = 'منشئ اساسي',callback_data=data.sender_user_id_.."unBasic"..OnID}},
{{text =Co,callback_data=data.sender_user_id_.."unConstructor"..OnID},{text = 'منشئ ',callback_data=data.sender_user_id_.."unConstructor"..OnID}},
{{text =Ma,callback_data=data.sender_user_id_.."unManager"..OnID},{text = 'مدير ',callback_data=data.sender_user_id_.."unManager"..OnID}},
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif BasicConstructor(data) then
datainline = {
{{text =Co,callback_data=data.sender_user_id_.."unConstructor"..OnID},{text = 'منشئ ',callback_data=data.sender_user_id_.."unConstructor"..OnID}},
{{text =Ma,callback_data=data.sender_user_id_.."unManager"..OnID},{text = 'مدير ',callback_data=data.sender_user_id_.."unManager"..OnID}},
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif Constructor(data) then
datainline = {
{{text =Ma,callback_data=data.sender_user_id_.."unManager"..OnID},{text = 'مدير ',callback_data=data.sender_user_id_.."unManager"..OnID}},
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif Manager(data) then
datainline = {
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif Mod(data) then
datainline = {
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
end
bb = {} 
bb.inline_keyboard = datainline
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('߷علامه ✅ تعني ان الشخص يمتلك رتبه ويمكنك تنزيلها بالضغط علي الرتبه بالاسفل .')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(bb)) 
return false
end
if DAata and DAata:match("^(%d+)unSpecial(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('unSpecial',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if database:sismember(bot_id..'Special:User'..Chat_id,OnID) then
database:srem(bot_id..'Special:User'..Chat_id,OnID)
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape("تم تنزيله بنجاح ✅").."&show_alert=true")
Sp = "✖"
else
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape("بالفعل هو ليس بمميز ✖").."&show_alert=true")
Sp = "✖"
end
if database:sismember(bot_id..'Manager'..Chat_id,OnID) then
Ma = "✅"
else
Ma = "✖"
end
if database:sismember(bot_id..'Basic:Constructor'..Chat_id,OnID) then
Ba = "✅"
else
Ba = "✖"
end
if database:sismember(bot_id..'Constructor'..Chat_id,OnID) then
Co = "✅"
else
Co = "✖"
end
if database:sismember(bot_id..'Mod:User'..Chat_id,OnID) then
Mo = "✅"
else
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape("بالفعل هو ليس بأدمن ✖").."&show_alert=true")
Mo = "✖"
end
if SudoBotCoSu(data) then
datainline = {
{{text =Ba,callback_data=data.sender_user_id_.."unBasic"..OnID},{text = 'منشئ اساسي',callback_data=data.sender_user_id_.."unBasic"..OnID}},
{{text =Co,callback_data=data.sender_user_id_.."unConstructor"..OnID},{text = 'منشئ ',callback_data=data.sender_user_id_.."unConstructor"..OnID}},
{{text =Ma,callback_data=data.sender_user_id_.."unManager"..OnID},{text = 'مدير ',callback_data=data.sender_user_id_.."unManager"..OnID}},
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif BasicConstructor(data) then
datainline = {
{{text =Co,callback_data=data.sender_user_id_.."unConstructor"..OnID},{text = 'منشئ ',callback_data=data.sender_user_id_.."unConstructor"..OnID}},
{{text =Ma,callback_data=data.sender_user_id_.."unManager"..OnID},{text = 'مدير ',callback_data=data.sender_user_id_.."unManager"..OnID}},
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif Constructor(data) then
datainline = {
{{text =Ma,callback_data=data.sender_user_id_.."unManager"..OnID},{text = 'مدير ',callback_data=data.sender_user_id_.."unManager"..OnID}},
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif Manager(data) then
datainline = {
{{text =Mo,callback_data=data.sender_user_id_.."unmod"..OnID},{text = 'ادمن ',callback_data=data.sender_user_id_.."unmod"..OnID}},
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
elseif Mod(data) then
datainline = {
{{text =Sp,callback_data=data.sender_user_id_.."unSpecial"..OnID},{text = 'مميز ',callback_data=data.sender_user_id_.."unSpecial"..OnID}},
{{text = 'رجوع',callback_data=data.sender_user_id_.."Bbk"..OnID}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
end
bb = {} 
bb.inline_keyboard = datainline
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('߷علامه ✅ تعني ان الشخص يمتلك رتبه ويمكنك تنزيلها بالضغط علي الرتبه بالاسفل .')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(bb)) 
return false
end
if DAata and DAata:match("^(%d+)Bbk(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('Bbk',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𖢄 حظر',callback_data=data.sender_user_id_.."been"..OnID},{text = '𖢄 الغاء حظر',callback_data=data.sender_user_id_.."unbeen"..OnID}},
{{text = '𖢄 كتم',callback_data=data.sender_user_id_.."Mut"..OnID},{text = '𖢄 الغاء كتم',callback_data=data.sender_user_id_.."unMut"..OnID}},
{{text = '𖢄 تقييد',callback_data=data.sender_user_id_.."restrict"..OnID},{text = '𖢄 الغاء تقييد',callback_data=data.sender_user_id_.."unrestrict"..OnID}},
{{text = '𖢄 رفع رتبه',callback_data=data.sender_user_id_.."UpS"..OnID},{text = '𖢄 تنزيل رتبه',callback_data=data.sender_user_id_.."unUpS"..OnID}},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape("𖢄︙اهلا بك يمكنك التحكم بالازرار اسفل .")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false
end
if DAata and DAata:match("^(%d+)DelLsta(.*)$") then
local notId  = DAata:match("(%d+)")  
local OnID = DAata:gsub('DelLsta',''):gsub(notId,'')
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '𖢄︙عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if OnID == "55" then
Vs = 'تم مسح المطورين'
database:del(bot_id..'Sudo:User')
elseif OnID == "77" then
Vs = 'تم مسح المالكين'
database:del(bot_id..'CoSu'..msg.chat_id_)
elseif OnID == "99" then
Vs = 'تم مسح المنشئين الاساسيين'
database:del(bot_id..'Basic:Constructor'..msg.chat_id_)
elseif OnID == "120" then
Vs = 'تم مسح المنشئين'
database:del(bot_id..'Constructor'..msg.chat_id_)
elseif OnID == "140" then
Vs = 'تم مسح المدراء'
database:del(bot_id..'Manager'..msg.chat_id_)
elseif OnID == "160" then
Vs = 'تم مسح الادمنيه'
database:del(bot_id..'Mod:User'..msg.chat_id_)
elseif OnID == "180" then
Vs = 'تم مسح المميزين'
database:del(bot_id..'Special:User'..msg.chat_id_)
end
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '-𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Vs)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
return false
end
if DAata and DAata:match('yt@(.*)/m@(%d+)') then
local Id_Link = {string.match(DAata,"^yt@(.*)/m@(%d+)$")}
tdcli_function ({ID = "GetUser",user_id_ = bot_id,},function(arg,data) 
DeleteMessage(Chat_id,{[0] = Msg_id})  
local textt = '- من فضلك اختر نوع التنزيل'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'تنزيل صوت', callback_data="mp3/"..Id_Link[1].."/@m"..Id_Link[2]},
},
{
{text = 'تنزيل فيديو', callback_data="mp4/"..Id_Link[1].."/@m"..Id_Link[2]},
},
}
local msg_idd = Msg_id/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id='..Chat_id..'&text='..textt..'&reply_to_message_id='..Id_Link[2]..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end,nil) 
elseif DAata and DAata:match('mp3/(.*)/@m(%d+)') then
local kkp = {string.match(DAata,"^mp3/(.*)/@m(%d+)$")}
DeleteMessage(Chat_id,{[0] = Msg_id})    
require("socket.http").request("http://167.71.14.2/ytd.php?url="..kkp[1].."&token="..token.."&chat="..data.chat_id_.."&rep="..kkp[2].."&type=mp3")
elseif DAata and DAata:match('mp4/(.*)/@m(%d+)') then
local kkp = {string.match(DAata,"^mp4/(.*)/@m(%d+)$")}
DeleteMessage(Chat_id,{[0] = Msg_id})    
require("socket.http").request("http://167.71.14.2/ytd.php?url="..kkp[1].."&token="..token.."&chat="..data.chat_id_.."&rep="..kkp[2].."&type=mp4")
end

if DAata == '/help1' then
if not Mod(data) then
local notText = '♢ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
𖤍 اوامر الحمايه اتبع مايلي ...
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 قفل + فتح ← الامر…
𖤍 ← { بالتقيد ، بالطرد ، بالكتم }
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 الروابط
𖤍 المعرف
𖤍 التاك
𖤍 الشارحه
𖤍 التعديل
𖤍 التثبيت
𖤍 المتحركه
𖤍 الملفات
𖤍 الصور
𖤍 التفليش
𖤍 الاباحي
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 الماركداون
𖤍 البوتات
𖤍 التكرار
𖤍 الكلايش
𖤍 السيلفي
𖤍 الملصقات
𖤍 الفيديو
𖤍 الانلاين
𖤍 الدردشه
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 التوجيه
𖤍 الاغاني
𖤍 الصوت
𖤍 الجهات
𖤍 الاشعارات
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
[ 𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩](https://t.me/BLACK_TEAM_4)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '¹', callback_data="/help1"},{text = '²', callback_data="/help2"},{text = '³', callback_data="/help3"}},
{{text = '⁴', callback_data="/help4"},{text = '₅', callback_data="/help5"}},
{{text = '₆', callback_data="/help6"},{text = '₇', callback_data="/help7"},{text = '₈', callback_data="/help8"}},
{{text = '₉', callback_data="/help9"},{text = '¹₀', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝘾𝙃 𝙎𝙊𝙐𝙍𝘾𝙀 𐇑', url="t.me/BLACK_TEAM_4"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help2' then
if not Mod(data) then
local notText = '♢ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
𖤍 اهلا بك عزيزي …
𖤍 اوامر تفعيل وتعطيل …
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 تفعيل ~ تعطيل + امر …
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 اطردني
𖤍 صيح
𖤍 ضافني
𖤍 الرابط
𖤍 الحظر
𖤍 الرفع
𖤍 الحظر
𖤍 الرفع 
𖤍 الايدي
𖤍 الالعاب
𖤍 ردود المطور
𖤍 الترحيب
𖤍 ردود المدير
𖤍 الردود
𖤍 ردود البوت
𖤍 الرسائل اليوميه
𖤍 التحقق
𖤍 اوامر التحشيش
𖤍 صورتي
𖤍 زخرفه
𖤍 حساب العمر
𖤍 الابراج
𖤍 تنبيه الاسماء
𖤍 تنبيه المعرف
𖤍 تنبيه الصور
𖤍 التوحيد
𖤍 الكتم الاسم
𖤍 نسبه الرجوله
𖤍 نسبه الانوثه
𖤍 نسبه الكره
𖤍 نسبه الحب
𖤍 ءall
 ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
[ 𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩](https://t.me/BLACK_TEAM_4)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '¹', callback_data="/help1"},{text = '²', callback_data="/help2"},{text = '³', callback_data="/help3"}},
{{text = '⁴', callback_data="/help4"},{text = '₅', callback_data="/help5"}},
{{text = '₆', callback_data="/help6"},{text = '₇', callback_data="/help7"},{text = '₈', callback_data="/help8"}},
{{text = '₉', callback_data="/help9"},{text = '¹₀', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝘾𝙃 𝙎𝙊𝙐𝙍𝘾𝙀 𐇑', url="t.me/BLACK_TEAM_4"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help3' then
if not Mod(data) then
local notText = '♢ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
𖤍 اهلا بك عزيزي …
𖤍 اوامر الوضع ~ اضف …
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 اضف / حذف ← رد
𖤍 اضف / حذف ← رد متعدد
𖤍 اضف / حذف ← صلاحيه
 ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 ضع + امر …
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 اسم
𖤍 رابط
𖤍 ترحيب
𖤍 قوانين
𖤍 صوره
𖤍 وصف
𖤍 تكرار + عدد
 ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
[ 𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩](https://t.me/BLACK_TEAM_4)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '¹', callback_data="/help1"},{text = '²', callback_data="/help2"},{text = '³', callback_data="/help3"}},
{{text = '⁴', callback_data="/help4"},{text = '₅', callback_data="/help5"}},
{{text = '₆', callback_data="/help6"},{text = '₇', callback_data="/help7"},{text = '₈', callback_data="/help8"}},
{{text = '₉', callback_data="/help9"},{text = '¹₀', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝘾𝙃 𝙎𝙊𝙐𝙍𝘾𝙀 𐇑', url="t.me/BLACK_TEAM_4"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help4' then
if not Mod(data) then
local notText = '♢ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
𖤍 اهلا بك عزيزي …
𖤍 اوامر مسح / الحذف ← امر
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 مسح + امر …
 ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 الايدي
𖤍 الادمنيه
𖤍 المميزين
𖤍 ردود المدير
𖤍 المدراء
𖤍 المنشئين
𖤍 الاساسين
𖤍 الاسماء المكتومه
𖤍 البوتات
𖤍 امسح
𖤍 صلاحيه
𖤍 قائمه منع المتحركات
𖤍 قائمه منع الصور
𖤍 قائمه منع الملصقات
𖤍 مسح قائمه المنع
𖤍 المحذوفين
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 حذف + امر ...
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 امر 
𖤍 الاوامر المضافه
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
[ 𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩](https://t.me/BLACK_TEAM_4)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '¹', callback_data="/help1"},{text = '²', callback_data="/help2"},{text = '³', callback_data="/help3"}},
{{text = '⁴', callback_data="/help4"},{text = '₅', callback_data="/help5"}},
{{text = '₆', callback_data="/help6"},{text = '₇', callback_data="/help7"},{text = '₈', callback_data="/help8"}},
{{text = '₉', callback_data="/help9"},{text = '¹₀', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝘾𝙃 𝙎𝙊𝙐𝙍𝘾𝙀 𐇑', url="t.me/BLACK_TEAM_4"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help5' then
if not Mod(data) then
local notText = '♢ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
𖤍 اهلا بك عزيزي …
𖤍 اوامر تنزيل ورفع …
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 مميز
𖤍 ادمن
𖤍 مدير
𖤍 منشئ
𖤍 منشئ اساسي
𖤍 مالك
𖤍 الادمنيه
𖤍 ادمن بالجروب
𖤍 ادمن بكل الصلاحيات
𖤍 القيود
𖤍 تنزيل جميع الرتب
𖤍 تنزيل الكل
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 اوامر التغير …
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 تغير رد المطور + اسم
𖤍 تغير رد المالك + اسم
𖤍 تغير رد منشئ الاساسي + اسم
𖤍 تغير رد المنشئ + اسم
𖤍 تغير رد المدير + اسم
𖤍 تغير رد الادمن + اسم
𖤍 تغير رد المميز + اسم
𖤍 تغير رد العضو + اسم
𖤍 تغير امر الاوامر
𖤍 تغير امر م1 ~ الئ م10
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
[ 𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩](https://t.me/BLACK_TEAM_4)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '¹', callback_data="/help1"},{text = '²', callback_data="/help2"},{text = '³', callback_data="/help3"}},
{{text = '⁴', callback_data="/help4"},{text = '₅', callback_data="/help5"}},
{{text = '₆', callback_data="/help6"},{text = '₇', callback_data="/help7"},{text = '₈', callback_data="/help8"}},
{{text = '₉', callback_data="/help9"},{text = '¹₀', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝘾𝙃 𝙎𝙊𝙐𝙍𝘾𝙀 𐇑', url="t.me/BLACK_TEAM_4"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help6' then
if not Mod(data) then
local notText = '♢ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
𖤍 اهلا بك عزيزي …
𖤍 اوامر المجموعه …
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 الاوامر … كالتالي
 ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 استعاده الاوامر
𖤍 تحويل كالاتي~⪼ صور : ملصق : صوت : بصمه
𖤍 صيح ~ تاك ~ المميزين : الادمنيه : المدراء : المنشئين : المنشئين الاساسين : للمالك
𖤍 كشف القيود 
𖤍 تعين الايدي
𖤍 تغير الايدي
𖤍 الحساب + ايدي الحساب
𖤍 تنظيف + العدد
𖤍 تنزيل الكل
𖤍 تنزيل جميع الرتب
𖤍 منع + برد
𖤍~ الصور + متحركه + ملصق ~
𖤍 حظر ~ كتم ~ تقيد ~ طرد
𖤍 المحظورين ~ المكتومين ~ المقيدين
𖤍 الغاء كتم + حظر + تقيد ~ بالرد و معرف و ايدي
𖤍 تقيد ~ كتم + الرقم + ساعه
𖤍 تقيد ~ كتم + الرقم + يوم
𖤍 تقيد ~ كتم + الرقم + دقيقه
𖤍 تثبيت ~ الغاء تثبيت
𖤍 الترحيب
𖤍 الغاء تثبيت الكل
𖤍 كشف البوتات
𖤍 الصلاحيات
𖤍 كشف ~ برد ← بمعرف ← ايدي
𖤍 تاك للكل
𖤍 اضف لقب + لقب
𖤍 حذف اللقب
𖤍 تاك للمشرفين
𖤍 اعدادات المجموعه
𖤍 عدد الجروب
𖤍 ردود المدير
𖤍 اسم بوت + الرتبه
𖤍 الاوامر المضافه
𖤍 وضع توحيد + توحيد
𖤍 تعين عدد الكتم + رقم
𖤍 التوحيد
𖤍 كتم اسم + اسم
𖤍 قائمه المنع
𖤍 نسبه الحب
𖤍 نسبه رجوله
𖤍 نسبه الكره
𖤍 نسبه الانوثه
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
[ 𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩](https://t.me/BLACK_TEAM_4)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '¹', callback_data="/help1"},{text = '²', callback_data="/help2"},{text = '³', callback_data="/help3"}},
{{text = '⁴', callback_data="/help4"},{text = '₅', callback_data="/help5"}},
{{text = '₆', callback_data="/help6"},{text = '₇', callback_data="/help7"},{text = '₈', callback_data="/help8"}},
{{text = '₉', callback_data="/help9"},{text = '¹₀', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝘾𝙃 𝙎𝙊𝙐𝙍𝘾𝙀 𐇑', url="t.me/BLACK_TEAM_4"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help7' then
if not Mod(data) then
local notText = '♢ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
𖤍 الاوامر التسليه …
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 رفع + تنزيل ← الامࢪ
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 رفع + تنزيل ← حمار
𖤍 تاك للحمير
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 رفع + تنزيل ← ابني
𖤍 تاك ل اولادي
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 رفع + تنزيل ← كلب
𖤍 تاك للكلاب
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 رفع + تنزيل ← قرد 
𖤍 تاك للقرود
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 رفع + تنزيل ← بقره
𖤍 تاك للبقر
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 رفع + تنزيل ← حصان
𖤍 تاك للحصنه
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 رفع + تنزيل ← متخزوق
𖤍 تاك للمتخزوقين
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 رفع ← بقلبي
𖤍 تنزيل من قلبي
𖤍 تاك للفقلبي
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 رفع + تنزيل ← وتكه
𖤍 تاك للوتكات
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 زواج
𖤍 تاك للمتزوجين
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
[ 𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩](https://t.me/BLACK_TEAM_4)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '¹', callback_data="/help1"},{text = '²', callback_data="/help2"},{text = '³', callback_data="/help3"}},
{{text = '⁴', callback_data="/help4"},{text = '₅', callback_data="/help5"}},
{{text = '₆', callback_data="/help6"},{text = '₇', callback_data="/help7"},{text = '₈', callback_data="/help8"}},
{{text = '₉', callback_data="/help9"},{text = '¹₀', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝘾𝙃 𝙎𝙊𝙐𝙍𝘾𝙀 𐇑', url="t.me/BLACK_TEAM_4"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help8' then
if not Mod(data) then
local notText = '♢ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
𖤍اوامر المطورين
 ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 تفعيل ← تعطيل
𖤍 المجموعات ← المشتركين ← الاحصائيات
𖤍 رفع ← تنزيل منشئ اساسي
𖤍 مسح الاساسين ← المنشئين الاساسين
𖤍 مسح المنشئين ← المنشئين
𖤍 رفع ⇠ تنزيل مالك
𖤍 مسح قائمه المالك
𖤍 اسم ~⪼ غادر + غادر
𖤍 اذاعه
𖤍 ردود المطور 
 ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
[ 𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩](https://t.me/BLACK_TEAM_4)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '¹', callback_data="/help1"},{text = '²', callback_data="/help2"},{text = '³', callback_data="/help3"}},
{{text = '⁴', callback_data="/help4"},{text = '₅', callback_data="/help5"}},
{{text = '₆', callback_data="/help6"},{text = '₇', callback_data="/help7"},{text = '₈', callback_data="/help8"}},
{{text = '₉', callback_data="/help9"},{text = '¹₀', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝘾𝙃 𝙎𝙊𝙐𝙍𝘾𝙀 𐇑', url="t.me/BLACK_TEAM_4"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help9' then
if not Mod(data) then
local notText = '♢ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
𖤍 اهلا بك عزيزي √
𖤍 اوامر مطور الاساسي...↓
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 تفعيل
𖤍 تعطيل
𖤍 مسح الاساسين
𖤍 المنشئين الاساسين
𖤍 رفع ⇠ تنزيل منشئ اساسي
𖤍 مسح المطورين
𖤍 رفع ⇠ تنزيل مالك
𖤍 المطورين
𖤍 رفع ⇠ تنزيل مطور
𖤍 رفع ~⪼ تنزيل مطور ثانوي
𖤍 الثانويين ~⪼ مسح الثانويين
𖤍 تفعيل ~⪼ تعطيل الاضافات
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 اسم البوت + غادر
𖤍 غادر
𖤍 اسم بوت + الرتبه
𖤍 تحديث السورس
𖤍 حضر عام
𖤍 كتم عام
𖤍 الغاء العام
𖤍 قائمه العام
𖤍 مسح قائمه العام
𖤍 جلب نسخه الاحتياطيه
𖤍 رفع نسخه الاحتياطيه
 ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 المتجر
𖤍 متجر الملفات
𖤍 الملفات
𖤍 مسح الملفات
𖤍 تعطيل + تفعيل + اسم ملف
 ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 اذاعه خاص
𖤍 اذاعه
𖤍 اذاعه بالتوجيه
𖤍 اذاعه بالتوجيه خاص
𖤍 اذاعه بالتثبيت
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 جلب نسخه الاحتياطيه
𖤍 رفع نسخه احتياطيه
𖤍 ضع عدد الاعضاء + العدد
𖤍 ضع كليشه المطور
𖤍 تفعيل/تعطيل الاذاعه
𖤍 تفعيل/تعطيل البوت الخدمي
𖤍 تفعيل/تعطيل التواصل
𖤍 تغير اسم البوت
𖤍 اضف/حذف رد عام
𖤍 ردود المطور
𖤍 مسح ردود المطور
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 الاشتراك الاجباري
𖤍 تعطيل الاشتراك الاجباري
𖤍 تفعيل الاشتراك الاجباري
𖤍 حذف رساله الاشتراك
𖤍 تغير رساله الاشتراك
𖤍 تغير الاشتراك
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 الاحصائيات
𖤍 المشتركين
𖤍 المجموعات
𖤍 تفعيل/تعطيل المغادره
𖤍 تنظيف المشتركين
𖤍 تنظيف الجروبات
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
[ 𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩](https://t.me/BLACK_TEAM_4)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '¹', callback_data="/help1"},{text = '²', callback_data="/help2"},{text = '³', callback_data="/help3"}},
{{text = '⁴', callback_data="/help4"},{text = '₅', callback_data="/help5"}},
{{text = '₆', callback_data="/help6"},{text = '₇', callback_data="/help7"},{text = '₈', callback_data="/help8"}},
{{text = '₉', callback_data="/help9"},{text = '¹₀', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝘾𝙃 𝙎𝙊𝙐𝙍𝘾𝙀 𐇑', url="t.me/BLACK_TEAM_4"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help10' then
if not Mod(data) then
local notText = '♢ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
𖤍 اهلا بك عزيزي √
𖤍 اوامر الاعضاء كتالي…↓
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 عرض معلوماتك ↑↓
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 ايديي ← اسمي 
𖤍 تفاعلي اليوم ← تفاعله اليوم 
𖤍 رسايلي ← مسح رسايلي 
𖤍 رتبتي ← سحكاتي 
𖤍 مسح سحكاتي ← المنشئ 
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 اوآمر المجموعه ↑↓
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 الرابط ← القوانين – الترحيب
𖤍 ايدي ← اطردني
𖤍 اسمي ← المطور
𖤍 كشف ~ بالرد بالمعرف
  ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 اسم البوت + الامر ↑↓
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖤍 بوسه بالرد
𖤍 مصه بالرد
𖤍 رزله بالرد
𖤍 شنو رئيك بهذا بالرد
𖤍 شنو رئيك بهاي بالرد
𖤍 تحب هذا
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
[ 𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩](https://t.me/BLACK_TEAM_4)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '¹', callback_data="/help1"},{text = '²', callback_data="/help2"},{text = '³', callback_data="/help3"}},
{{text = '⁴', callback_data="/help4"},{text = '₅', callback_data="/help5"}},
{{text = '₆', callback_data="/help6"},{text = '₇', callback_data="/help7"},{text = '₈', callback_data="/help8"}},
{{text = '₉', callback_data="/help9"},{text = '¹₀', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝘾𝙃 𝙎𝙊𝙐𝙍𝘾𝙀 𐇑', url="t.me/BLACK_TEAM_4"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help11' then
local Teext =[[
𖤍 اهلا بك في قسم التواصل
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝐆𝐑𝐎𝐔𝐏', url="t.me/UU_VIIB"},{text = '𝘁𝘄𝘀 𖤍', url="t.me/JOK_ER_7bot"}},
{{text = '𝑠𝑜𝑢𝑟𝑐𝑒 𝑏𝑙𝑎𝑐𝑘 𝑑𝑒𝑣𝑒𝑙𝑜𝑝𝑒𝑟𝑠 ♩', url="t.me/BLACK_TEAM_4/1447"}},
{{text = 'رجوع ⤻', callback_data="/help14"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help12' then
local Teext =[[
𖤍 اهلا بك في قسم مطورين السورس
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'جٰـہٰٖاٰكٰـہٰٖ 𝚓𝚊𝚌𝚔 ⇡', url="t.me/V_P_E"},{text = 'چوڪرّ 𝐽𝑂𝐾𝐸𝑅𐇭', url="t.me/UUOUOU_7"}},
{{text = 'رجوع ⤻', callback_data="/help14"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help13' then
local Teext =[[
𖤍 اهلا بك هذه قنوات تيم بلاك
𖤍 اصغط بالاسفل للوصول
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝐂𝐡𝐚𝐧𝐧𝐞𝐥', url="t.me/BLACK_TEAM_4"},{text = '𝐂𝐡𝐚𝐧𝐧𝐞𝐥 𝟐', url="t.me/BLACK_TEAM_4"}},
{{text = 'رجوع ⤻', callback_data="/help14"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help20' then
local Teext =[[
𖢄︙برج الجوزاء
𖢄︙من تاريخ 2021-10-1
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙عاطفياً :  المزاجية لن تنفع مع الشريك، والطباع الحادّة تؤدي إلى فتور في العلاقة بينكما، وعندها تبدأ الخلافات 
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙صحياً :  تبدو مضطرباً بعض الشيء نتيجة عوارض فاجأتك وسببت لك حرجاً صحياً
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙مهنياً :  يبشرك هذا اليوم بمرحلة من الهناء والعذوبة واللقاءات العملية الناجحة وطرح بعض الأفكار المميزة
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
{{text = 'رجوع ⤻', callback_data="/help32"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help21' then
local Teext =[[
𖢄︙برج الثور
𖢄︙من تاريخ 2021-10-1
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙عاطفياً :  عنادك يزعج الحبيب كثيراً، إستمع إليه وتفهّم حاجاته ووجهة نظره قبل الحكم مسبقاً 
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙صحياً :  يكون وضعك الصحي اليوم في حال من التقلّب والتذبذب بسبب بعض العوارض، فكن حذراً
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙مهنياً :  تشكو التأخير والانزعاج، وتبدو غير مسيطر على الأوضاع، فحاول أن تتجنّب الالتباس والنزاع
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
{{text = 'رجوع ⤻', callback_data="/help32"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help22' then
local Teext =[[
𖢄︙برج الدلو
𖢄︙من تاريخ 2021-10-1
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙عاطفياً :  يحاورك الشريك بطريقة غريبة اليوم، فحاول أن تظهر له أن هذا الأمر يزعجك 
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙صحياً :  لا تغرق نفسك في أعمال إضافية تسبب لك إرهاقاً وضغطاً نفسياً كبيراً
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙مهنياً :  تتّهم بعضهم بنيات سيئة وبمحاولة قنص بعض مكتسباتك، لا تعرّض نفسك لفضائح عامة اولبعض الانتقادات العلنية
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
{{text = 'رجوع ⤻', callback_data="/help32"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help23' then
local Teext =[[
𖢄︙برج السرطان
𖢄︙من تاريخ 2021-10-1
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙عاطفياً :  تقترب تدريجياً من تحقيق الحلم الذي راودك طويلاً، لكن يستحسن أن تتريث لئلا تفقد السيطرة على الوضع  
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙صحياً :  خفف قدر الإمكان من المقالي والمشاوي الغنية بالدهون لأنها مضرّة بالصحة
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙مهنياً :  مشروع العمر كما يقال، في طريقه إليك، لكنّ الدراسات مهمة لتحديد الخيارات قبل القيام بخطوات عشوائية
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
{{text = 'رجوع ⤻', callback_data="/help32"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help24' then
local Teext =[[
𖢄︙برج الاسد
𖢄︙من تاريخ 2021-10-1
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙عاطفياً :  يكون للحوار الصريح بينك وبين الشريك مفعول إيجابي في إنجاح العلاقة بينكما 
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙صحياً :  تحتار بين اتباع حمية غذائية صحية أو اتباع حمية عشوائياً، اختر الحل الأول
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙مهنياً :  تميل الى توسيع رقعة نشاطاتك فالمشاريع الكثيرة والنشاط موجود، خلافات حول ميراث قد تتطور وأخبار بعيدة تحمل البهجة
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
{{text = 'رجوع ⤻', callback_data="/help32"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help25' then
local Teext =[[
𖢄︙برج العذراء
𖢄︙من تاريخ 2021-10-1
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙عاطفياً :  تميل إلى اللقاءات الرومانسية ولا مانع لديك من الاحتفالات الصاخبة وطي صفحة الماضي والاهتمام بمتطلّبات الحبيب 
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙صحياً :  لا تقترب من المأكولات التي تكثر فيها الزيوت أو المكونات الدهنية والنشوية لأنها تفسد حميتك
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙مهنياً :  تدفعك الضغوط إلى إيجاد وسائل مختلفة للتكيّف مع التقلّبات والتطوّرات، وقد تتأثّر البحوث والزيارات والمشاريع سلباً
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
{{text = 'رجوع ⤻', callback_data="/help32"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help26' then
local Teext =[[
𖢄︙برج الميزان
𖢄︙من تاريخ 2021-10-1
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙عاطفياً :  عبّر عن مشاعرك تجاه من تحب ولا تخف من رد فعله فهو ينتظر هذه الخطوة 
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙صحياً :  تبادل الحلول مع الأصدقاء بشأن التخلص من السمنة والاقتراحات المتعلقة بالقيام بنشاطات مفيدة
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙مهنياً :  تحصل على مبالغ من المال لم تتوقعها، وتبدو الاستثمارات واعدة على كل الصعد
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
{{text = 'رجوع ⤻', callback_data="/help32"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help27' then
local Teext =[[
𖢄︙برج العقرب
𖢄︙من تاريخ 2021-10-1
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙عاطفياً :  تلتقي صديقاً قديماً وتبدأ معه علاقة عاطفية وتفكّر جدياً في الارتباط، بعدما بدأت تشعر بأن العزوبية لم تعد تناسبك  
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙صحياً :  لا ترفض نصيحة أحد المقربين منك، فقد تساعدك في تخطي أزمتك الصحية
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙مهنياً :  تغمرك الحماسة وتشعر بالثقة بالنفس، باستطاعتك أن تكون محط الأنظار في عملك ومحور الحركة المنتجة والفعالة
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
{{text = 'رجوع ⤻', callback_data="/help32"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help28' then
local Teext =[[
𖢄︙برج القوس
𖢄︙من تاريخ 2021-10-1
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙عاطفياً :  تلتقي الحبيب بعد غياب وتستعيد ذكريات جميلة وممتعة أمضيتها معه، فتتأجج المشاعر مجدداً وتزداد تعلقاً به 
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙صحياً :  قم بالمطلوب منك للمحافظة على صحتك سليمة معافاة، ولا تفرط في السرساب
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙مهنياً :  تطرح أفكاراً جديدة أكثر واقعية وتقبّلاً من الآخرين وتحقّق أمنية أو هدفاً لتبرهن للآخرين أنك صاحب إرادة صلبة جداً
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
{{text = 'رجوع ⤻', callback_data="/help32"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help29' then
local Teext =[[
𖢄︙برج الجدي
𖢄︙من تاريخ 2021-10-1
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙عاطفياً :  ساعد الشريك على تخطي أزماته لتتمكن من طلب معونته لاحقاً في حال عاكستك الظروف 
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙صحياً :  لا تنتظر من إهمال وضعك الصحي سوى النتائج الوخيمة، عندها لن ينفعك الندم
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙مهنياً :  تمتلك عدداً من المواهب وتصبو إلى دراسة أو سفر، وتكون لك اتصالات مع مؤسسات أجنبية مفيدة جداً
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
{{text = 'رجوع ⤻', callback_data="/help32"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help30' then
local Teext =[[
𖢄︙برج الحمل
𖢄︙من تاريخ 2021-10-1
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙عاطفياً :  إذا واجهت متاعب في العلاقة بالشريك، حاول أن تراهن على الوقت ولا تضخّم الأمور 
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙صحياً :  تكون الأيام المقبلة حافلة بالنشاطات الرياضية التي تبقيك في حال صحية ممتازة
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙مهنياً :  تنزعج قليلاً من بعض التصرّفات الطائشة، وتجد أن هنالك شخصاً ما يحاول العرقلة أو المماحكة أو وضع العصي في الدواليب
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
{{text = 'رجوع ⤻', callback_data="/help32"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help31' then
local Teext =[[
𖢄︙برج الحوت
𖢄︙من تاريخ 2021-10-1
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙عاطفياً :  تتوق إلى حياة عاطفية مستقرة ولكن تعاكسك الظروف المحيطة بك بعض الشيء 
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙صحياً :  كن معتدلاً في كمية الطعام التي تتناولها مساء، وخفف من المأكولات السريعة التي تطلبها من المطاعم
┉ ≈ ┉ ≈ ┉ ≈ ┉  𝗕𝗟𝗔𝗖𝗞 ⇣ ┉ ≈ ┉ ≈ ┉ ≈ ┉ 
𖢄︙مهنياً :  الفرصة مناسبة لتتخلّص من الضغوط التي تقلقك، وتجد أنّ جميع المحيطين بك يساعدونك في ذلك
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url="t.me/BLACK_TEAM_4"}},
{{text = 'رجوع ⤻', callback_data="/help32"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help14' then
local Teext =[[
𖤍 اهلا بك في قسم مطورين السورس
𖤍 اختر ما تريد معرفته من الاسفل
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝑠𝑜𝑢𝑟𝑐𝑒 𝑏𝑙𝑎𝑐𝑘 𝑑𝑒𝑣𝑒𝑙𝑜𝑝𝑒𝑟𝑠 ♩', callback_data="/help12"},{text = '𝐓𝐰𝐚𝐬𝐨𝐥', callback_data="/help11"}},
{{text = '𝐂𝐡𝐚𝐧𝐧𝐞𝐥𝐬', callback_data="/help13"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help32' then
local Teext =[[
߷اهلا بك مجددا ، اختر برجك ⍖ .
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'برج الدلو 𐇑', callback_data="/help22"},{text = 'برج الثور 𐇑', callback_data="/help21"},{text = 'برج الاسد 𐇑', callback_data="/help24"}},
{{text = 'برج العذراء 𐇑', callback_data="/help25"},{text = 'برج السرطان 𐇑', callback_data="/help23"}},
{{text = 'برج القوس 𐇑', callback_data="/help28"},{text = 'برج العقرب 𐇑', callback_data="/help27"}},
{{text = 'برج الميزان 𐇑', callback_data="/help26"},{text = 'برج الجوزاء 𐇑', callback_data="/help20"}},
{{text = 'برج الحوت 𐇑', callback_data="/help31"},{text = 'برج الحمل 𐇑', callback_data="/help30"},{text = 'برج الجدي 𐇑', callback_data="/help29"}},
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url = "https://t.me/BLACK_TEAM_4"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if DAata == '/help' then
if not Mod(data) then
local notText = '♢ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
ɢʀᴏᴜᴘ ᴄᴏᴍᴍᴀɴᴅ𝙨 𖤍
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉┉ ≈ ┉ ≈ ┉ 
𖢄 ¹ ⤍ اوامر الحماية .
𖢄️ ² ⤍ تعطيل وتفعيل .
𖢄️ ³ ⤍ اوامر ضع واضف .
𖢄️ ⁴ ⤍ اوامر مسح وحذف .
𖢄️ ₅ ⤍ اوامر الادمنيه .
𖢄️ ₆ ⤍ اوامر الروم .
𖢄️ ₇ ⤍ اوامر التسليه .
𖢄️ ₈ ⤍ اوامر المطور .
𖢄️ ₉ ⤍ المطور الاساسي .
𖢄️ ¹₀ ⤍ اوامر الاعضاء .
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉┉ ≈ ┉ ≈ ┉ 
[ 𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩](https://t.me/BLACK_TEAM_4) 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '¹', callback_data="/help1"},{text = '²', callback_data="/help2"},{text = '³', callback_data="/help3"}},
{{text = '⁴', callback_data="/help4"},{text = '₅', callback_data="/help5"}},
{{text = '₆', callback_data="/help6"},{text = '₇', callback_data="/help7"},{text = '₈', callback_data="/help8"}},
{{text = '₉', callback_data="/help9"},{text = '¹₀', callback_data="/help10"}},
{{text = '𝘾𝙃 𝙎𝙊𝙐𝙍𝘾𝙀 𐇑', url="t.me/BLACK_TEAM_4"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata and DAata:match("^animation(.*)$") then  
idch = DAata:match("-100(%d+)")
local idchci = "-100"..idch
local animation = DAata:match("^animation(.*)$"):gsub('chatid',''):gsub('chatid',''):gsub(idch,''):gsub('-100','')
local Text ="𖢄 تم الغاء منعها بنجاح"
inline = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩',url='http://t.me/BLACK_TEAM_4'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
database:srem(bot_id.."filteranimation"..idchci,animation)  
end
if DAata and DAata:match("^pito(.*)$") then  
local idchci = database:get(bot_id.."Filter:msg")
local photo = DAata:match("^pito(.*)$")
local Text ="𖢄 تم الغاء منعها بنجاح"
inline = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩',url='http://t.me/BLACK_TEAM_4'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
database:srem(bot_id.."filterphoto"..idchci,photo)  
end
if DAata and DAata:match("^Sticker(.*)$") then  
idch = DAata:match("-100(%d+)")
local idchci = "-100"..idch
local Sticker = DAata:match("^Sticker(.*)$"):gsub('chatid',''):gsub('chatid',''):gsub(idch,''):gsub('-100','')
local Text ="𖢄 تم الغاء منعه بنجاح"
inline = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩',url='http://t.me/BLACK_TEAM_4'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
database:srem(bot_id.."filtersteckr"..idchci,Sticker)  
end
if DAata and DAata:match("^delallSticker(.*)$") then  
local delallSticker = DAata:match("^delallSticker(.*)$")
local Text ="𖢄 تم الغاء منع كل المتحركات"
inline = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩',url='http://t.me/BLACK_TEAM_4'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
local listSticker = database:smembers(bot_id.."filtersteckr"..delallSticker)  
for k,v in pairs(listSticker) do  
database:srem(bot_id.."filtersteckr"..delallSticker,v)  
end  
end
if DAata and DAata:match("^delallanimation(.*)$") then  
local delallmation = DAata:match("^delallanimation(.*)$")
local Text ="𖢄 تم الغاء منع كل المتحركات"
inline = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩',url='http://t.me/BLACK_TEAM_4'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
local listAnimation = database:smembers(bot_id.."filteranimation"..delallmation)  
for k,v in pairs(listAnimation) do  
database:srem(bot_id.."filteranimation"..delallmation,v)  
end  
end
if DAata and DAata:match("^delallph(.*)$") then  
local delallph = DAata:match("^delallph(.*)$")
local Text ="𖢄 تم الغاء منع كل الصور"
inline = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩',url='http://t.me/BLACK_TEAM_4'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
local listPhoto = database:smembers(bot_id.."filterphoto"..delallph)  
for k,v in pairs(listPhoto) do  
database:srem(bot_id.."filterphoto"..delallph,v)  
end  
end
if DAata == 'EndAddarray'..data.sender_user_id_ then  
if database:get(bot_id..'Set:array'..data.sender_user_id_..':'..Chat_id) == 'true1' then
database:del(bot_id..'Set:array'..data.sender_user_id_..':'..Chat_id)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩',url='http://t.me/BLACK_TEAM_4'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *߷تم حفظ الردود بنجاح*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
else
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩',url='http://t.me/BLACK_TEAM_4'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *߷تم تنفيذ الامر سابقا*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if DAata == 'OkKikedMe'..data.sender_user_id_ then  
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=Chat_id,user_id_=data.sender_user_id_,status_={ID="ChatMemberStatusKicked"},},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩',url='http://t.me/BLACK_TEAM_4'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *߷ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if (data and data.code_ and data.code_ == 3) then 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩',url='http://t.me/BLACK_TEAM_4'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *߷البوت ليس ادمن يرجى ترقيتي !*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if data and data.code_ and data.code_ == 400 and data.message_ == "USER_ADMIN_INVALID" then 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩',url='http://t.me/BLACK_TEAM_4'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *߷عذرا لا استطيع طرد ادمنية الجروب*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if data and data.ID and data.ID == 'Ok' then
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩',url='http://t.me/BLACK_TEAM_4'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *߷تم الطرد بنجاح*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end,nil)   
end
if DAata == 'noKikedMs'..data.sender_user_id_ then  
local Text ="𖢄 تم الغاء الطرد بنجاح ."
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩',url='http://t.me/BLACK_TEAM_4'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Text)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == 'noKikedMe'..data.sender_user_id_ then 
database:sadd(bot_id..'Sudo:User', result.sender_user_id_)
local Text =" ߷ تم الغاء الأمر بنجاح "
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩',url='http://t.me/BLACK_TEAM_4'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Text)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == 'Zxchq'..data.sender_user_id_ then  
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
send(msg.chat_id_, msg.id_,' ߷ تم مغادرة المجموعه') 
bot_data:srem(bot_id..'Chek:Groups',msg.chat_id_)  
return false  
end
if Text == 'noKikedMe'..data.sender_user_id_ then  
local Text =" ߷ تم الغاء الأمر بنجاح "
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩',url='http://t.me/BLACK_TEAM_4'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Text)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == '/rsayly' then
if not CoSu(data) then
local notText = '✘ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Text =' ߷ تم تحديث السورس'
os.execute('rm -rf GOLD.lua')
os.execute('wget https://raw.githubusercontent.com/jokerrr7/Jokeralpjack/main/GOLD.lua')
send(msg.chat_id_, msg.id_,' ߷ تم تحديث السورس')
dofile('GOLD.lua')  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url = "https://t.me/BLACK_TEAM_4"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Text)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
if Text == '/s7katy' then
if not CoSu(data) then
local notText = '✘ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Text =' ߷ تم تحديث الملفات'
os.execute('rm -rf GOLD.lua')
os.execute('wget https://raw.githubusercontent.com/jokerrr7/Jokeralpjack/main/GOLD.lua')
send(msg.chat_id_, msg.id_,' ߷ تم تحديث الملفات')
dofile('GOLD.lua')  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩', url = "https://t.me/BLACK_TEAM_4"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Text)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
if Text == 'nzllne'..data.sender_user_id_ then if database:sismember(bot_id.."Sudo:User",data.sender_user_id_) then dev = "المطور ،" else dev = "" end
if database:sismember(bot_id..'CoSu'..msg.chat_id_, data.sender_user_id_) then cu = 'مالك ،' else cu = "" end
if database:sismember(bot_id.."Basic:Constructor"..msg.chat_id_, data.sender_user_id_) then crr = "منشئ اساسي ،" else crr = "" end
if database:sismember(bot_id..'Constructor'..msg.chat_id_, data.sender_user_id_) then cr = "منشئ ،" else cr = "" end
if database:sismember(bot_id..'Manager'..msg.chat_id_, data.sender_user_id_) then own = "مدير ،" else own = "" end
if database:sismember(bot_id..'S00F4:MN:TF'..msg.chat_id_, data.sender_user_id_) then mn = 'منظف ،' else mn = '' end
if database:sismember(bot_id..'Mod:User'..msg.chat_id_, data.sender_user_id_) then mod = "ادمن ،" else mod = "" end
if database:sismember(bot_id..'Special:User'..msg.chat_id_, data.sender_user_id_) then vip = "مميز ،" else vip = "" end
if Can_or_NotCan(data.sender_user_id_,msg.chat_id_) ~= false then local text = "\n ߷ تم تنزيلك من الرتب التاليه \n ߷  { "..dev..""..crr..""..cr..""..own..""..mod..""..mn..""..vip.." } \n"
else
local text = "\n ߷ انت لاتمتلك رتبه \n"
end
database:srem(bot_id.."Sudo:User", data.sender_user_id_)
database:srem(bot_id.."CoSu"..msg.chat_id_,data.sender_user_id_)
database:srem(bot_id.."Basic:Constructor"..msg.chat_id_,data.sender_user_id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, data.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, data.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, data.sender_user_id_)
database:srem(bot_id..'S00F4:MN:TF'..msg.chat_id_, data.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, data.sender_user_id_)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗰𝗵𝗮𝗻𝗻𝗲𝗹 ♩',url='http://t.me/BLACK_TEAM_4'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" ߷ تم تنزيلك من جميع الرتب")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

end
if data.ID == "UpdateNewMessage" then  -- new msg
msg = data.message_
text = msg.content_.text_
--------------------------------------------------------------------------------------------------------------
if text and not database:sismember(bot_id..'Spam:Texting'..msg.sender_user_id_,text) then
database:del(bot_id..'Spam:Texting'..msg.sender_user_id_) 
end
--------------------------------------------------------------------------------------------------------------
if text and database:get(bot_id.."Del:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_) == 'true' then
local NewCmmd = database:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..text)
if NewCmmd then
database:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..text)
database:del(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
database:srem(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,' *߷تم حذف الامر*')  
else
send(msg.chat_id_, msg.id_,' *߷لا يوجد امر بهاذا الاسم*')  
end
database:del(bot_id.."Del:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_)
return false
end 
-------------------------------------------------------------------------------------------------------------- 
if data.message_.content_.text_ then
local NewCmmd = database:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end
end
if (text and text == "تعطيل اوامر التحشيش") then 
send(msg.chat_id_, msg.id_, ' *߷تم تعطيل اوامر التحشيش*')
database:set(bot_id.."Fun_Bots:"..msg.chat_id_,"true")
end
if (text and text == "تفعيل اوامر التحشيش") then 
send(msg.chat_id_, msg.id_, '  *߷تم تفعيل اوامر التحشيش*')
database:del(bot_id.."Fun_Bots:"..msg.chat_id_)
end
local Name_Bot = (database:get(bot_id..'Name:Bot') or 'بلاك')
if not database:get(bot_id.."Fun_Bots:"..msg.chat_id_) then
if text ==  ""..Name_Bot..' شنو رئيك بهاذا' and tonumber(msg.reply_to_message_id_) > 0 then 
function FunBot(extra, result, success) 
local Fun = {'لوكي وبقلبي من ساع زحفلي وحضرته 😒','خوش ولد و ورده مال الله 💋🙄','يلعب ع البنات 🙄', 'ولد زايعته الكاع 😶🙊','صاك يخبل ومعضل ','محلو وشواربه جنها مكناسه 😂🤷🏼‍♀️','اموت عليه 🌝','هوه غير الحب مال اني 🤓❤️','مو خوش ولد صراحه ☹️','ادبسز وميحترم البنات  ', 'فد واحد قذر 🙄😒','ماطيقه كل ما اكمشه ريحته جنها بخاخ بف باف مال حشرات 😂🤷‍♀️','مو خوش ولد 🤓' } 
send(msg.chat_id_, result.id_,''..Fun[math.random(#Fun)]..'')   
end   
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end  
if text == ""..Name_Bot..' تحب هذا' and tonumber(msg.reply_to_message_id_) > 0 then
function FunBot(extra, result, success) 
local Fun = {'الكبد مال اني ','يولي ماحبه ',' لٱ ايع ','بس لو الكفها اله اعضها 💔','ماخب حمير اسف','اكلك ۿذﭑ يكلي احبكك لولا ﭑݩٺ شتكول  ','ئووووووووف اموت ع ربه ','ايععععععععع','بلعباس اعشكك','ماحب مخابيل','احبب ميدو وبس','لٱ ماحبه','بله هاي جهره تكلي تحبهه ؟ ','بربك ئنته والله فارغ وبطران وماعدك شي تسوي جاي تسئلني احبهم لولا','افبس حبيبي هذا' } 
send(msg.chat_id_,result.id_,''..Fun[math.random(#Fun)]..'') 
end  
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end
end
if text and text:match('^'..Name_Bot..' ') then
data.message_.content_.text_ = data.message_.content_.text_:gsub('^'..Name_Bot..' ','')
end
if text == "نسبهتت الحب" or text == "نسبه حب" and msg.reply_to_message_id_ ~= 0 and Mod(msg) then
if not database:get(bot_id..'Cick:lov'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_,"sendlove")
Text = '*ارسل اسمك واسم الشخص الثاني،*  *\n مثال اسد و لبوى*'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبه الحب" and database:get(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_) == "sendlove" then
num = {"10","20","30","35","75","34","66","82","23","19","55","8","63","32","27","89","99","98","3","80","49","100","6","0",};
sendnum = num[math.random(#num)]
sl = '*نسبه حب* *'..text..'* هي :* '..sendnum..'%*'
send(msg.chat_id_, msg.id_,sl) 
database:del(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_)
end
if text == "نسبه الكره" or text == "نسبه كره" and msg.reply_to_message_id_ ~= 0 and Mod(msg) then
if not database:get(bot_id..'Cick:krh'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_,"sendkrhe")
Text = '*ارسل اسمك واسم الشخص الثاني،*  *\n مثال اسد و لبوى*'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبه الكره" and database:get(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_) == "sendkrhe" then
num = {"10","20","30","35","75","34","66","82","23","19","55","8","63","32","27","89","99","98","3","80","8","100","6","0",};
sendnum = num[math.random(#num)]
sl = '*نسبه كره* *'..text..'* هي : *'..sendnum..'%*'
send(msg.chat_id_, msg.id_,sl) 
database:del(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_)
end
if text == "نسبه رجوله" or text == "نسبه الرجوله" and msg.reply_to_message_id_ ~= 0 and Mod(msg) then
if not database:get(bot_id..'Cick:rjo'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_,"sendrjoe")
Text = '*ارسل اسم الشخص الذي تريد قياس نسبه رجولته* *\n مثال امير*'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبه رجوله" and database:get(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_) == "sendrjoe" then
numj = {"10","20","30","35","75","34","66","82","23","19","55","80","63","32","27","89","99","98","79","100","8","3","6","0",};
sendnuj = numj[math.random(#numj)]
xl = '*نسبه رجوله* *'..text..'* هي : *\n '..sendnuj..'%*'
send(msg.chat_id_, msg.id_,xl) 
database:del(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_)
end
if text == "نسبه الانوثه" or text == "نسبه انوثه" and msg.reply_to_message_id_ ~= 0 and Mod(msg) then
if not database:get(bot_id..'Cick:ano'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_,"sendanoe")
Text = '*ارسل اسم الشخص الذي تريد قياس نسبه انوثتها* *\n مثال نونه*'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبه الانوثه" and database:get(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_) == "sendanoe" then
numj = {"10","20","30","35","75","34","66","82","23","19","55","80","63","32","27","89","99","98","79","100","8","3","6","0",};
sendnuj = numj[math.random(#numj)]
xl = '*نسبه الانوثه* *'..text..'* هي : *\n '..sendnuj..'%*'
send(msg.chat_id_, msg.id_,xl) 
database:del(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_)
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Muted_User(msg.chat_id_,msg.sender_user_id_) then 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
return false  
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Ban_User(msg.chat_id_,msg.sender_user_id_) then 
chat_kick(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false  
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_User(msg.chat_id_,msg.content_.members_[0].id_) then 
chat_kick(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and GBan_User(msg.sender_user_id_) then 
chat_kick(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Gmute_User(msg.sender_user_id_) then 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and GBan_User(msg.content_.members_[0].id_) then 
chat_kick(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
end 
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  
database:set(bot_id.."Who:Added:Me"..msg.chat_id_..':'..msg.content_.members_[0].id_,msg.sender_user_id_)
local mem_id = msg.content_.members_  
local Bots = database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Mod(msg) and Bots == "kick" then   
https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
GOLD = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(GOLD)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_})
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_mod(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
local Bots = database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Mod(msg) and Bots == "del" then   
GOLD = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(GOLD)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_})
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_mod(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end 
end
end
if msg.content_.ID == 'MessagePinMessage' then
if Constructor(msg) then 
database:set(bot_id..'Pin:Id:Msg'..msg.chat_id_,msg.content_.message_id_)
else
local Msg_Pin = database:get(bot_id..'Pin:Id:Msg'..msg.chat_id_)
if Msg_Pin and database:get(bot_id.."lockpin"..msg.chat_id_) then
PinMessage(msg.chat_id_,Msg_Pin)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == 'MessagePinMessage' or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == 'MessageChatChangeTitle' or msg.content_.ID == "MessageChatDeleteMember" then   
if database:get(bot_id..'lock:tagservr'..msg.chat_id_) then  
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false
end
end   
--------------------------------------------------------------------------------------------------------------
SourceGOLD(data.message_,data)
plugin_Peland(data.message_)
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' and ChekAdd(msg.chat_id_) == true then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ then
database:set(bot_id..'user:Name'..msg.sender_user_id_,(data.username_))
end
--------------------------------------------------------------------------------------------------------------
if tonumber(data.id_) == tonumber(bot_id) then
return false
end
end,nil)   
end
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.message_id_)},function(extra, result, success)
database:incr(bot_id..'edits'..result.chat_id_..result.sender_user_id_)
local Text = result.content_.text_
if database:get(bot_id.."lock_edit_med"..msg.chat_id_) and not Text and not BasicConstructor(result) then
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local username = data.username_
local name = data.first_name_
local iduser = data.id_
local users = ('[@'..data.username_..']' or iduser)
local list = database:smembers(bot_id..'Constructor'..msg.chat_id_)
t = "\n *߷شخص ما يحاول تعديل الميديا* \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *߷لا يوجد ادمن*"
end
send(msg.chat_id_,0,''..t..'\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉ \n*߷تم التعديل على الميديا*\n*߷الشخص الي قام بالتعديل*\n*߷ايدي الشخص ◂ '..result.sender_user_id_..'*\n*߷معرف الشخص»{ '..users..' }*') 
end,nil)
DeleteMessage(msg.chat_id_,{[0] = msg.message_id_}) 
end
local text = result.content_.text_
if not Mod(result) then
------------------------------------------------------------------------
if text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("[hH][tT][tT][pP][sT]") or text and text:match("[tT][eE][lL][eE][gG][rR][aA].[Pp][Hh]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa].[Pp][Hh]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(@)(.*)") then
if database:get(bot_id.."lock:user:name"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("@") then
if database:get(bot_id.."lock:user:name"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(#)(.*)") then
if database:get(bot_id.."lock:hashtak"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("#") then
if database:get(bot_id.."lock:user:name"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
local GOLDAbot = database:get(bot_id.."GOLD1:Add:Filter:Rp2"..text..result.chat_id_)   
if GOLDAbot then
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," *߷العضو :* {["..data.first_name_.."](T.ME/"..data.username_..")}\n߷["..GOLDAbot.."] \n") 
else
send(msg.chat_id_,0," *߷العضو :* {["..data.first_name_.."](t.me/BLACK_TEAM_4)}\n߷["..GOLDAbot.."] \n") 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end
------------------------------------------------------------------------
if text and text:match("/") then
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end 
end 
if text and text:match("(.*)(/)(.*)") then
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text then
local GOLD1_Msg = database:get(bot_id.."GOLD1:Add:Filter:Rp2"..text..result.chat_id_)   
if GOLD1_Msg then
send(msg.chat_id_, msg.id_," ߷"..GOLD1_Msg)
DeleteMessage(result.chat_id_, {[0] = data.message_id_}) 
return false
end
end
end
end,nil)
------------------------------------------------------------------------
elseif (data.ID == "UpdateMessageSendSucceeded") then
local msg = data.message_
local text = msg.content_.text_
local Get_Msg_Pin = database:get(bot_id..'Msg:Pin:Chat'..msg.chat_id_)
if Get_Msg_Pin ~= nil then
if text == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) if d.ID == 'Ok' then;database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_);end;end,nil)   
elseif (msg.content_.sticker_) then 
if Get_Msg_Pin == msg.content_.sticker_.sticker_.persistent_id_ then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.animation_) then 
if msg.content_.animation_.animation_.persistent_id_ == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.photo_) then
if msg.content_.photo_.sizes_[0] then
id_photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
id_photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
id_photo = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
id_photo = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
if id_photo == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
end
end
if (data.ID == "UpdateOption" and data.value_.value_ == "Ready") then
local list = database:smembers(bot_id.."User_Bot") 
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data) end,nil) 
end 
local list = database:smembers(bot_id..'Chek:Groups') 
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
database:srem(bot_id..'Chek:Groups',v)  
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=v,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',v)  
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id..'Chek:Groups',v)  
end 
end,nil)
end
end
end