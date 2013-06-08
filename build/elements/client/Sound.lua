local Sound
do
  local _parent_0 = Element
  local _base_0 = {
    destroy = function(self)
      return destroyElement(self.element)
    end
  }
  _base_0.__index = _base_0
  if _parent_0 then
    setmetatable(_base_0, _parent_0.__base)
  end
  local _class_0 = setmetatable({
    __init = function(self, path, looped, x, y, z)
      if not x or not y or not z then
        self.element = playSound(path, looped)
      else
        self.element = playSound3D(path, x, y, z, looped)
      end
    end,
    __base = _base_0,
    __name = "Sound",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil and _parent_0 then
        return _parent_0[name]
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0 and _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  Sound = _class_0
  return _class_0
end
