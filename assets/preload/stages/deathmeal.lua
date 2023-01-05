local tilin = false
local width = 0

function onCreate()

 makeLuaSprite('stardustBg', 'starved/stardustBg3GH', -1000, -750);
 width = getProperty("stardustBg.width")    
 setLuaSpriteScrollFactor('stardustBg', 1, 1);
  scaleObject('stardustBg', 1, 1);
  addLuaSprite('stardustBg', false);
  setProperty('stardustBg.visible', false);
  
  makeLuaSprite('stardustBg2', 'starved/stardustBg4GH', 3600, -750);
 width = getProperty("stardustBg2.width")    
 setLuaSpriteScrollFactor('stardustBg2', 1, 1);
  scaleObject('stardustBg2', 1, 1);
  addLuaSprite('stardustBg2', false);
  setProperty('stardustBg2.visible', false);
 
 makeLuaSprite('stardustFloor', 'starved/stardustFloor1GH', -1000, -1460);
 width = getProperty("stardustFloor.width")    
 setLuaSpriteScrollFactor('stardustFloor', 1, 1);
  scaleObject('stardustFloor', 1, 1);
  addLuaSprite('stardustFloor', true);
  setProperty('stardustFloor.visible', false);
  
  makeLuaSprite('stardustFloor2', 'starved/stardustFloor2GH', 3600, -1460);
 width = getProperty("stardustFloor2.width")    
 setLuaSpriteScrollFactor('stardustFloor2', 1, 1);
  scaleObject('stardustFloor2 ', 1, 1);
  addLuaSprite('stardustFloor2', true);
  setProperty('stardustFloor2.visible', false);

  makeLuaSprite('stardustFloor5', 'starved/stardustFloor5GH', -1000, -1460);
 width = getProperty("stardustFloor5.width")    
 setLuaSpriteScrollFactor('stardustFloor5', 1, 1);
  scaleObject('stardustFloor5', 1, 1);
  addLuaSprite('stardustFloor5', false);
  setProperty('stardustFloor5.visible', false);
  
  makeLuaSprite('stardustFloor6', 'starved/stardustFloor6GH', 3600, -1460);
 width = getProperty("stardustFloor6.width")    
 setLuaSpriteScrollFactor('stardustFloor6', 1, 1);
  scaleObject('stardustFloor6 ', 1, 1);
  addLuaSprite('stardustFloor6', false);
  setProperty('stardustFloor6.visible', false);

  makeLuaSprite('stardustFloor3', 'starved/stardustFloorDIALOGUEGH', -1000, -1460);
 width = getProperty("stardustFloor3.width")    
 setLuaSpriteScrollFactor('stardustFloor3', 1, 1);
  scaleObject('stardustFloor3', 1, 1);
  addLuaSprite('stardustFloor3', true);
  setProperty('stardustFloor3.visible', false);
  
  makeLuaSprite('stardustFloor4', 'starved/stardustFloorDIALOGUEGH2', 3600, -1460);
 width = getProperty("stardustFloor4.width")    
 setLuaSpriteScrollFactor('stardustFloor4', 1, 1);
  scaleObject('stardustFloor4 ', 1, 1);
  addLuaSprite('stardustFloor4', true);
  setProperty('stardustFloor4.visible', false);
  
  makeLuaSprite('red', 'starved/red', -500, -400);
addLuaSprite('red', true);
scaleObject('red', 2, 2);
setProperty('red.visible', false);

   setPropertyFromClass('GameOverSubstate', 'characterName', 'sonic-gameover')
   setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'prey-death')
   setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'prey-loop')
   setPropertyFromClass('GameOverSubstate', 'endSoundName', 'prey-retry')
end


function onCreatePost()
	setProperty('scoreTxt.visible', 0)
	setProperty('botplayTxt.visible', 0)
	setProperty("timeBarBG.visible", false)
	setProperty("timeTxt.visible", false);
	setProperty("timeBar.visible", false)
	setProperty("healthBar.visible", true)
	setProperty('healthBar.x', 530)
end

function onTweenCompleted(tag)
  if tag == 'stardustFloorTweene' then
    setProperty("stardustFloor.x", -1000)
    setProperty("stardustFloor2.x", 3600)
    setProperty("stardustFloor3.x", -1000)
    setProperty("stardustFloor4.x", 3600)
    setProperty("stardustFloor5.x", -1000)
    setProperty("stardustFloor6.x", 3600)
    setProperty("stardustBg.x", -1000)
    setProperty("stardustBg2.x", 3600)
    doTweenX('stardustFloorTweene', 'stardustFloor', -5600, 1.5, 'linear'); 
    doTweenX('stardustFloor2Tweene', 'stardustFloor2', -1000, 1.5, 'linear'); 
    doTweenX('stardustFloor3Tweene', 'stardustFloor3', -5600, 1.5, 'linear'); 
    doTweenX('stardustFloor4Tweene', 'stardustFloor4', -1000, 1.5, 'linear');
    doTweenX('stardustFloor5Tweene', 'stardustFloor5', -5600, 1.5, 'linear'); 
    doTweenX('stardustFloor6Tweene', 'stardustFloor6', -1000, 1.5, 'linear'); 
    doTweenX('stardustBgTweene', 'stardustBg', -5600, 1.5, 'linear'); 
    doTweenX('stardustBg2Tweene', 'stardustBg2', -1000, 1.5, 'linear'); 
  end
