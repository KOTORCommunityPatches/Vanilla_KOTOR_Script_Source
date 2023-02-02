void main() {
	object oM478Console = GetObjectByTag("M478Console", 0);
	object object3 = GetItemPossessedBy(GetFirstPC(), "800DRO_Software41");
	object object6 = GetItemPossessedBy(GetFirstPC(), "800DRO_Software42");
	object object9 = GetItemPossessedBy(GetFirstPC(), "800DRO_Software43");
	object object12 = GetItemPossessedBy(GetFirstPC(), "800DRO_Software44");
	if (GetIsObjectValid(object3)) {
		ActionTakeItem(GetObjectByTag("800DRO_Software41", 0), GetFirstPC());
		SetGlobalNumber("800DRO_Console_41", 1);
	}
	if (GetIsObjectValid(object6)) {
		ActionTakeItem(object6, GetFirstPC());
		SetGlobalNumber("800DRO_Console_42", 1);
	}
	if (GetIsObjectValid(object9)) {
		ActionTakeItem(object9, GetFirstPC());
		SetGlobalNumber("800DRO_Console_43", 1);
	}
	if (GetIsObjectValid(object12)) {
		ActionTakeItem(object12, GetFirstPC());
		SetGlobalNumber("800DRO_Console_44", 1);
	}
}
