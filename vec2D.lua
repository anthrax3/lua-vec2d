-- 2D vector math
--Author: Denys Almaral (denysalmaral.com) 
--license: MIT

--[[
  Purpose:
  Create a library of 2D vector functions to work with any table that contains x,y values.
  Be efficient, simple and fast, accept tables as parameters, avoid unnecessary validations.
]]

local vec = {}

--returns a 2d vector table {x,y} =  {xv, yv}
function vec.make(xv, yv)
  return {x=xv, y=yv}
end

function vec.set(v, x, y)
  v.x = x
  v.y = y
end

--Adds v2 to v1, result in v1
function vec.addTo(v1, v2)
  v1.x = v1.x + v2.x
  v1.y = v1.y + v2.y
end

function vec.addManyTo(v1, aTableOfVectors)
  
end
  

return vec
