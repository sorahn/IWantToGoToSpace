script.on_event(defines.events.on_lua_shortcut, function(event)
  if (event.prototype_name ~= 'iwtgts_empty_inventory') then
    return;
  end

  game.print('Requesting empty inventory via logistics...');
  local player = game.get_player(event.player_index);
  local player_requester_point = player.character.get_requester_point();

  -- turn off personal logistics
  player_requester_point.enabled = true;

  -- turn on trash unrequested
  player_requester_point.trash_not_requested = true;

  -- turn off all the logistics groups
  local logistic_sections = player_requester_point.sections;

  for _, section in pairs(logistic_sections) do
    section.active = false;
  end
end
)
