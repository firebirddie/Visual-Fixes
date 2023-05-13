Hooks:PostHook(WeaponTweakData, "init", "epicreloadfix", function(self)
	
	self.qbu88_crew.hold = "rifle"
	self.qbu88_crew.reload = "bullpup"
	self.tkb_crew.reload = "bullpup"
	self.tkb_crew.pull_magazine_during_reload = "rifle"
	self.hcar_crew.pull_magazine_during_reload = "rifle"
	self.rpk_crew.pull_magazine_during_reload = "rifle"
	self.par_crew.pull_magazine_during_reload = "rifle"
	self.m60_crew.pull_magazine_during_reload = "rifle"
	self.m249_crew.pull_magazine_during_reload = "rifle"
	self.hk21_crew.pull_magazine_during_reload = "rifle"
	
end)