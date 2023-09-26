local m = {}

m.list = {}
m.list.extend_or_create = function(destination, source)
  if type(destination) == "table" then
    vim.list_extend(destination, source)
  else
    destination = source
  end
end

return m
