-- A global variable for the Hyper Mode
k = hs.hotkey.modal.new({}, "F17")

-- Trigger existing hyper key shortcuts

-- Cheaters
k:bind({}, 'c', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'c') end)
-- Pinboard
k:bind({}, 'p', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'p') end)
-- Unclutterer
k:bind({}, '\\', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, '\\') end)
-- Show Desktop
-- k:bind({}, ';', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, ';') end)
-- Menubar in context menu
-- k:bind({}, '\'', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, '\'') end)

launch = function(appname)
  hs.application.launchOrFocus(appname)
  k.triggered = true
end

singleapps = {
  {'q', 'Newton'},
  {'w', 'OmniFocus'},
  {'e', 'Sublime Text'},
  {'r', 'Firefox'},
  {'a', 'Messages'},
  {'n', 'nvALT'},
  {'s', 'Spotify'},
  {'d', 'Tweetbot'},
  {'f', 'ForkLift'},
  {'z', 'Skype.app'},
  {'y', 'Hyper'},
  {'t', 'iTerm'},
  {'v', 'Evernote'},
  {'u', 'YakYak'},
  {'x', 'Slack'}
}
for i, app in ipairs(singleapps) do
  k:bind({}, app[1], function() launch(app[2]); k:exit(); end)
end

-- invoke iTerm visor
k:bind({}, 'i', nil, function() hs.eventtap.keyStroke({"ctrl"}, "`") end)
-- invoke help
k:bind({}, 'h', nil, function() hs.eventtap.keyStroke({"shift", "cmd"}, '/') end)
-- invoke little snitch
k:bind({}, 'o', nil, function() hs.eventtap.keyStroke({"cmd", "ctrl", "alt"}, "m") end)
-- invoke lock screen
k:bind({}, 'l', nil, function() hs.eventtap.keyStroke({"ctrl", "cmd"}, "l") end)
-- move spaces left or right
k:bind({}, '1', nil, function() hs.eventtap.keyStroke({"ctrl"}, "LEFT") end)
k:bind({}, '2', nil, function() hs.eventtap.keyStroke({"ctrl"},"RIGHT") end)
-- mission control
k:bind({}, 'UP', nil, function() hs.eventtap.keyStroke("ctrl", "UP") end)

-- Enter Hyper Mode when F18 (Hyper/Capslock) is pressed
pressedF18 = function()
  k.triggered = false
  k:enter()
end

-- Leave Hyper Mode when F18 (Hyper/Capslock) is pressed,
--   send ESCAPE if no other keys are pressed.
releasedF18 = function()
  k:exit()
  -- if not k.triggered then
  --  hs.eventtap.keyStroke({}, 'ESCAPE')
  -- end
end

-- Bind the Hyper key
f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)