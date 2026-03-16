void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			break;
		case 2:
			{
				object oWP_Atton_Prison = GetWaypointByTag("WP_Atton_Prison");
				object oWP_Kreia_Prison = GetWaypointByTag("WP_Kreia_Prison");
				object oWP_PC_Council = GetWaypointByTag("WP_PC_Council");
				object oAtton = GetObjectByTag("Atton", 0);
				object oKreia = GetObjectByTag("Kreia", 0);
				AssignCommand(oAtton, ClearAllActions());
				AssignCommand(oKreia, ClearAllActions());
				AssignCommand(GetFirstPC(), ClearAllActions());
				AssignCommand(oAtton, ActionJumpToObject(oWP_Atton_Prison, 1));
				AssignCommand(oKreia, ActionJumpToObject(oWP_Kreia_Prison, 1));
				AssignCommand(GetFirstPC(), ActionJumpToObject(oWP_PC_Council, 1));
				SetGlobalNumber("262TEL_Atton_Talk", 1);
				object oLWeapItem = GetItemInSlot(5, GetFirstPC());
				object oRWeapItem = GetItemInSlot(4, GetFirstPC());
				AssignCommand(GetFirstPC(), ActionUnequipItem(oLWeapItem, 0));
				AssignCommand(GetFirstPC(), ActionUnequipItem(oRWeapItem, 0));
			}
			break;
		case 3:
			{
				object object21 = GetObjectByTag("Atton", 0);
				AssignCommand(object21, ActionStartConversation(GetFirstPC(), "262atton", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			break;
	}
}

