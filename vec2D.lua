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

-- Scale 
function vec.scale(vDest, num)
  vDest.x = vDest.x * num
  vDest.y = vDest.y * num
end

-- scale return result
function vec.makeScale(v, num)
  return { x = v.x * num,
           y = v.y * num }
end

--for 2D vectors cross product x,y=0,0 the function return only the value of Z
function vec.crossProd(v1, v2)
  return (v1.x* v2.y- v1.y* v2.x)
end

--returns number
function vec.dotProd(v1, v2)  
  return (v1.x* v2.x+ v1.y* v2.y)
end

--multiply
function vec.multiply(vDest, v)
  vDest.x = vDest.x * v.x
  vDest.y = vDest.y * v.y
end

--make multiplied 
function vec.makeMultiply(v1, v2) 
  return {v1.x*v2.x, v1.y*v2.y}
end

--module, return vector length
function vec.length(v)
  return math.sqrt(v.x^2 + v.y^2) 
end

--vector length without sqrt
function vec.sqLength(v)
  return (v.x^2 + v.y^2) 
end

--normalizing vDest
function vec.normalize(vDest)
  local tmp = 1 / vec.length(vDest)
  vDest.x = vDest.x * tmp
  vDest.y = vDest.y * tmp
end

--returns new normalized vector from V
function vec.makeNormalized(v)
  local tmp = 1 / vec.length(v)
  return {
            v.x * tmp,
            v.y * tmp  
          }
end

--rotate vDist angle radiants
function vec.rotate(vDist, angle)
    vDist.x = vDist.x * math.cos(angle) - vDist.y * math.sin(angle);
    vDist.y = vDist.x * math.sin(angle) + vDist.y * math.cos(angle);    
end

--rotate V then return result
function vec.makeRotated(v, angle)
    return {
      v.x * math.cos(angle) - v.y * math.sin(angle),
      v.x * math.sin(angle) + v.y * math.cos(angle)    
    }
end

return vec
