-- 2D vector math
--Author: Denys Almaral (denysalmaral.com) 
--license: MIT

--[[
  Purpose:
  Create a library of 2D vector functions to work with any table that contains x,y values.
  Be efficient, simple and fast, accept tables as parameters, avoid unnecessary validations.
]]

local vec = {}

--returns a new 2d vector table {x,y} =  {xv, yv}
function vec.make(xv, yv)
  return {x=xv, y=yv}
end

--returns a new 2d vector table copied from V
function vec.makeFrom(v)
  return {x=v.x, y=v.y}
end

--sets x,y values to vDest
function vec.set(vDest, x, y)
  vDest.x = x
  vDest.y = y
end

-- Sets vDest x,y from V table x,y values
function vec.setFrom(vDest, v)
  vDest.x = v.x
  vDest.y = v.y
end

--Adds v to vDest, result in vDest
function vec.add(vDest, v)
  vDest.x = vDest.x + v.x
  vDest.y = vDest.y + v.y
end

--Sums v1+v2, result in vDest
function vec.sum(vDest, v1, v2)
  vDest.x = v1.x + v2.x
  vDest.y = v1.y + v2.y
end

-- Sum v1+v2, return a new vector with the sum
function vec.makeSum(v1, v2)
  return {x = v1.x + v2.x, 
          y = v1.y + v2.y }
end

-- substract V from vDest
function vec.sub(vDest, v) 
  vDest.x = vDest.x - v.x
  vDest.y = vDest.y - v.y
end  
  

return vec
