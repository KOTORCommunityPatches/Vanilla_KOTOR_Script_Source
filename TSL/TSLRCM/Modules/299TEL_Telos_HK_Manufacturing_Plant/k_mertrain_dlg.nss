void main() {
	object oHK50Vic = GetObjectByTag("HK50Vic", 0);
	object oHK50M1 = GetObjectByTag("HK50M1", 0);
	object oHK50M2 = GetObjectByTag("HK50M2", 0);
	object oHK50M3 = GetObjectByTag("HK50M3", 0);
	if ((GetEnteringObject() == GetFirstPC())) {
		if ((GetGlobalNumber("299TEL_Mertrain") != 1)) {
			SetGlobalNumber("299TEL_Mertrain", 1);
			SetLockOrientationInDialog(oHK50M1, 1);
			SetLockOrientationInDialog(oHK50M2, 1);
			SetLockOrientationInDialog(oHK50M3, 1);
			AssignCommand(oHK50Vic, SetFacingPoint(GetPosition(oHK50M1)));
			SetLockOrientationInDialog(oHK50Vic, 1);
			AssignCommand(oHK50M1, ClearAllActions());
			AssignCommand(oHK50M1, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}