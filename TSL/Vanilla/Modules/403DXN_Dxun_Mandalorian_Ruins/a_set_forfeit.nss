void main() {
	int nParam1 = GetScriptParameter(1);
	object oRWeapItem;
	object oNpc_kelborn;
	object oPC;
	switch (nParam1) {
		case 0:
			SetForfeitConditions(((1 | 2) | 4));
			oPC = GetFirstPC();
			oRWeapItem = GetItemInSlot(5, oPC);
			GiveItem(oRWeapItem, oPC);
			oRWeapItem = GetItemInSlot(4, oPC);
			GiveItem(oRWeapItem, oPC);
			break;
		case 1:
			SetForfeitConditions(2);
			oNpc_kelborn = GetObjectByTag("npc_kex", 0);
			AssignCommand(oNpc_kelborn, ActionEquipItem(CreateItemOnObject("g_w_vbroswrd002", oNpc_kelborn, 1, 0), 4, 1));
			break;
		case 2:
			SetForfeitConditions(((1 | 2) | 4));
			oPC = GetFirstPC();
			oRWeapItem = GetItemInSlot(5, oPC);
			GiveItem(oRWeapItem, oPC);
			oRWeapItem = GetItemInSlot(4, oPC);
			GiveItem(oRWeapItem, oPC);
			oNpc_kelborn = GetObjectByTag("npc_kex", 0);
			DestroyObject(GetItemInSlot(4, oNpc_kelborn), 0.0, 0, 0.0, 0);
			break;
		case 3:
			SetForfeitConditions(((1 | 2) | 8));
			oNpc_kelborn = GetObjectByTag("npc_kex", 0);
			oRWeapItem = CreateItemOnObject("g_w_vbroswrd002", oNpc_kelborn, 1, 0);
			AssignCommand(oNpc_kelborn, ActionEquipItem(oRWeapItem, 4, 1));
			oPC = GetFirstPC();
			oRWeapItem = GetItemInSlot(5, oPC);
			GiveItem(oRWeapItem, oPC);
			oRWeapItem = GetItemInSlot(4, oPC);
			GiveItem(oRWeapItem, oPC);
			oRWeapItem = CreateItemOnObject("g_w_vbroswrd002", oPC, 1, 0);
			AssignCommand(oPC, ActionEquipItem(oRWeapItem, 4, 1));
			break;
		case 4:
			SetForfeitConditions((2 | 8));
			oNpc_kelborn = GetObjectByTag("npc_kelborn", 0);
			oRWeapItem = CreateItemOnObject("g_w_vbroswrd002", oNpc_kelborn, 1, 0);
			if ((!GetIsObjectValid(oRWeapItem))) {
				AurPostString("Invalid Item Give.", 15, 10, 4.0);
			}
			AssignCommand(oNpc_kelborn, ActionEquipItem(oRWeapItem, 4, 1));
			oPC = GetFirstPC();
			oRWeapItem = GetItemInSlot(5, oPC);
			GiveItem(oRWeapItem, oPC);
			oRWeapItem = GetItemInSlot(4, oPC);
			GiveItem(oRWeapItem, oPC);
			oRWeapItem = CreateItemOnObject("g_w_vbroswrd002", oPC, 1, 0);
			if ((!GetIsObjectValid(oRWeapItem))) {
				AurPostString("Invalid Item Give.", 15, 10, 4.0);
			}
			AssignCommand(oPC, ActionEquipItem(oRWeapItem, 4, 1));
			break;
	}
}
