void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			{
				object oNpc_azkul = GetObjectByTag("npc_azkul", 0);
				AssignCommand(oNpc_azkul, ClearAllActions());
				AssignCommand(oNpc_azkul, ActionForceMoveToLocation(GetLocation(GetObjectByTag("wp_azkul_terena", 0)), 0, 30.0));
			}
			break;
		default:
			AurPostString("ERROR: with azkul cutscene", 5, 15, 20.0);
			break;
	}
}
