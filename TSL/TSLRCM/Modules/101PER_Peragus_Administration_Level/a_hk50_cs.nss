void main() {
	int nParam1 = GetScriptParameter(1);
	object oHK50;
	object oWP_HK50_MOVE;
	switch (nParam1) {
		case 0:
			oHK50 = GetObjectByTag("Atton", 0);
			oWP_HK50_MOVE = GetObjectByTag("WP_ESCAPE_2_ATTON", 0);
			AssignCommand(oHK50, ClearAllActions());
			AssignCommand(oHK50, ActionJumpToObject(oWP_HK50_MOVE, 1));
			oHK50 = GetObjectByTag("Kreia", 0);
			oWP_HK50_MOVE = GetObjectByTag("WP_ESCAPE_2_ENTRY_KREIA", 0);
			AssignCommand(oHK50, ClearAllActions());
			AssignCommand(oHK50, ActionJumpToObject(oWP_HK50_MOVE, 1));
			oWP_HK50_MOVE = GetObjectByTag("WP_ESCAPE_2_CONSOLE_KREIA", 0);
			AssignCommand(oHK50, ActionMoveToObject(oWP_HK50_MOVE, 1, 1.0));
			oHK50 = GetFirstPC();
			oWP_HK50_MOVE = GetObjectByTag("WP_ESCAPE_2_ENTRY_PC", 0);
			AssignCommand(oHK50, ClearAllActions());
			AssignCommand(oHK50, ActionJumpToObject(oWP_HK50_MOVE, 1));
			oWP_HK50_MOVE = GetObjectByTag("WP_ESCAPE_2_CONSOLE_PC", 0);
			AssignCommand(oHK50, ActionMoveToObject(oWP_HK50_MOVE, 1, 1.0));
			break;
		case 1:
			oHK50 = GetFirstPC();
			oWP_HK50_MOVE = GetObjectByTag("WP_ESCAPE_2_RUN_PC", 0);
			AssignCommand(oHK50, ActionJumpToObject(oWP_HK50_MOVE, 1));
			oWP_HK50_MOVE = GetObjectByTag("WP_ESCAPE_2_HK_ATTON", 0);
			AssignCommand(oHK50, ActionMoveToLocation(GetLocation(oWP_HK50_MOVE), 1));
			oHK50 = GetObjectByTag("Kreia", 0);
			oWP_HK50_MOVE = GetObjectByTag("WP_ESCAPE_2_RUN_KREIA", 0);
			AssignCommand(oHK50, ClearAllActions());
			AssignCommand(oHK50, ActionJumpToObject(oWP_HK50_MOVE, 1));
			oWP_HK50_MOVE = GetObjectByTag("WP_ESCAPE_2_HK_KREIA", 0);
			AssignCommand(oHK50, ActionMoveToLocation(GetLocation(oWP_HK50_MOVE), 1));
			oHK50 = GetObjectByTag("Atton", 0);
			SetLockOrientationInDialog(oHK50, 1);
			AssignCommand(oHK50, ClearAllActions());
			oWP_HK50_MOVE = GetObjectByTag("WP_ESCAPE_2_RUN_ATTON", 0);
			AssignCommand(oHK50, ActionJumpToObject(oWP_HK50_MOVE, 1));
			oWP_HK50_MOVE = GetObjectByTag("WP_ESCAPE_2_HK_ATTON", 0);
			AssignCommand(oHK50, ActionMoveToLocation(GetLocation(oWP_HK50_MOVE), 1));
			oHK50 = GetObjectByTag("HK50", 0);
			oWP_HK50_MOVE = GetObjectByTag("WP_HK50_MOVE", 0);
			AssignCommand(oHK50, ActionJumpToObject(oWP_HK50_MOVE, 1));
			break;
		case 2:
			SetLockOrientationInDialog(GetObjectByTag("Atton", 0), 0);
			{
				string string1 = "WP_mine_0";
				int int3 = 4;
				int int4 = 1;
				while ((int4 <= int3)) {
					AurPostString(("a_hk50_cs: " + IntToString(int4)), int4, int4, 2.0);
				{
					string string3 = (string1 + IntToString(int4));
					object object23 = GetObjectByTag(string3, 0);
					object oG_floatingmin002 = CreateObject(1, "g_floatingmin002", GetLocation(object23), 1);
				}
					(int4++);
				}
				AssignCommand(GetObjectByTag("atton", 0), ActionEquipItem(CreateItemOnObject("mininglaser", OBJECT_SELF, 1, 0), 4, 0));
			}
			break;
	}
}