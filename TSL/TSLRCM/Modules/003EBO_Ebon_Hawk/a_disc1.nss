void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			{
				object oKreia = GetObjectByTag("Kreia", 0);
				AssignCommand(oKreia, ClearAllActions());
				AssignCommand(oKreia, ActionPlayAnimation(35, 1.0, (-1.0)));
			}
			break;
		case 2:
			{
				object oPC = GetFirstPC();
				object oWP_player_cut_3_1 = GetObjectByTag("WP_player_cut_3_1", 0);
				effect effect1 = EffectMovementSpeedDecrease(25);
				ApplyEffectToObject(1, effect1, oPC, 5.0);
				AssignCommand(oPC, ClearAllActions());
				AssignCommand(oPC, ActionMoveToObject(oWP_player_cut_3_1, 0, 1.0));
			}
			break;
	}
}