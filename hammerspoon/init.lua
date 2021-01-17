-- inspect = hs.inspect.inspect

utils = require("utils")

require("double_cmdq_to_quit")
require("keymaps")
require("vim_binding")

-- pcall(hs.fnutils.partial(require, "local"))

-- utils.tempNotify(3, hs.notify.new({
--     title = "Config reloaded",
-- }))


local VimMode = hs.loadSpoon('VimMode')
local vim = VimMode:new()
-- vim:enterWithSequence('jk')
vim:bindHotKeys({ enter = {{'cmd'}, ';'} })
vim:shouldShowAlertInNormalMode(true)
vim:shouldDimScreenInNormalMode(true)

vim
  :disableForApp('Code')
  :disableForApp('Firefox')
  :disableForApp('Chrome')
  :disableForApp('zoom.us')
  :disableForApp('iTerm')


hs.hotkey.bind({"cmd", "alt", "ctrl"}, "r", function()
  hs.reload()
end)
hs.alert.show("Config loaded")
