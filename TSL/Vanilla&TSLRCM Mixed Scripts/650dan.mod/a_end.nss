void main() {
	object oPC = GetFirstPC();
	if ((GetGoodEvilValue(oPC) >= 40)) {
		GrantSpell(180, oPC);
		AssignCommand(oPC, DisplayMessageBox(136053, "lbl_ilside"));
	}
	else {
		GrantSpell(177, oPC);
		AssignCommand(oPC, DisplayMessageBox(136054, "lbl_idside"));
	}
	SetOrientOnClick(oPC, 1);
	SetLockOrientationInDialog(oPC, 0);
	SetGlobalNumber("650DAN_Jedi_End", 1);
	SetGlobalNumber("650DAN_006EBO_Trans", 1);
	DestroyObject(GetObjectByTag("Kreia", 0), 0.0, 1, 0.0, 0);
	DestroyObject(GetObjectByTag("Handmaiden", 0), 0.0, 1, 0.0, 0);
	DestroyObject(GetObjectByTag("Sister1", 0), 0.0, 1, 0.0, 0);
	DestroyObject(GetObjectByTag("Sister2", 0), 0.0, 1, 0.0, 0);
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	ApplyEffectToObject(0, EffectResurrection(100), oVisasMarr, 0.0);
	AssignCommand(oVisasMarr, SetIsDestroyable(1, 1, 1));
	AssignCommand(oVisasMarr, DestroyObject(oVisasMarr, 0.0, 1, 0.0, 0));
	object oZezkaiell = GetObjectByTag("Kavar", 0);
	if (GetIsObjectValid(oZezkaiell)) {
		CreateObject(64, "deadkavar", GetLocation(oZezkaiell), 0);
	}
	oZezkaiell = GetObjectByTag("Vrook", 0);
	if (GetIsObjectValid(oZezkaiell)) {
		CreateObject(64, "deadvrook", GetLocation(oZezkaiell), 0);
	}
	oZezkaiell = GetObjectByTag("Zezkaiell", 0);
	if (GetIsObjectValid(oZezkaiell)) {
		CreateObject(64, "deadzez", GetLocation(oZezkaiell), 0);
	}
}

