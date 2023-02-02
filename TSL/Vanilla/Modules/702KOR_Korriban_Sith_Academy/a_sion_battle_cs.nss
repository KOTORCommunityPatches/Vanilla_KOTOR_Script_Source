void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
			{
				object oWp_pc_move2 = GetObjectByTag("wp_pc_move2", 0);
				object oWp_sion_move2 = GetObjectByTag("wp_sion_move2", 0);
				object oPC = GetFirstPC();
				object oDarthSion = GetObjectByTag("DarthSion", 0);
				effect effect1 = EffectMovementSpeedDecrease(20);
				AssignCommand(oPC, ClearAllActions());
				DelayCommand(2.0, ApplyEffectToObject(1, effect1, oPC, 15.0));
				DelayCommand(2.0, ApplyEffectToObject(1, effect1, oDarthSion, 15.0));
				DelayCommand(3.0, AssignCommand(oPC, ActionMoveToObject(oWp_pc_move2, 0, 1.0)));
				DelayCommand(3.0, AssignCommand(oDarthSion, ActionMoveToObject(oWp_sion_move2, 0, 1.0)));
			}
			break;
		case 2:
			{
				object object9 = GetObjectByTag("DarthSion", 0);
				DelayCommand(0.2, ChangeToStandardFaction(object9, 1));
				DelayCommand(0.3, ExecuteScript("a_force_combat", object9, 0xFFFFFFFF));
				object oSithAssassin = GetObjectByTag("SithAssassin", 0);
				DelayCommand(0.0, ChangeToStandardFaction(oSithAssassin, 1));
				object object13 = GetObjectByTag("SithAssassin", 1);
				DelayCommand(0.0, ChangeToStandardFaction(object13, 1));
				object object15 = GetFirstPC();
				DelayCommand(0.3, CreatureFlourishWeapon(object15));
			}
			break;
	}
}
