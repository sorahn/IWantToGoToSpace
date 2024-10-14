local iwtgts_button = {
  action = 'lua',
  associated_control_input = 'iwtgts_empty_inventory',
  icon = '__IWantToGoToSpace__/graphics/icons/rocket_128.png',
  icon_size = 128,
  name = 'iwtgts_empty_inventory',
  small_icon = '__IWantToGoToSpace__/graphics/icons/rocket_64.png',
  small_icon_size = 64,
  type = 'shortcut',
}

-- keyboard binding
local custom_input = {
  action = 'lua',
  key_sequence = '',
  -- key_sequence = 'SHIFT + ALT + J',
  name = 'iwtgts_empty_inventory',
  type = 'custom-input',
}

data:extend({ iwtgts_button, custom_input });
