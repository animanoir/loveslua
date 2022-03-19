local entity_service = {}

-- All players entities:
entity_service.entities = {}

entity_service.spawn = function(player_id, x_pos, y_pos)
  return {
    -- Color randomizer:
    color = {1, 1, 1},
    id = player_id,
    -- Shape randomizer:
    shape = love.physics.newPolygonShape(0,0,50,0,50,50,0,50),
    x_pos = x_pos,
    y_pos = y_pos
  }
end

entity_service.draw = function(entity)
  love.graphics.setColor(entity.color)
  local points = { entity.shape:getPoints() }
  for idx, point in ipairs(points) do
    if idx % 2 == 1 then
      points[idx]  = point + entity.x_pos
    else
      points[idx] = point + entity.y_pos
    end
  end
  love.graphics.polygon('line', points)
end

return entity_service

