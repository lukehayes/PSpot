--- Class
-- @module Class
--
local util = {}

function util.inside(x1,y1,w1,h1,x2,y2,w2,h2)
    return x1 > x2 and
           w1 < w2 and
           y1 > y2 and
           h1 < h2
end

function util.collides(x1,y1,w1,h1,x2,y2,w2,h2)
    return x1 > x2 or
           w1 < w2 or
           y1 > y2 or
           h1 < h2
end

function util.collidesObject(a,b)
    -- TODO Implement
    print("Collides Object")
    print(a.x,a.y,a.w,a.h,b.x,b.y,b.w,b.h)
    print("------------------")
end

return util
