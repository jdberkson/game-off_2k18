debug = true
sheepImg = nil
num  = 6
herd = {}


function love.load(arg)
  gamestart = true
  sheepstanding = love.graphics.newImage('Images/sheepstanding.png')

end

function love.update(dt)

end

function love.draw(dt)
  if gamestart == true then
    drawsheep(num)
  end
end
function drawsheep(num)
  for i = 1,num,1
  do
    newsheep = {x = math.random(50, 910), y = math.random(50, 590), speed = 0, mass = 1, img = sheepstanding}
    table.insert(herd,newsheep)
  end
  for i, sheep in ipairs(herd) do
  	love.graphics.draw(sheep.img, sheep.x, sheep.y)
  end
  gamestart = false
end
