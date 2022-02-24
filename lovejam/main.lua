-- To run the game, copy/paste this into a console and hit enter.
-- "C:\Program Files\LOVE\love.exe" "C:\Users\momom\OneDrive\Documentos\GitHub\loveslua\lovejam"



function love.load()
  love.graphics.setDefaultFilter("nearest", "nearest")
  love.window.setMode(960, 600, {
    fullscreen = false,
    borderless=true,
    resizable = false,
    vsync = true
  })
  IMG_BG = love.graphics.newImage( "assets/grid_3d_white.png" )
  WINDOW_HEIGHT = love.graphics.getHeight( )
  WINDOW_WIDTH = love.graphics.getWidth( )
end

function love.update(dt)

end

function love.draw()

end

-- Exits game when Esc key released:
function love.keyreleased(key)
  if key == "escape" then
    print("DEBUG: exiting game.")
    love.event.quit()
  end
end