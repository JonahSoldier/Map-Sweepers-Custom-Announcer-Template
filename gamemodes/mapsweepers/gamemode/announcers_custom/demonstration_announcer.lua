local vo = {} --Contains a table of lines for each game event (i.e. victory, failure, friendly-fire, etc.
local voW = {} --Weights for voice-lines. 

--[[
	Uncomment the following line by removing the -- (and change the announcer-name to the file's name) to set the announcer to your announcer by default.
	You will probably want to do this, as the average player (or at the very least the below-average player) likely won't
	know that this command exists. It'll save you a lot of people asking how to turn it on (or claiming it's broken, when it isn't).
	
	(Keep in mind if other announcer packs are loaded at the same time whichever loads last will be selected, but that's a small issue. If you have several
	installed at once I'd hope you at least know how to switch between them). 
--]]
--RunConsoleCommand("jcms_announcer_type", "demonstration_announcer")

-- Mission-Lost {{{
	--[[all voice lines should be contained in sound/vo/jcms/
		You should create your own subfolder there, as 
	--]]
	
	vo[jcms.ANNOUNCER_FAILED] = {
		"demonstration_announcer/ilikemoney", --the file-name of the voice line (excluding its extension). ALL AUDIO FILES MUST BE MP3s!
		"demonstration_announcer/oohlookcoolfolder/fileinfolder" 
	}
	
	voW["ohlookcoolfolder/fileinfolder" ] = 0.25 --Weight for this entry. 0.25 means it will be substantially less likely to be picked
	--Generally speaking unique/complex lines should be less common, as they get old faster than generic ones.
	--(e.g. the "I've ran out of water" line in vanilla is super rare, "Another wave is coming" is very common.)
-- }}}

-- Mission-Won {{{
	vo[jcms.ANNOUNCER_VICTORY] = {
	}
-- }}}

-- Not leaving the pod {{{
	vo[jcms.ANNOUNCER_EXITPOD1] = {
	}

	vo[jcms.ANNOUNCER_EXITPOD2] = {
	}
-- }}}

-- Swarms {{{
	vo[jcms.ANNOUNCER_SWARM] = {
	}
	
	vo[jcms.ANNOUNCER_SWARM_BIG] = {
	}
-- }}}

-- Supply Call-ins {{{
	vo[jcms.ANNOUNCER_SUPPLIES] = {
	}

	vo[jcms.ANNOUNCER_SUPPLIES_AMMO] = {
	}
-- }}}

-- AFK {{{
	vo[jcms.ANNOUNCER_IDLE] = {
	}
-- }}}

-- Missing too many shots in a row {{{
	vo[jcms.ANNOUNCER_AMMO_WASTE] = {
	}
-- }}}

-- Friendly-Fire {{{
	vo[jcms.ANNOUNCER_FRIENDLYFIRE] = {
	}

	vo[jcms.ANNOUNCER_FRIENDLYFIRE_KILL] = {
	}
-- }}}

-- Player Died {{{
	vo[jcms.ANNOUNCER_DEAD] = {
	}
-- }}}

-- Call-ins {{{
	vo[jcms.ANNOUNCER_SHELLING] = {
	}

	vo[jcms.ANNOUNCER_ORBITALBEAM] = {
	}
-- }}}

-- Gambling Station {{{
	vo[jcms.ANNOUNCER_DONTTOUCH] = {
	}

	vo[jcms.ANNOUNCER_HA] = {
	}
-- }}}

-- New-Player Deployed {{{
	vo[jcms.ANNOUNCER_JOIN] = {
	}
-- }}}


return vo, voW --passes our data to the main announcer system, don't alter this line. 