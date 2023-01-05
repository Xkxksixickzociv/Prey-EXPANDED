local allowCountdown = false
function onStartCountdown()
	if not allowCountdown then
		runTimer('startText', 0);
		allowCountdown = true;
		startCountdown();
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startText' then
		makeLuaSprite('blackscreen', 'blackscreen', 0, 0);
		setObjectCamera('blackscreen', 'other');
		addLuaSprite('blackscreen', true);
		makeLuaSprite('circle', 'transarentSplash', 777, 0);
		setObjectCamera('circle', 'other');
		addLuaSprite('circle', true);
		makeLuaSprite('text', 'greenhill', -1100, 0);
		setObjectCamera('text', 'other');
		addLuaSprite('text', true);
		runTimer('appear', 0.2, 1);
		runTimer('fadeout', 2.2, 2);
	elseif tag == 'appear' then
		doTweenX('circletween', 'circle', 0, 0.5, 'linear');
		doTweenX('texttween', 'text', 0, 0.5, 'linear');
	elseif tag == 'fadeout' then
		doTweenAlpha('circlefade', 'circle', 0, 0.5, 'linear');
		doTweenAlpha('textfade', 'text', 0, 0.5, 'linear');
		doTweenAlpha('blackfade', 'blackscreen', 0, 0.5, 'linear');
	end
end
