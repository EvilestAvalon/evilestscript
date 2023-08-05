repeat
	task.wait()
until game:IsLoaded()

local lib = {
	['notification'] = loadstring(game:HttpGet(("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua"), true))(),
	['cooldown'] = false,
	['username'] = 'unknown',
	['bw'] = 'unknown'
}

local words = {
['gay'] = 'Bullying',
['ez'] = 'Bullying',
['robux'] = 'Scamming',
['where do you live'] = 'Personal Question',
['ga y'] = 'Bullying',
['sl//t'] = 'Bullying',
['<ock'] = 'Swearing',
['cock'] = 'Bullying',
['trash'] = 'Bullying',
['ugly'] = 'Bullying',
['fatherless'] = 'Bullying',
['nxgga'] = 'Swearing',
['nzgga'] = 'Swearing',
['kys'] = 'Bullying',
['ky'] = 'Bullying',
['kills yourself'] = 'Bullying',
['self die'] = 'Bullying',
['semen'] = 'Swearing',
['nut'] = 'Swearing',
['coem'] = 'Swearing',
['nika'] = 'Swearing',
['duck'] = 'Swearing',
['hell'] = 'Bullying',
['smell'] = 'Bullying',
['stink'] = 'Bullying',
['but'] = 'Bullying',
['chink'] = 'Bullying',
['ching'] = 'Bullying',
['chong'] = 'Bullying',
['jew'] = 'Bullying',
['n zi'] = 'Bullying',
['nzzi'] = 'Bullying',
['gorilla'] = 'Bullying',
['ape'] = 'Bullying',
['monkey'] = 'Bullying',
['baboon'] = 'Bullying',
['negro'] = 'Bullying',
['blackie'] = 'Bullying',
['yellow people'] = 'Bullying',
['black people'] = 'Bullying',
['beaner'] = 'Bullying',
['beanie'] = 'Bullying',
['beans'] = 'Bullying',
['bong'] = 'Bullying',
['brownie'] = 'Bullying',
['bozgor'] = 'Bullying',
['mule'] = 'Bullying',
['taiwanman'] = 'Bullying',
['chinaman'] = 'Bullying',
['christkiller'] = 'Bullying',
['cholo'] = 'Bullying',
['coconut'] = 'Bullying',
['coolie'] = 'Bullying',
['coon'] = 'Bullying',
['raccoon'] = 'Bullying',
['cracker'] = 'Bullying',
['crack'] = 'Bullying',
['cotton'] = 'Bullying',
['crow'] = 'Bullying',
['dago'] = 'Bullying',
['guinea'] = 'Bullying',
['pig'] = 'Bullying',
['darky'] = 'Bullying',
['dot'] = 'Bullying',
['gin'] = 'Bullying',
['gans'] = 'Bullying',
['gook'] = 'Bullying',
['greaser'] = 'Bullying',
['grease'] = 'Bullying',
['gyp'] = 'Bullying',
['gypsy'] = 'Bullying',
['fat'] = 'Bullying',
['short'] = 'Bullying',
['woman'] = 'Bullying',
['mutt'] = 'Bullying',
['hun'] = 'Bullying',
['jap'] = 'Bullying',
['jerry'] = 'Bullying',
['uncle tom'] = 'Bullying',
['nog'] = 'Bullying',
['taco'] = 'Bullying',
['phone'] = 'Personal Questions',
['toad'] = 'Bullying',
['wet'] = 'Swearing',
['free'] = 'Scamming',
	['trans'] = 'Bullying',
	['lgbt'] = 'Bullying',
	['lesbian'] = 'Bullying',
	['suicide'] = 'Bullying',
	['cum'] = 'Swearing',
	['f@g0t'] = 'Bullying',
	['cock'] = 'Swearing',
	['penis'] = 'Swearing',
	['furry'] = 'Bullying',
	['furries'] = 'Bullying',
	['dick'] = 'Swearing',
	['nigger'] = 'Bullying',
	['bible'] = 'Bullying',
	['nigga'] = 'Bullying',
	['cheat'] = 'Scamming',
	['report'] = 'Bullying',
	['niga'] = 'Bullying',
	['bitch'] = 'Bullying',
	['sex'] = 'Swearing',
	['cringe'] = 'Bullying',
	['trash'] = 'Bullying',
	['allah'] = 'Bullying',
	['dumb'] = 'Bullying',
	['idiot'] = 'Bullying',
	['kid'] = 'Bullying',
	['clown'] = 'Bullying',
	['bozo'] = 'Bullying',
	['faggot'] = 'Bullying',
	['autist'] = 'Bullying',
	['autism'] = 'Bullying',
	['get a life'] = 'Bullying',
	['nolife'] = 'Bullying',
	['no life'] = 'Bullying',
	['adopted'] = 'Bullying',
	['skill issue'] = 'Bullying',
	['muslim'] = 'Bullying',
	['gender'] = 'Bullying',
	['parent'] = 'Bullying',
	['islam'] = 'Bullying',
	['christian'] = 'Bullying',
	['noob'] = 'Bullying',
	['retard'] = 'Bullying',
	['burn'] = 'Bullying',
	['stupid'] = 'Bullying',
	['wthf'] = 'Swearing',
	['pride'] = 'Bullying',
	['mother'] = 'Bullying',
	['father'] = 'Bullying',
	['homo'] = 'Bullying',
	['hate'] = 'Bullying',
	['exploit'] = 'Scamming',
	['hack'] = 'Scamming',
	['download'] = 'Scamming',
	['youtube'] = 'Offsite Links'
['twitter'] = 'Offsite Links'
['discord'] = 'Offsite Links'
['verm'] = 'Offsite Links'
['v3rm'] = 'Offsite Links'
['cord'] = 'Offsite Links'
['minecraft'] = 'Offsite Links'
}

local players = game:GetService('Players')
local user = game:GetService('Players').LocalPlayer

function lib.notify()
	lib.notification:message{
		Title = "AutoReport",
		Description = "Reported " .. lib.username .. ' for saying "' .. lib.bw .. '"',
		Icon = 6023426926
	}
end

function lib.report(user, name, rs)
	if user and lib.cooldown == false then
		lib.username = name
		local suc, er = pcall(function()
			players:ReportAbuse(players:FindFirstChild(name), rs, 'breaking TOS')
		end)
		if not suc then
			return warn("Couldn't report due to the reason: " .. er .. ' | AR')
		else
			lib.notify()
		end
		lib.cooldown = true
		task.wait(5)
		lib.username = 'unknown'
		lib.bw = 'unknown'
		lib.cooldown = false
	end
end

players.PlayerChatted:Connect(function(chatType, plr, msg)
	msg = string.lower(msg)
	if chatType ~= Enum.PlayerChatType.Whisper and plr ~= user then
		for i, v in next, words do
			if string.find(msg, i) then
				lib.bw = i
				lib.report(plr.UserId, plr.Name,v)
			end
		end
	end
end)

lib.notification:message{
	Title = "AutoReport",
	Description = "loaded",
	Icon = 6023426926
}
