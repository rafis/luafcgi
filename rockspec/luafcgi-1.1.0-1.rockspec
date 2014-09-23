package = "luafcgi"
version = "1.1.0-1"
source = {
  url = "git://github.com/mbalmer/luafcgi",
  tag = "v1.1.0",
}
description = {
  summary = "FastCGI Binding for Lua",
  detailed = [[
     FastCGI Binding for Lua using fcgiapp (FCGX_*) interface
  ]],
  homepage = "http://github.com/mbalmer/luafcgi", 
  license = "3-clause BSD",
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["fcgi"] = {
      sources = "src/luafcgi.c",
      libraries = {
        "fcgi",
      },
    },
  },
}
