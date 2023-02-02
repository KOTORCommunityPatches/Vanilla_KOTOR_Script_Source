void main() {
	if ((GetGlobalNumber("411DXN_Complete") == 0)) {
		AddAvailableNPCByTemplate(2, "p_mand");
		DelayCommand(1.0, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0));
		CancelCombat(GetFirstPC());
		ShowPartySelectionGUI("a_to_iziz2", 2, 0xFFFFFFFF, 0);
	}
	else {
		object oZuka = GetObjectByTag("zuka", 0);
		object oWp_zuka_start = GetObjectByTag("wp_zuka_start", 0);
		AssignCommand(oZuka, ClearAllActions());
		AssignCommand(oZuka, ActionJumpToObject(oWp_zuka_start, 1));
		CancelCombat(GetFirstPC());
		ShowPartySelectionGUI("a_to_iziz2", 6, 0xFFFFFFFF, 0);
		SetLocalBoolean(OBJECT_SELF, 39, 1);
	}
}
