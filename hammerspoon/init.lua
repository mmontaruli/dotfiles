-- A global variable for the Hyper Mode
k = hs.hotkey.modal.new({}, "F17")

-- Trigger existing hyper key shortcuts

-- iTerm
-- k:bind({}, 't', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 't') end)
-- Terminal Visor
k:bind({}, 'i', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'i') end)
-- Airmail
-- k:bind({}, 'm', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'm') end)
-- Messages
-- k:bind({}, 'a', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'a') end)
-- nvALT
-- k:bind({}, 'n', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'n') end)
-- Safari
-- k:bind({}, 'r', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'r') end)
-- Spotify
-- k:bind({}, 's', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 's') end)
-- Sublime Text
-- k:bind({}, 'e', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'e') end)
-- OmniFocus
-- k:bind({}, 'w', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'w') end)
-- Tweetbot
-- k:bind({}, 'd', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'd') end)
-- Finder
-- k:bind({}, 'f', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'f') end)
-- Skype
-- k:bind({}, 'z', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'z') end)
-- Cheaters
k:bind({}, 'c', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'c') end)
-- Help
k:bind({}, 'h', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'h') end)
-- Hyperterm
-- k:bind({}, 'y', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'y') end)
-- Bartender
k:bind({}, 'b', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'b') end)
-- Lock
k:bind({}, 'l', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'l') end)
-- Pinboard
k:bind({}, 'p', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'p') end)
-- Airmail
-- k:bind({}, 'q', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'q') end)
-- Popclip
k:bind({}, 'v', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'v') end)
-- Little Snitch Widget
k:bind({}, 'o', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'o') end)
-- Unclutterer
k:bind({}, 'u', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'u') end)
-- YakYak
k:bind({}, 'x', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'x') end)
-- Slack
k:bind({}, '\\', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, '\\') end)
-- Move left a space
-- k:bind({}, '1', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, '1') end)
--Move right a space
-- k:bind({}, '2', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, '2') end)
-- Spotify Mini
k:bind({}, '0', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, '0') end)
-- Show Desktop
k:bind({}, ';', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, ';') end)
-- Menubar in context menu
k:bind({}, '\'', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, '\'') end)
-- Mission Control
k:bind({}, 'UP', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'UP') end)

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