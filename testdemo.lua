-- lua-vec2d demo
vec = require 'vec2d'

print "Welcome vec2d demo:"

-- creating a 2d vector
local v = {x=10,y=10}
print ("New vector V=("..v.x..','..v.y..')')

-- setting values
vec.set(v, 15, 20)
print ("Seting vector V=("..v.x..','..v.y..')')

-- adding
local v2 = {x=1,y=1}
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

--make scaling
local v5 = vec.makeScale(v3, 0.5 )
print("From V3 scaling down 0.5 new vec V5=("..v5.x..','..v5.y..')')

local z = vec.crossProd(v4, v3)
print ('Cross product v4 X v3 in 2D, Z='..z..')')

--multiply
vec.multiply(v5, v4)
print("Multiply v5 by v4, V5=("..v5.x..','..v5.y..')')

--dotproduct
print("Dot product v5 by v4  = "..vec.dotProd(v5, v4)..'')

--length
print("Vector length v5 = "..vec.length(v5)..'')
--length
print("While Vector Sqlength v5 = "..vec.sqLength(v5)..'')

--normalizing
vec.normalize(v5)
print("Normalized V5=("..v5.x..','..v5.y..')')
print('New length V5='..vec.length(v5)..')')

--rotation
--TODO: test these rotations visually 
vec.rotate(v5, math.pi/2 )
print("Rotate Pi/2 V5=("..v5.x..','..v5.y..')')

local v6 = vec.makeFromAngle( math.pi/4 )
print("Unitary vector with angle Pi/4 V6=("..v6.x..','..v6.y..')')