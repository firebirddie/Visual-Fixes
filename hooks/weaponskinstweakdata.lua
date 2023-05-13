Hooks:PostHook(BlackMarketTweakData, "_init_weapon_skins", "SkinFixes", function(self)

	self.weapon_skins.ray_nin.parts = {
    wpn_fps_gre_ray_body = {
        ["1dabb24db7a4e9b1"] = {
            sticker = Idstring("units/payday2_cash/safes/nin/sticker/nin_sticker_011_04_df"),
            uv_offset_rot = Vector3(0, 1, 0)
        },
        ["11d655c63b5997bb"] = {
            uv_scale = Vector3(2.77513, 7.39958, 0),
            sticker = Idstring("units/payday2_cash/safes/nin/sticker/nin_sticker_011_03_df"),
            uv_offset_rot = Vector3(-1.18626, 1.02141, 3.03145)
        },
        ["555cc54fda64233c"] = {
            uv_offset_rot = Vector3(0, 1, 0),
            sticker = Idstring("units/payday2_cash/safes/nin/sticker/nin_sticker_011_06_df")
        }
    }
}
	
	
end)