end

function onUpdate(tag)
  if tag == ('stardustFloorTweene') then
    setProperty("stardustFloor.x", -1000)
    setProperty("stardustFloor2.x", 3600)
    setProperty("stardustFloor3.x", -1000)
    setProperty("stardustFloor4.x", 3600)
    setProperty("stardustFloor5.x", -1000)
    setProperty("stardustFloor6.x", 3600)
    setProperty("stardustBg.x", -1000)
    setProperty("stardustBg2.x", 3600)
    doTweenX('stardustFloorTweene', 'stardustFloor', -3000, 0.000001, 'linear');
    doTweenX('stardustFloor2Tweene', 'stardustFloor2', 500, 0.000001, 'linear');
    doTweenX('stardustFloor3Tweene', 'stardustFloor3', -3000, 0.000001, 'linear');
    doTweenX('stardustFloor4Tweene', 'stardustFloor4', 500, 0.000001, 'linear');
    doTweenX('stardustFloor5Tweene', 'stardustFloor5', -3000, 0.000001, 'linear');
    doTweenX('stardustFloor6Tweene', 'stardustFloor6', 500, 0.000001, 'linear');
    doTweenX('stardustBgTweene', 'stardustBg', -5600, 15, 'linear');
    doTweenX('stardustBg2Tweene', 'stardustBg2', -1000, 15, 'linear');
  end
end

function onStepHit()
  if curStep == 10 then --background becomes visible
    setProperty('stardustFloor.visible', true);
    setProperty('stardustFloor2.visible', true);
    setProperty('stardustFloor3.visible', false);
    setProperty('stardustFloor4.visible', false);
    setProperty('stardustBg.visible', true);
    setProperty('stardustBg2.visible', true);
    doTweenX('stardustFloorTweene', 'stardustFloor', -5600, 1.5, 'linear'); 
    doTweenX('stardustFloor2Tweene', 'stardustFloor2', -1000, 1.5, 'linear'); 
    doTweenX('stardustFloor3Tweene', 'stardustFloor3', -5600, 1.5, 'linear'); 
    doTweenX('stardustFloor4Tweene', 'stardustFloor4', -1000, 1.5, 'linear'); 
    doTweenX('stardustBgTweene', 'stardustBg', -5600, 1.5, 'linear'); 
    doTweenX('stardustBg2Tweene', 'stardustBg2', -1000, 1.5 , 'linear'); 
  end

 if curStep == 768 then --seems like that bucket of bolts had to lay off the nitro this time around!
    setProperty('stardustFloor.visible', false);
    setProperty('stardustFloor2.visible', false);
    setProperty('stardustFloor3.visible', true);
    setProperty('stardustFloor4.visible', true);
    doTweenX('stardustFloorTweene', 'stardustFloor', -5600, 1.5, 'linear'); 
    doTweenX('stardustFloor2Tweene', 'stardustFloor2', -1000, 1.5, 'linear'); 
    doTweenX('stardustFloor3Tweene', 'stardustFloor3', -5600, 1.5, 'linear'); 
    doTweenX('stardustFloor4Tweene', 'stardustFloor4', -1000, 1.5, 'linear'); 
    doTweenX('stardustBgTweene', 'stardustBg', -5600, 1.5, 'linear'); 
    doTweenX('stardustBg2Tweene', 'stardustBg2', -1000, 1.5 , 'linear'); 
  end

  if curStep == 1295 then --speed up at starved part
    setProperty('stardustFloor.visible', true);
    setProperty('stardustFloor2.visible', true);
    setProperty('stardustFloor3.visible', false);
    setProperty('stardustFloor4.visible', false);
    setProperty('stardustFloor5.visible', true);
    setProperty('stardustFloor6.visible', true);
    setProperty('stardustBg.visible', true);
    setProperty('stardustBg2.visible', true);
    doTweenX('stardustFloorTweene', 'stardustFloor', -5600, 1.5, 'linear'); 
    doTweenX('stardustFloor2Tweene', 'stardustFloor2', -1000, 1.5, 'linear'); 
    doTweenX('stardustFloor3Tweene', 'stardustFloor3', -5600, 1.5, 'linear'); 
    doTweenX('stardustFloor4Tweene', 'stardustFloor4', -1000, 1.5, 'linear'); 
    doTweenX('stardustFloor5Tweene', 'stardustFloor5', -5600, 1.5, 'linear'); 
    doTweenX('stardustFloor6Tweene', 'stardustFloor6', -1000, 1.5, 'linear'); 
    doTweenX('stardustBgTweene', 'stardustBg', -5600, 1.5, 'linear'); 
    doTweenX('stardustBg2Tweene', 'stardustBg2', -1000, 1.5 , 'linear'); 
  end
end
