---------------
--  Options  --
---------------

options.timeout = 60
options.subscribe = true
options.namespace = false
options.create = true

-- for debugging purposes
options.info = true

recipient_mail = function (mailbox, address)
    return mailbox:contain_to(address) +
           mailbox:contain_bcc(address) +
           mailbox:contain_cc(address)
end

dofile(os.getenv("HOME") .. "/.imapfilter/config_local.lua")
