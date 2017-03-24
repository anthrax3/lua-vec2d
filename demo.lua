-- lua-vec2d demo
vec = require 'vec2d'

print "Welcome vec2d demo:"

-- creating a 2d vector
local v = vec.make(10,10)
print ("New vector V=("..v.x..','..v.y..')')

-- setting values
vec.set(v, 15, 20)
print ("Seting vector V=("..v.x..','..v.y..')')

