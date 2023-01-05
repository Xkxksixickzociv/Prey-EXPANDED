local byeSonic = false
function onCreate()


    precacheImage('pixelUI/NOTE-FURNACEBLU_assets')
	precacheImage('pixelUI/NOTE_assets')
	precacheImage('pixelUI/NOTE-FURNACE_assets')
	precacheImage('pixelUI/NOTE-FURNACE_assetsENDS')
	precacheImage('pixelUI/NOTE-FURNACEBLU_assetsENDS')
	precacheImage('pixelUI/NOTE-supa_assets')
	precacheImage('pixelUI/NOTE-supa_assetsENDS')
	precacheImage('pixelUI/NOTE-STARVI_assets')
	precacheImage('pixelUI/NOTE-STARVI_assetsENDS')
	precacheImage('pixelUI/NOTE_assetsENDS')

    setProperty('dad.x',-400)

    makeAnimatedLuaSprite('MechaIThink','characters/Furnace_sheet',-600,850)
    setProperty('MechaIThink.antialiasing',false)
    addAnimationByPrefix('MechaIThink','idle','Furnace idle',24,true)
    scaleObject('MechaIThink',6,6)

end
function onStepHit()
    if curStep < 20 then
        setProperty('dad.alpha',0)
    elseif curStep == 20 then
        setProperty('dad.alpha',1)
    end
    if curStep == 130 then
        setProperty('camZooming',true)
    elseif curStep == 143 then
        setProperty('camZooming',false)
    end
    if curStep == 249 then
        doTweenX('backMecha','dad',100,1,'quartOut')
    end

    if curStep == 1508 then
        doTweenX('byeMechaRemastered','dad',-600,2.5,'quartInOut')
        doTweenAngle('byeMechaRemasteredAngle','dad',-180,3.5,'quartInOut')

    end
    if curStep == 1576 then
        doTweenX('helloEggHead','dad',1100,2,'quartOut')
    end
    if curStep == 2448 then
        addLuaSprite('MechaIThink',false)
        doTweenX('rightMecha','MechaIThink',2200,5,'linear')
    end
    if curStep == 3328 then
        doTweenX('byeEggHead','dad',-500,2.5,'quartInOut')
    end
    if curStep == 3689 then
        doTweenX('helloEggHead','gf',1100,2,'quartOut')
    end
    if curStep == 3580 then
        doTweenAngle('byeMechaRemasteredAngle','dad',0,1,'quartInOut')
    end
    if curStep == 3600 then
        doTweenX('helloFurnace','dad',700,30,'quartOut')
    end

    if curStep == 4126 then
        doTweenX('byeEggHead','gf',-1000,2.5,'quartInOut')
    end
    if curStep == 4020 then
        doTweenX('byeMecha','dad',-1000,5,'quartInOut')
    end
end
function onEvent(name,v1,v2)
    if name == 'Change Character' then
        if v2 == 'starved-pixel' and v1 == 'dad' then
            setProperty('dad.x',-500)
            setProperty('dad.y',-200)
        end
    end
    if name == 'Change Character' then
        if v2 == 'Furnace-outline' and v1 == 'dad' then
            setProperty('dad.x',100)
            setProperty('dad.y',100)
        end
    end
    if name == 'Change Character' then
        if v2 == 'starved-pixel' and v1 == 'gf' then
            setProperty('gf.x',-500)
            setProperty('gf.y',-200)
        end
    end
end

function onUpdate()
    if byeSonic == true and getProperty('MechaIThink2.x') > getProperty('boyfriend.x') then
        setProperty('MechaIThink2.x',getProperty('MechaIThink2.x') - 80)
    end
end
function onTweenCompleted(tag)
    if tag == 'rightMecha' then
        removeLuaSprite('MechaIThink',true)
    end
end