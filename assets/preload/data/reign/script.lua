local allowCountdown = false

function onEndSong()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
	startVideo('ending');
	allowCountdown = true;
	return Function_Stop;
end
return Function_Continue;
end

function onCreate()
	if getProperty('boyfriend.curCharacter') == 'bf' then
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bfslice'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
	end
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.02);
    end
end