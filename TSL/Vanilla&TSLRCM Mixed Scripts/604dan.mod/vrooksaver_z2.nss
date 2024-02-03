void main() {
	object oNpc_vrook = GetObjectByTag("npc_vrook", 0);
	object object3 = CreateItemOnObject("g_w_lghtsbr03", oNpc_vrook, 1, 0);
	AssignCommand(oNpc_vrook, ActionEquipItem(object3, 4, 0));
}

