void main() {
	object oLockerTSFINV = GetObjectByTag("LockerTSFINV", 0);
	int int1 = 0;
	object oPC = GetFirstPC();
	object oKreia = GetObjectByTag("Kreia", 0);
	object oAtton = GetObjectByTag("Atton", 0);
	if (((!GetIsObjectValid(oKreia)) || (!GetIsObjectValid(oAtton)))) {
		AurPostString("No NPC avaialable to remove items FROM", 5, 25, 30.0);
	}
	object object9 = GetObjectByTag("LockerTSFINV", 0);
	object object11 = GetObjectByTag("LockerTSFINV", 1);
	object object13 = GetObjectByTag("LockerTSFINV", 2);
	object object15 = GetObjectByTag("LockerTSFINV", 3);
	object oInvItem = GetFirstItemInInventory(oPC);
	while ((oInvItem != OBJECT_INVALID)) {
		switch ((int1 % 4)) {
			case 0:
				oLockerTSFINV = object9;
				break;
			case 1:
				oLockerTSFINV = object11;
				break;
			case 2:
				oLockerTSFINV = object13;
				break;
			case 3:
				oLockerTSFINV = object15;
				break;
		}
		if ((("SonicImprintSensor" == GetTag(oInvItem)) || ("comlink" == GetTag(oInvItem)))) {
			oInvItem = GetNextItemInInventory(oPC);
		}
		else {
			GiveItem(oInvItem, oLockerTSFINV);
			oInvItem = GetFirstItemInInventory(oPC);
		}
		(int1++);
	}
	int int4;
	oLockerTSFINV = GetObjectByTag("LockerTSFINV", 4);
	int4 = (20 - 1);
	while ((int4 >= 0)) {
		GiveItem(GetItemInSlot(int4, oPC), oLockerTSFINV);
		GiveItem(GetItemInSlot(int4, oAtton), oLockerTSFINV);
		GiveItem(GetItemInSlot(int4, oKreia), oLockerTSFINV);
		if ((int4 == 1)) {
			AssignCommand(oPC, ActionEquipItem(CreateItemOnObject("g_a_clothes01", oPC, 1, 1), 1, 1));
			AssignCommand(oAtton, ActionEquipItem(CreateItemOnObject("g_a_clothes01", oAtton, 1, 1), 1, 1));
			AssignCommand(oKreia, ActionEquipItem(CreateItemOnObject("g_a_clothes01", oKreia, 1, 1), 1, 1));
		}
		(int4--);
	}
}
