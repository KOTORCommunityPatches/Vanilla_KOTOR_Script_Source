void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			{
				object oNpc_vrook = GetObjectByTag("npc_vrook", 0);
				if (GetIsObjectValid(oNpc_vrook)) {
				object oWP_vrook_flee = GetObjectByTag("WP_vrook_flee", 0);
				if (GetIsObjectValid(oWP_vrook_flee)) {
					AssignCommand(oNpc_vrook, ClearAllActions());
					AssignCommand(oNpc_vrook, ActionForceMoveToLocation(GetLocation(oWP_vrook_flee), 1, 30.0));
					DelayCommand(0.5, CreatureFlourishWeapon(oNpc_vrook));
				}
				}
			}
			break;
		case 2:
			break;
	}
}
