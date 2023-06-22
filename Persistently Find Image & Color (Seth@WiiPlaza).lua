-- Time: 2023-06-21 11:51:30
-- code by Seth@WiiPlaza

while true do
  local result = findImage("/var/mobile/Library/AutoTouch/Scripts/Records/IMAGE FILE NAME.PNG") -- insert your value

  for i, v in pairs(result) do
    tap(v[1], v[2])
  end

  usleep(1999999)

  local results = findColor(XXXXXXX, X, nil) -- insert your value

  if results ~= nil then
    for i, a in pairs(results) do
      tap(a[1], a[2])
      usleep(200000)
      tap(a[1], a[2])
      usleep(90167.46)
    end
  else
    log("Nothing here!")
  end
end

function tap(x, y)
  touchDown(0, x, y)
  usleep(16000)
  touchUp(0, x, y)
end


