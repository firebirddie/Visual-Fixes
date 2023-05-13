Hooks:PostHook(WeaponFactoryTweakData, "init", "visualfixweaponfactorytweakdata", function(self)

	-- Adds back the unique Golden Bolt the Golden AK.762 used to have.

	self.parts.wpn_fps_ass_ak_body_lowerreceiver_gold.override = {
		wpn_fps_ak_bolt = {unit="units/mods/weapons/wpn_fps_ass_ak_gold_pts/wpn_fps_ak_bolt_gold"}
	}
	
	-- Adds the unique Orthogon Upper receiver's bolt... I'm not really sure why this was disabled by default?

	self.parts.wpn_fps_m4_uupg_upper_radian.override = self.parts.wpn_fps_m4_uupg_upper_radian.override or {}
    self.parts.wpn_fps_m4_uupg_upper_radian.override.wpn_fps_amcar_bolt_standard = {
        unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
        third_unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy"
    }
	
	-- Fixes the weird double upper receiver on the AMCAR
	
	self.parts.wpn_fps_m4_uupg_upper_radian.override.wpn_fps_amcar_uupg_body_upperreciever = {
		unit = "units/payday2/weapons/wpn_fps_ass_m16_pts/wpn_fps_ass_m16_o_handle_sight",
		third_unit = "units/payday2/weapons/wpn_third_ass_m16_pts/wpn_third_ass_m16_o_handle_sight",
		a_obj = "a_o"
	}	

	self.parts.wpn_fps_m4_uupg_upper_radian.override.wpn_fps_m4_upper_reciever_round_vanilla = {
		unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
		third_unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy"
	}	

	self.wpn_fps_ass_amcar.adds.wpn_fps_m4_uupg_upper_radian = {
		"wpn_fps_m4_uupg_draghandle",
		"wpn_fps_m4_uupg_fg_rail_ext"
	}

	-- Fixes some issues with some sights and gadgets not having rails when applying them to the R700 in-game.
	
	self.wpn_fps_snp_r700.adds.wpn_fps_upg_o_poe = { "wpn_fps_snp_r700_o_rail" }
	
	
	-- Fixes the new tatinka stock removing gadget rails for some reason.(SBZ might've used a foregrip as a base?)
	
	table.delete(self.parts.wpn_fps_upg_ak_s_zenitco.forbids, "wpn_fps_addon_ris")
	
	-- KSP 58 has an tiny issue where it never accurately displays the correct amount of bullets when almost empty, this should fix this
	
	self.parts.wpn_fps_lmg_par_m_standard.bullet_objects = {
		amount = 5,
		prefix = "g_bullet_"
		
	}
	
	-- Same with the MG42 (Buzzsaw LMG)
	
	self.parts.wpn_fps_lmg_mg42_reciever.bullet_objects = {
		amount = 5,
		prefix = "g_bullet_"
	}	
	
	-- Same with the R93 apparently.

-- 	self.parts.wpn_fps_snp_r93_m_std.bullet_objects = {
-- 		amount = 1,
-- 		prefix = "g_bullet_"
-- 	}			
	

end)