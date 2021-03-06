local function doScale(um)
	local ply = um:ReadEntity()
	local scale = um:ReadFloat()

	if not IsValid(ply) then return end
	ply:SetModelScale(scale, 2)
	ply:SetHull(Vector(-16, -16, 0), Vector(16, 16, 64 * scale))
end
usermessage.Hook("rp_playerscale", doScale)