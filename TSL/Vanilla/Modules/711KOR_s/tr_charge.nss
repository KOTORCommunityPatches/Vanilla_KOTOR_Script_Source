void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 60)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 60, 1);
	SetLocalBoolean(GetObjectByTag("g_repsold_capt", 0), 55, 1);
	DelayCommand(0.1, AssignCommand(GetObjectByTag("g_repsold_capt", 0), ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	int int3 = 0;
	object oG_T_TRAP005 = GetObjectByTag("G_T_TRAP005", int3);
	while (GetIsObjectValid(oG_T_TRAP005)) {
		DelayCommand(0.5, DestroyObject(oG_T_TRAP005, 0.0, 0, 0.0, 0));
		(int3++);
		oG_T_TRAP005 = GetObjectByTag("G_T_TRAP005", int3);
	}
	DelayCommand(2.0, AssignCommand(oEntering, ActionForceMoveToObject(GetObjectByTag("wp_pc_mines", 0), 0, 1.0, 30.0)));
	DelayCommand(3.0, CreatureFlourishWeapon(oEntering));
}

