display.setStatusBar(display.HiddenStatusBar)

--Add Sky
local sky = display.newImage("images/sky.png")
sky.x = 240
sky.y = 160

--Add Mountains
local mountains1 = display.newImage("images/mountains.png", true)
mountains1.x = 480
mountains1.y = 160

local mountains2 = display.newImage("images/mountains.png", true)
mountains2.x = 1440
mountains2.y = 160

--Add Trees Background
local treesback1 = display.newImage("images/trees-back.png", true)
treesback1.x = 240
treesback1.y = 160

local treesback2 = display.newImage("images/trees-back.png", true)
treesback2.x = 760
treesback2.y = 160

--Add Trees Foreground
local treesfore1 = display.newImage("images/trees-fore.png", true)
treesfore1.x = 240
treesfore1.y = 160

local treesfore2 = display.newImage("images/trees-fore.png", true)
treesfore2.x = 760
treesfore2.y = 160


--the update function will control most everything that happens in our game
--this will be called every frame(30 frames per second in our case, which is the Corona SDK default)
local function update( event )
  updateBackgrounds()
end



function updateBackgrounds()
  --mountains movement
  mountains1.x = mountains1.x - (.50)
  if(mountains1.x < -480) then
    mountains1.x = 1440
  end

  mountains2.x = mountains2.x - (.50)
  if(mountains2.x < -480) then
    mountains2.x = 1440
  end
 
   --treesback1 movement
  treesback1.x = treesback1.x - (1)
  
  if(treesback1.x < -239) then
    treesback1.x = 760
  end

  treesback2.x = treesback2.x - (1)
  if(treesback2.x < -239) then
    treesback2.x = 760
  end
 
  

  --treesfore1 movement
  treesfore1.x = treesfore1.x - (1.5)
  
  if(treesfore1.x < -239) then
    treesfore1.x = 760
  end

  treesfore2.x = treesfore2.x - (1.5)
  if(treesfore2.x < -239) then
    treesfore2.x = 760
  end

end


timer.performWithDelay(1, update, -1)