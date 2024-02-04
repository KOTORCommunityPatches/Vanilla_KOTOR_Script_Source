void main() {
	object oPC = GetFirstPC();
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			ClearAllEffects();
			ClearAllActions();
			SetLocalBoolean(OBJECT_SELF, 42, 1);
			DelayCommand(0.8, AssignCommand(GetObjectByTag("vrookcage", 0), ActionPlayAnimation(202, 1.0, 0.0)));
			AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("wp_free_pc1", 0), 1));
			DelayCommand(1.2, AssignCommand(GetObjectByTag("npc_vrook", 0), ActionMoveToObject(GetObjectByTag("wp_free_vrook1", 0), 0, 1.0)));
			break;
		case 1:
			ClearAllEffects();
			ClearAllActions();
			DelayCommand(0.3, AssignCommand(GetObjectByTag("npc_vrook", 0), ActionMoveToObject(GetObjectByTag("wp_free_vrook2", 0), 1, 1.0)));
			DelayCommand(3.0, ClearAllActions());
			DelayCommand(3.1, DestroyObject(GetObjectByTag("npc_vrook", 0), 0.0, 1, 0.0, 0));
			break;
	}
}