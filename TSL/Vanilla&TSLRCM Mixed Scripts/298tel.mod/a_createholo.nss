// Prototypes
void sub1();

void sub1() {
	CreateObject(1, "HK51Holo", GetLocation(GetObjectByTag("WP_HK51_Spawn2", 0)), 0);
	CreateObject(64, "HK51dlg_plc", GetLocation(GetObjectByTag("WP_HK51_Spawn", 0)), 0);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	object oHK51Holo = GetObjectByTag("HK51Holo", 0);
	object oHK51dlg_plc = GetObjectByTag("HK51dlg_plc", 0);
	switch (nParam1) {
		case 0:
			sub1();
			break;
		case 1:
			SetLockOrientationInDialog(oHK51Holo, 1);
			SetLockOrientationInDialog(GetFirstPC(), 1);
			AssignCommand(oHK51dlg_plc, ActionStartConversation(GetFirstPC(), "hk51holo", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			break;
		case 2:
			AssignCommand(oHK51Holo, ActionJumpToObject(GetObjectByTag("WP_HK51_Spawn2", 0), 0));
			break;
		case 3:
			DestroyObject(oHK51Holo, 0.0, 0, 0.0, 0);
			DestroyObject(oHK51dlg_plc, 0.0, 0, 0.0, 0);
			break;
	}
}

