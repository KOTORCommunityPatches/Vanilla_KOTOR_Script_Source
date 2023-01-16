void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	AurPostString(("000_Jedi_Found = " + IntToString(GetGlobalNumber("000_Jedi_Found"))), 5, 10, 10.0);
	if ((GetGlobalNumber("000_Jedi_Found") >= 4)) {
		AurPostString("k_enter_605: academy is rebuilt", 5, 5, 5.0);
		PlayRoomAnimation("605DANj", 1);
		PlayRoomAnimation("605DANk", 2);
		if ((GetGlobalNumber("650DAN_Rebuilt") == 0)) {
			SetGlobalNumber("650DAN_Rebuilt", 1);
		}
	}
	else {
		AurPostString("k_enter_605: academy is broken", 5, 5, 5.0);
		PlayRoomAnimation("605DANj", 2);
		PlayRoomAnimation("605DANk", 1);
	}
	if (GetLoadFromSaveGame()) {
		return;
	}
	if (GetGlobalNumber("605DAN_Enclave_Open")) {
		object oEnclave_Door = GetObjectByTag("Enclave_Door", 0);
		SetLocked(oEnclave_Door, 0);
	}
	if ((GetGlobalNumber("601DAN_Battle_Mili") == 4)) {
		ExecuteScript("a_clean_up", GetFirstPC(), 0xFFFFFFFF);
	}
	if ((!GetIsObjectValid(GetObjectByTag("npc_daraala", 0)))) {
		CreateObject(1, "npc_daraala", GetLocation(GetObjectByTag("store_daraala", 0)), 0);
	}
	if (GetLocalBoolean(GetObjectByTag("To_601", 0), 41)) {
		return;
	}
	if ((GetGlobalNumber("610DAN_Jorran_Saved") != 0)) {
		CreateObject(1, "npc_jorran", GetLocation(GetObjectByTag("wp_jorran", 0)), 0);
		SetLocalBoolean(GetObjectByTag("To_601", 0), 41, 1);
	}
	if ((GetGlobalNumber("605DAN_Jorran") == 2)) {
		DestroyObject(GetObjectByTag("npc_jorran", 0), 0.0, 1, 0.0, 1);
		SetGlobalNumber("605DAN_Jorran", 4);
	}
}

