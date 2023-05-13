local function set_hos(self)
    self._ext_network:send("set_stance", 2, false, false)
end

Hooks:PostHook(PlayerStandard, "_enter", "_enter_hos", set_hos)
Hooks:PostHook(PlayerStandard, "_end_action_steelsight", "_end_action_steelsight_hos", set_hos)
Hooks:PostHook(PlayerStandard, "set_running", "set_running_hos", set_hos)