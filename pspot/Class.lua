--- Class
-- @module Class
--
local class = {}

--- Extend a child table - wrapper for setatable(child, {__index = parent}})
--
-- @param child The child class that should have a parent.
-- @param parent The parent class the child should inherit.
function class:extends(child, parent)
    setmetatable(child, {__index = parent})
    return child
end

return class
