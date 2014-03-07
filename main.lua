print("hello world")

local physics = require("physics")
physics.start()

--deixar em tela cheia, esconder o statusbar
display.setStatusBar( display.HiddenStatusBar )

--criação dos objetos
local background = display.newImageRect("background.jpg", 990, 580)
background:setFillColor(10, 10, 10)
background:translate(display.contentCenterX, display.contentCenterY)
background:setMask(mask)

local floor = display.newImage( "floor.png", 100, 800 )
physics.addBody( floor, "static", { friction=0.6 } )

local porta = display.newImageRect("porta_abrindo.gif", 80, 150)
porta.x = 900
porta.y = 90

local Escada = display.newImageRect("91_44_escada.png", 310, 230)
Escada.x = 825
Escada.y = 295
Escada.rotation= -20

local chave = display.newImageRect("chave002.png", 50, 70)
chave.x = 440
chave.y = 25
physics.addBody( chave, { density = 1.0, bounce = 0.2 } )
chave.isPlatform = true
chave.isFixedRotation = true 
function chave:tap( event ) 
chave.isVisible = true
if(chave.tap) then
   chave.isVisible = false
end
end

chave:addEventListener( "tap", chave ) 


local player = display.newImage( "2100.png", 100, 150 )
player.x = 100
player.y = 500


--center_x = display.contentCenterX
--center_y = display.contentCenterY

--transition.to( player, {time=1000, x = center_x, y = center_y} )
--function player:tap (event)
--	if (event.x < player.contentWidth/2) then
--		transition.to( player, {time=1000, x = center_x, y = center_y} )
	--else 
	--	transition.to( Escada, {time=1000})
--	end
--end

--player:addEventListener("tap", player)


 local buttonUp = display.newImageRect("buttonUp.png", 50, 50)
 buttonUp.x = 890
 buttonUp.y = 480

 local buttonDown = display.newImageRect("buttonDown.png", 50, 50)
 buttonDown.x = 890
 buttonDown.y = 540
 
 local buttonEsq = display.newImageRect("buttonEsq.png", 50, 50)
 buttonEsq.x = 820
 buttonEsq.y = 500

 local buttonDir = display.newImageRect("buttonDir.png", 50, 50)
 buttonDir.x = 960
 buttonDir.y = 500

 function buttonUp:tap( event ) 
 player.y = player.y - 50 
 end
 function buttonDown:tap( event ) 
 player.y = player.y + 50 
 end
 function buttonEsq:tap( event ) 
 player.x = player.x - 50 
 end
 function buttonDir:tap( event ) 
 player.x = player.x + 50 
 end

 buttonUp:addEventListener( "tap", buttonUp ) 
 buttonDown:addEventListener( "tap", buttonDown ) 
 buttonEsq:addEventListener( "tap", buttonEsq ) 
 buttonDir:addEventListener( "tap", buttonDir ) 
 


--Criacao de caixas
score = 0
local caixa = display.newImageRect("caixa.png", 70, 70)
caixa.x=310
caixa.y=125
caixa:setFillColor(43, 70, 0)
physics.addBody( caixa, { density = 1.0, bounce = 0.2 } )
caixa.isPlatform = false
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
end
end

caixa:addEventListener( "tap", caixa ) 

local caixa = display.newImageRect("caixa.png", 70, 70)
caixa.x=380
caixa.y=125
caixa:setFillColor(0, 10, 10)
physics.addBody( caixa, { density = 1.0, bounce = 0.3 } )
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
end
end

caixa:addEventListener( "tap", caixa ) 

local caixa = display.newImageRect("caixa.png", 70, 70)
caixa.x=540
caixa.y=125
caixa:setFillColor(0, 0, 100)
physics.addBody( caixa, { density = 1.0, bounce = 0.4 } )
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
end
end

caixa:addEventListener( "tap", caixa ) 

local caixa = display.newImageRect("caixa.png", 70,70)
caixa.x=520
caixa.y=125
caixa:setFillColor(10, 0, 0)
physics.addBody( caixa, { density = 1.0, bounce = 0.5 } )
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
end
end

caixa:addEventListener( "tap", caixa ) 

local caixa = display.newImageRect("caixa.png", 70, 70)
caixa.x=590
caixa.y=125
caixa:setFillColor(43, 70, 0)
physics.addBody( caixa, { density = 1.0, bounce = 0.4 } )
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
end
end

