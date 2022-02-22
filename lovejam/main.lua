-- "C:\Program Files\LOVE\love.exe" "C:\Users\momom\OneDrive\Documentos\GitHub\loveslua\lovejam"

function love.load()
  love.window.setMode(960, 600, {
    borderless=true
  })
  imgBackground = love.graphics.newImage( "assets/grid_3d_white.png" )
end

function love.update()

end

function love.draw()
  love.graphics.draw(imgBackground, 0, 0)
  love.graphics.rectangle( "line", love.mouse.getX(), 100, 100, 100, 100, 100, 100 )

end