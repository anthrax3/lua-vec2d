-- lua-vec2d demo
vec = require 'vec2d'

print "Welcome vec2d demo:"

-- creating a 2d vector
local v = vec.make(10,10)
print ("New vector V=("..v.x..','..v.y..')')

-- setting values
vec.set(v, 15, 20)
print ("Seting vector V=("..v.x..','..v.y..')')

-- adding
local v2 = vec.make(1,1)
print ("New vector V2=("..v2.x..','..v2.y..')')
vec.add(v, v2)
print ("Adding V2, V=("..v.x..','..v.y..')')

--making a new vector from V+V2
local v3 = vec.makeSum(v, v2)
print ("Sum of V+V2 is V3=("..v3.x..','..v3.y..')')

--new vector clone
local v4 = vec.makeFrom(v3)
print ("Copying V3 as V4=("..v4.x..','..v4.y..')')

--substract
vec.sub(v4, v2)
print ("Substracting v2 to V4=("..v4.x..','..v4.y..')')
print ("Is still the same? V3=("..v3.x..','..v3.y..')')

--scale
vec.scale(v3, 2.5)
print("Scaling by 2.5 V3=("..v3.x..','..v3.y..')')

