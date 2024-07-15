void main() {
	object oInvisoKreia = GetObjectByTag("InvisoKreia", 0);
	object oZezkaiel = OBJECT_INVALID;
	int nLocal = GetLocalNumber(oInvisoKreia, 12);
	switch (nLocal) {
		case 1:
			oZezkaiel = GetObjectByTag("kavar", 0);
			break;
		case 2:
			oZezkaiel = GetObjectByTag("npc_vrook", 0);
			break;
		case 3:
			oZezkaiel = GetObjectByTag("zezkaiel", 0);
			break;
	}
	if (GetIsObjectValid(oZezkaiel)) {
		object oPC = GetFirstPC();
		if ((!GetIsObjectValid(oPC))) {
			AurPostString("Could not find Player's Character to set up cutscene positioning.", 10, 10, 2.0);
			return;
		}
		SetLightsaberPowered(oZezkaiel, 1, 1, 0);
		SetLightsaberPowered(oPC, 1, 1, 0);
		SetFakeCombatState(oZezkaiel, 1);
		SetFakeCombatState(oPC, 1);
		AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0)));
		AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0)));
		DelayCommand(2.0, CreatureFlourishWeapon(oZezkaiel));
		DelayCommand(2.5, ActionPlayAnimation(19, 1.0, (-1.0)));
	}
}