caixa:addEventListener( "tap", caixa ) 

local caixa = display.newImageRect("caixa.png", 70, 70)
caixa.x=660
caixa.y=125
caixa:setFillColor(10, 0, 0)
physics.addBody( caixa, { density = 2.0, bounce = 0.3 } )
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
end
end

caixa:addEventListener( "tap", caixa ) 

local caixa = display.newImageRect("caixa.png", 70, 70)
caixa.x=730
caixa.y=125
caixa:setFillColor(0, 10, 10 )
physics.addBody( caixa, { density = 2.0, bounce = 0.2 } )
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
end
end

caixa:addEventListener( "tap", caixa ) 

local caixa = display.newImageRect("caixa.png", 70, 70)
caixa.x=310
caixa.y=50
caixa:setFillColor(0, 0, 100)
physics.addBody( caixa, { density = 2.0, bounce = 0.2 } )
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
end
end

caixa:addEventListener( "tap", caixa ) 

local caixa = display.newImageRect("caixa.png", 70, 70)
caixa.x=380
caixa.y=50
caixa:setFillColor(100, 0, 0)
physics.addBody( caixa, { density = 2.0, bounce = 0.2 } )
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
end
end

caixa:addEventListener( "tap", caixa ) 

local caixa = display.newImageRect("caixa.png", 70, 70)
caixa.x=450
caixa.y=50
caixa:setFillColor(43, 70, 0)
physics.addBody( caixa, { density = 2.0, bounce = 0.2 } )
caixa.isPlatform = true
caixa.isFixedRotation = true
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
end
end

caixa:addEventListener( "tap", caixa ) 

local caixa = display.newImageRect("caixa.png", 70, 70)
caixa.x=520
caixa.y=50
caixa:setFillColor(0, 10, 10)
physics.addBody( caixa, { density = 2.0, bounce = 0.2 } )
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
end
end

caixa:addEventListener( "tap", caixa ) 

local caixa = display.newImageRect("caixa.png", 70, 70)
caixa.x=590
caixa.y=50
caixa:setFillColor(0, 0, 100)
physics.addBody( caixa, { density = 2.0, bounce = 0.2 } )
caixa.isPlatform = true
caixa.isFixedRotation = true
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
end
end

caixa:addEventListener( "tap", caixa ) 

local caixa = display.newImageRect("caixa.png", 70, 70)
caixa.x=310
caixa.y=25
caixa:setFillColor(100, 0, 0)
physics.addBody( caixa, { density = 2.0, bounce = 0.2 } )
caixa.isPlatform = true
caixa.isFixedRotation = true
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
end
end

caixa:addEventListener( "tap", caixa ) 

local caixa = display.newImageRect("caixa.png", 70, 70)
caixa.x=520
caixa.y=25
caixa:setFillColor(43, 70, 0)
physics.addBody( caixa, { density = 1.0, bounce = 0.3 } )
caixa.isPlatform = true
caixa.isFixedRotation = true
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
end
end

caixa:addEventListener( "tap", caixa ) 


--Runtime:addEventListener("enterframe", update)

---limites de tela
local paredeesquerda = display.newRect(0,0,1, display.contentHeight + 550)
local parededireita = display.newRect(display.contentWidth,0,1, display.contentHeight + 550)
local paredecima = display.newRect(0,0, display.contentWidth + 420,1)

physics.addBody(paredeesquerda, "static", {bounce = 0.1})
physics.addBody(parededireita, "static", {bounce = 0.1})
physics.addBody(paredecima, "static", {bounce = 0.1})


---tamanho da tela
print("Height: ", display.contentHeight)
print("Width: ", display.contentWidth)


--PONTUAÇÃO
local scoreDisplay = display.newText("Score:", 0, 0, nil, 50 )
scoreDisplay.x = display.contentWidth - 910
scoreDisplay.y = 78

--function Score:tap(caixa)
--   if(caixa.tap) then
--      score = score + 70
--   end
--end
--Score:addEventListener("tap", caixa)

-- function scoreCaixaVermelha:tap(event)
--    if(caixa.tap) then
--       score = score + 70
--    end
-- end

-- scoreCaixaVermelha:addEventListener("tap", caixa)

-- function scoreCaixaAmarela:tap(event)
--    score = score + 30
-- end

-- function scoreCaixaAzul:tap(event)
--    score = score + 30
-- end

-- function scoreCaixaVerde:tap(event)
--    score = score + 30
-- end



