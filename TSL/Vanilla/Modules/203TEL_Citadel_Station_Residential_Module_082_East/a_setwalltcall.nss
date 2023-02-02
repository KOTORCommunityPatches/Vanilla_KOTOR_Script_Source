void main() {
	int nParam1 = GetScriptParameter(1);
	object object1;
	object object2;
	object oWp_wallt = GetObjectByTag("wp_wallt", 0);
	object oWallt_ring = GetObjectByTag("wallt_ring", 0);
	if ((nParam1 == 1)) {
		SetGlobalNumber("203TEL_WallT_Call", 1);
	}
	if ((nParam1 == 2)) {
		SetGlobalNumber("203TEL_WallT_Call", 2);
		SoundObjectStop(oWallt_ring);
		AssignCommand(GetPCSpeaker(), ActionJumpToLocation(GetLocation(oWp_wallt)));
		SetLockOrientationInDialog(GetPCSpeaker(), 1);
	}
	if ((nParam1 == 3)) {
		SetGlobalNumber("203TEL_WallT_Call", 3);
	}
	if ((nParam1 == 4)) {
		SetGlobalNumber("203TEL_WallT_Call", 4);
		SoundObjectStop(oWallt_ring);
		AssignCommand(GetPCSpeaker(), ActionJumpToLocation(GetLocation(oWp_wallt)));
	}
	SetLocalBoolean(GetObjectByTag("203_Bed", 0), 50, 1);
}
