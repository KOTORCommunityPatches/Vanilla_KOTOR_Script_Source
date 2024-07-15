void main() {
	object oAtton = GetObjectByTag("atton", 0);
	object oWp_atton_mandcs2 = GetObjectByTag("sp_atton_mandcs2", 0);
	if (GetIsObjectValid(oAtton)) {
		AssignCommand(oAtton, ActionJumpToObject(oWp_atton_mandcs2, 1));
	}
	else {
		oAtton = SpawnAvailableNPC(0, GetLocation(oWp_atton_mandcs2));
	}
	oWp_atton_mandcs2 = GetObjectByTag("wp_atton_mandcs2", 0);
	DelayCommand(0.5, AssignCommand(oAtton, ClearAllActions()));
	DelayCommand(0.5, AssignCommand(oAtton, ActionForceMoveToObject(oWp_atton_mandcs2, 0, 1.0, 30.0)));
}

