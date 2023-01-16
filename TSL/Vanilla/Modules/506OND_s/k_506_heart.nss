void main() {
	object oTo_504 = GetObjectByTag("To_504", 0);
	if (((!GetLocalBoolean(oTo_504, 41)) && (GetGlobalNumber("500OND_DarkSide_Iziz") == 1))) {
		int int3;
		location location1 = GetLocation(GetObjectByTag("sw_exit2", 0));
		object oWp_dsentry_pc;
		object oTobin;
		object oShapeObject = GetFirstObjectInShape(4, 15.0, location1, 0, 1, [0.0,0.0,0.0]);
		while (GetIsObjectValid(oShapeObject)) {
			if (((GetStandardFaction(oShapeObject) == 1) || (GetStandardFaction(oShapeObject) == 3))) {
				(int3++);
			}
			oShapeObject = GetNextObjectInShape(4, 15.0, location1, 0, 1, [0.0,0.0,0.0]);
		}
		AurPostString(("Enemies in crossroad: " + IntToString(int3)), 5, 5, 5.0);
		if ((int3 == 0)) {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(0.5, 1.5, 0.0, 0.0, 0.0);
			oWp_dsentry_pc = GetObjectByTag("wp_dsentry_pc", 0);
			AssignCommand(GetFirstPC(), ClearAllActions());
			AssignCommand(GetFirstPC(), ActionJumpToObject(oWp_dsentry_pc, 1));
			oTobin = GetObjectByTag("tobin", 0);
			AssignCommand(oTobin, ClearAllActions());
			DelayCommand(0.4, AssignCommand(oTobin, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			SetLocalBoolean(oTo_504, 41, 1);
		}
	}
}

