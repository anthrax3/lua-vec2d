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

