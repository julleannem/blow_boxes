print("hello world")

local physics = require("physics")
physics.start()

--deixar em tela cheia, esconder o statusbar
display.setStatusBar( display.HiddenStatusBar )

--criação dos objetos
local background = display.newImageRect("Muro.png", 990, 580)
background:setFillColor(10, 10, 10)
background:translate(display.contentCenterX, display.contentCenterY)
background:setMask(mask)

local floor = display.newImageRect( "Chao.png", 987, 290 )
physics.addBody( floor, "static", { friction=0.6 } )
floor.x = 500
floor.y = 542

local porta = display.newImageRect("porta_abrindo.gif", 80, 150)
porta.x = 900
porta.y = 90

local Escada = display.newImageRect("91_44_escada.png", 310, 230)
Escada.x = 825
Escada.y = 295
Escada.rotation= -20

local chave = display.newImageRect("chave002.png", 50, 70)
chave.x = 520
chave.y = 196
--physics.addBody( chave, { density = 1.0, bounce = 0.2 } )
--chave.isPlatform = true
--chave.isFixedRotation = true 
function chave:tap( event ) 
if(chave.tap) then
   physics.addBody( chave, { density = 1.0, bounce = 0.2 } )
end
end

chave:addEventListener( "tap", chave ) 


local player = display.newImageRect( "2100.png", 100, 150 )
player.x = 100
player.y = 500
--physics.addBody(player)


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
 
--PONTUAÇÃO
local score = 0
local scoreDisplay = display.newText("Score: ", 0, 0, nil, 30 )
scoreDisplay.x = display.contentWidth - 910
scoreDisplay.y = 78

--Criacao de caixas
--Caixa Amarela (segunda fila)
local caixa = display.newImageRect("caixa1.png", 70, 70)
caixa.x=310
caixa.y=125
caixa:setFillColor(43, 70, 0)
caixa.isPlatform = false
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
   score = score + 10
   scoreDisplay.text = "Score: " .. score
   scoreDisplay.anchorX = 0.5
end
end

caixa:addEventListener( "tap", caixa ) 

--Caixa Verde (segunda fila)
local caixa = display.newImageRect("caixa1.png", 70, 70)
caixa.x=380
caixa.y=125
caixa:setFillColor(0, 10, 10)
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
   score = score + 30
   scoreDisplay.text = "Score: " .. score
   scoreDisplay.anchorX = 0.5
end
end

caixa:addEventListener( "tap", caixa ) 

--Caixa Azul (segunda fila)
local caixa = display.newImageRect("caixa1.png", 70, 70)
caixa.x=450
caixa.y=125
caixa:setFillColor(0, 0, 100)
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
   score = score + 50
   scoreDisplay.text = "Score: " .. score
   scoreDisplay.anchorX = 0.5
end
end

caixa:addEventListener( "tap", caixa ) 

--Caixa Vermelha (segunda fila)
local caixa = display.newImageRect("caixa1.png", 70,70)
caixa.x=520
caixa.y=125
caixa:setFillColor(10, 0, 0)
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
   score = score + 70
   scoreDisplay.text = "Score: " .. score
   scoreDisplay.anchorX = 0.5
end
end

caixa:addEventListener( "tap", caixa ) 

--Caixa Amarela (segunda fila)
local caixa = display.newImageRect("caixa1.png", 70, 70)
caixa.x=590
caixa.y=125
caixa:setFillColor(43, 70, 0)
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
   score = score + 10
   scoreDisplay.text = "Score: " .. score
   scoreDisplay.anchorX = 0.5
end
end

caixa:addEventListener( "tap", caixa ) 

--Caixa Vermelha (segunda fila)
local caixa = display.newImageRect("caixa1.png", 70, 70)
caixa.x=660
caixa.y=125
caixa:setFillColor(10, 0, 0)
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
   score = score + 70
   scoreDisplay.text = "Score: " .. score
   scoreDisplay.anchorX = 0.5
end
end

caixa:addEventListener( "tap", caixa ) 

--Caixa Verde (segunda fila)
local caixa = display.newImageRect("caixa1.png", 70, 70)
caixa.x=730
caixa.y=125
caixa:setFillColor(0, 10, 10 )
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
   score = score + 30
   scoreDisplay.text = "Score: " .. score
   scoreDisplay.anchorX = 0.5
end
end

caixa:addEventListener( "tap", caixa ) 

--Caixa Azul (primeira fila)
local caixa = display.newImageRect("caixa1.png", 70, 70)
caixa.x=310
caixa.y=50
caixa:setFillColor(0, 0, 100)
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
   score = score + 50
   scoreDisplay.text = "Score: " .. score
   scoreDisplay.anchorX = 0.5
end
end

caixa:addEventListener( "tap", caixa ) 

--Caixa Vermelha (primeira fila)
local caixa = display.newImageRect("caixa1.png", 70, 70)
caixa.x=380
caixa.y=50
caixa:setFillColor(100, 0, 0)
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
   score = score + 70
   scoreDisplay.text = "Score: " .. score
   scoreDisplay.anchorX = 0.5
end
end

caixa:addEventListener( "tap", caixa ) 
--Caixa Amarela (primeira fila)
local caixa = display.newImageRect("caixa1.png", 70, 70)
caixa.x=450
caixa.y=50
caixa:setFillColor(43, 70, 0)
caixa.isPlatform = true
caixa.isFixedRotation = true
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
   score = score + 10
   scoreDisplay.text = "Score: " .. score
   scoreDisplay.anchorX = 0.5
end
end

caixa:addEventListener( "tap", caixa ) 

--Caixa Verde (primeira fila)
local caixa = display.newImageRect("caixa1.png", 70, 70)
caixa.x=520
caixa.y=50
caixa:setFillColor(0, 10, 10)
caixa.isPlatform = true
caixa.isFixedRotation = true 
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
   score = score + 30
   scoreDisplay.text = "Score: " .. score
   scoreDisplay.anchorX = 0.5
end
end

caixa:addEventListener( "tap", caixa ) 

--Caixa Azul (primeira fila)
local caixa = display.newImageRect("caixa1.png", 70, 70)
caixa.x=590
caixa.y=50
caixa:setFillColor(0, 0, 100)
caixa.isPlatform = true
caixa.isFixedRotation = true
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
   score = score + 50
   scoreDisplay.text = "Score: " .. score
   scoreDisplay.anchorX = 0.5
end
end

caixa:addEventListener( "tap", caixa ) 

--Caixa Vermelha (terceira fila)
local caixa = display.newImageRect("caixa1.png", 70, 70)
caixa.x=310
caixa.y=196
caixa:setFillColor(100, 0, 0)
caixa.isPlatform = true
caixa.isFixedRotation = true
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
   score = score + 70
   scoreDisplay.text = "Score: " .. score
   scoreDisplay.anchorX = 0.5
end
end

caixa:addEventListener( "tap", caixa ) 

--Caixa Amarela (terceira fila)
local caixa = display.newImageRect("caixa1.png", 70, 70)
caixa.x=520
caixa.y=196
caixa:setFillColor(43, 70, 0)
caixa.isPlatform = true
caixa.isFixedRotation = true
function caixa:tap( event ) 
caixa.isVisible = true
if(caixa.tap) then
   caixa.isVisible = false
   score = score + 10
   scoreDisplay.text = "Score: " .. score
   scoreDisplay.anchorX = 0.5
end
end

caixa:addEventListener( "tap", caixa ) 


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