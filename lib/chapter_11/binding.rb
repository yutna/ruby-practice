def binding_elsewhere
  x = 20
  binding
end

remote_binding = binding_elsewhere

# x = 10
# eval("puts x")
# eval("puts x", remote_binding)

x = nil

eval("x = 10")
eval("x = 50", remote_binding)
eval("puts x")
eval("puts x", remote_binding)
