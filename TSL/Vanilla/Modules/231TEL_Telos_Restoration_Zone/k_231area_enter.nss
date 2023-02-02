void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((GetFirstPC() == oEntering)) {
		if ((!GetGlobalBoolean("231_FIRST_ENTER"))) {
			SetGlobalBoolean("231_FIRST_ENTER", 1);
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			SetNPCSelectability(8, 0);
		}
	}
	if ((GetGlobalNumber("202TEL_Spawn_Killers") == 11)) {
		SetGlobalNumber("202TEL_Spawn_Killers", 12);
		DestroyObject(GetObjectByTag("merc_rep1", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("merc_rep2", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("merc_rep3", 0), 0.0, 0, 0.0, 0);
		CreateObject(1, "rod_killer", GetLocation(GetObjectByTag("wp_rodkill_sp", 0)), 0);
		CreateObject(1, "dev_killer", GetLocation(GetObjectByTag("wp_devkill_sp", 0)), 0);
	}
}
