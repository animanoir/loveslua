-- To run the game, copy/paste this into a console and hit enter.
-- "C:\Program Files\LOVE\love.exe" "C:\Users\momom\OneDrive\Documentos\GitHub\loveslua\lovejam"



WINDOW_WIDTH = 960
WINDOW_HEIGHT = 600
xoff = 0.0


function love.load()
  math.randomseed(os.time())
  love.graphics.setDefaultFilter("nearest", "nearest")
  love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
    fullscreen = false,
    borderless=true,
    resizable = false,
    vsync = true
  })
  IMG_BG = love.graphics.newImage( "assets/grid_3d_white.png" )
end

function love.update(dt)
  xoff = xoff +  0.01
end

function love.draw()
  love.graphics.draw(IMG_BG, 0, 0)
  love.graphics.ellipse( "line", love.mouse.getX(), love.mouse.getY(),100 )
  love.graphics.circle("fill", WINDOW_WIDTH/2, WINDOW_HEIGHT/2, math.sin(xoff)*50)
  print(math.sin(xoff))
end

-- Exits game when Esc key released:
function love.keyreleased(key)
  if key == "escape" then
    print("DEBUG: exiting game.")
    love.event.quit()
  end
end