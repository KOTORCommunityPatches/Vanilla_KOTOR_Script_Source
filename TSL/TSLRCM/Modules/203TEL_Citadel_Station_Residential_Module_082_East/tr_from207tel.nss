void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if (GetLocalBoolean(OBJECT_SELF, 36)) {
			return;
		}
		if (GetGlobalBoolean("207TEL_Ramana_Bought")) {
			SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			SetGlobalBoolean("207TEL_Ramana_Bought", 0);
			SetLocalBoolean(OBJECT_SELF, 36, 1);
			CreateObject(1, "203_ramana", GetLocation(GetObjectByTag("wp_ramana_sp", 0)), 0);
			object oRamana = GetObjectByTag("ramana", 0);
			if (GetIsObjectValid(oRamana)) {
				object oPC = GetFirstPC();
				AssignCommand(oPC, ClearAllActions());
				AssignCommand(oRamana, ClearAllActions());
				AssignCommand(oRamana, ActionStartConversation(GetFirstPC(), "", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			else {
				AurPostString("ERROR: No Ramana present!", 5, 17, 10.0);
			}
		}
		else {
			if ((GetGlobalNumber("203TEL_Harra") == 5)) {
				AurPostString("About to rough up Doton.", 5, 16, 10.0);
				SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
				SetGlobalNumber("203TEL_Harra", 6);
				SetLocalBoolean(OBJECT_SELF, 36, 1);
				object oDoton = GetObjectByTag("doton", 0);
				if (GetIsObjectValid(oDoton)) {
					object object13 = GetFirstPC();
					AssignCommand(object13, ClearAllActions());
					AssignCommand(oDoton, ClearAllActions());
					AssignCommand(oDoton, ActionStartConversation(object13, "", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				}
				else {
					AurPostString("ERROR: No Dotton present!", 5, 17, 10.0);
				}
			}
		}
	}
}