---------------
--  Options  --
---------------

options.timeout = 60
options.subscribe = true
options.namespace = false
options.create = true

-- for debugging purposes
options.info = true

dofile(os.getenv("HOME") .. "/.imapfilter/config_local.lua")
