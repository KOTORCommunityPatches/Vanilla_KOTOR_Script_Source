void main() {
	object oPC = GetFirstPC();
	object oAtton = GetObjectByTag("Atton", 0);
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
		GiveItem(GetItemInSlot(4, oPC), oPC);
		GiveItem(GetItemInSlot(5, oPC), oPC);
		AssignCommand(oPC, ActionJumpToLocation(Location(Vector(54.1543, 45.80115, 1.8), 240.0)));
		DelayCommand(0.2, AssignCommand(oPC, ActionEquipItem(CreateItemOnObject("w_pazaak_01", oPC, 1, 1), 4, 1)));
		DelayCommand(0.4, AssignCommand(oPC, ActionPlayAnimation(38, 1.0, (-1.0))));
		GiveItem(GetItemInSlot(5, oAtton), oPC);
		GiveItem(GetItemInSlot(4, oAtton), oPC);
		AssignCommand(oAtton, ActionJumpToLocation(Location(Vector(54.26917, 43.75487, 1.8), 60.0)));
		DelayCommand(0.2, AssignCommand(oAtton, ActionEquipItem(CreateItemOnObject("w_pazaak_01", oAtton, 1, 1), 4, 1)));
		DelayCommand(0.4, AssignCommand(oAtton, ActionPlayAnimation(38, 1.0, (-1.0))));
	}
	if ((nParam1 == 1)) {
		AssignCommand(oAtton, ActionPlayAnimation(36, 1.0, (-1.0)));
		AssignCommand(oPC, ActionPlayAnimation(36, 1.0, (-1.0)));
	}
	if ((nParam1 == 2)) {
		AssignCommand(oAtton, ActionPlayAnimation(38, 1.0, (-1.0)));
		AssignCommand(oPC, ActionPlayAnimation(38, 1.0, (-1.0)));
	}
	if ((nParam1 == 3)) {
		object oRWeapItem = GetItemInSlot(4, oPC);
		object object13 = GetItemInSlot(4, oAtton);
		DelayCommand(1.2, AssignCommand(oAtton, ClearAllActions()));
		DelayCommand(1.2, AssignCommand(oAtton, ClearAllActions()));
		DelayCommand(1.5, DestroyObject(oRWeapItem, 0.0, 0, 0.0, 0));
		DelayCommand(1.5, DestroyObject(object13, 0.0, 0, 0.0, 0));
		DelayCommand(1.7, AssignCommand(oAtton, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_gspawn_atton", 0)))));
		SetGlobalFadeIn(2.0, 1.0, 0.0, 0.0, 0.0);
	}
	if ((nParam1 == 4)) {
		object object16 = GetItemInSlot(4, oPC);
		object object18 = GetItemInSlot(4, oAtton);
		AssignCommand(oAtton, ClearAllActions());
		AssignCommand(oAtton, ClearAllActions());
		DestroyObject(object16, 0.0, 0, 0.0, 0);
		DestroyObject(object18, 0.0, 0, 0.0, 0);
		AssignCommand(oAtton, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_gspawn_atton", 0))));
	}
}