void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		AurPostString("Firing Trigger", 5, 14, 20.0);
		if (GetLocalBoolean(OBJECT_SELF, 29)) {
			return;
		}
		if (((GetGlobalNumber("601DAN_Side") == 1) && (GetGlobalNumber("601DAN_Battle_Mili") == 0))) {
			AurPostString("Setting up Militia Beginning", 5, 15, 10.0);
			SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			SetLocalBoolean(OBJECT_SELF, 29, 1);
			object oNpc_zherron = CreateObject(1, "npc_zherron", GetLocation(GetObjectByTag("wp_speech_zherron", 0)), 0);
			if (GetIsObjectValid(oNpc_zherron)) {
				AssignCommand(oNpc_zherron, ClearAllActions());
				AurPostString("Setting up Zherron", 5, 16, 10.0);
			}
			else {
				AurPostString("Error setting up Zherron", 5, 16, 10.0);
			}
			if ((GetGlobalNumber("604DAN_Vrook_Status") == 3)) {
				object oNpc_vrook = CreateObject(1, "npc_vrook", GetLocation(GetObjectByTag("WP_spawn_vrook", 0)), 0);
				if (GetIsObjectValid(oNpc_vrook)) {
					AssignCommand(oNpc_vrook, ClearAllActions());
					AurPostString("Setting up Vrook", 5, 17, 10.0);
				}
				else {
					AurPostString("Error setting up Vrook", 5, 17, 10.0);
				}
			}
			object oPC = GetFirstPC();
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oNpc_zherron, ClearAllActions());
			AssignCommand(oNpc_zherron, ActionStartConversation(oPC, "zherron", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}