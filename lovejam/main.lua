-- To run the game, copy/paste this into a console and hit enter.
-- "C:\Program Files\LOVE\love.exe" "C:\Users\momom\OneDrive\Documentos\GitHub\loveslua\lovejam"

function love.load()
  love.window.setMode(960, 600, {
    borderless=true
  })
  imgBackground = love.graphics.newImage( "assets/grid_3d_white.png" )
  wHeight = love.graphics.getHeight( )
end

function love.update()
end

function love.draw()
  love.graphics.draw(imgBackground, 0, 0)
  love.graphics.push()
    love.graphics.origin(love.mouse.getX(), 100)
    love.graphics.rectangle( "line", love.mouse.getX(), wHeight/1.5, 100, 100, 100, 100, 100 )
  love.graphics.pop()

end

-- Exits game when Esc key released:
function love.keyreleased(key)
  if key == "escape" then
    print("DEBUG: exiting game.")
    love.event.quit()
  end
end