void main() {
	object oPC = GetFirstPC();
	object oKas24_pgener_01 = GetObjectByTag("kas24_pgener_01", 0);
	object oKas24_poffice_01 = GetObjectByTag("kas24_poffice_01", 0);
	if ((((GetIsObjectValid(oKas24_pgener_01) == 1) || (GetIsObjectValid(oKas24_poffice_01) == 1)) && (GetLocked(OBJECT_SELF) == 0))) {
		ActionLockObject(OBJECT_SELF);
	}
	else {
		if ((GetLocked(OBJECT_SELF) == 1)) {
			ActionUnlockObject(OBJECT_SELF);
		}
	}
}