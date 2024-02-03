void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			{
				object oCoortaThug1 = GetObjectByTag("CoortaThug1", 0);
				AssignCommand(oCoortaThug1, ActionMoveToObject(GetObjectByTag("WP_THUG1_DOOR", 0), 0, 1.0));
				AssignCommand(oCoortaThug1, ActionPlayAnimation(15, 1.0, 1.0));
			}
			break;
		case 1:
			{
				object oHoloDroid = GetObjectByTag("HoloDroid", 0);
				object object6 = GetObjectByTag("HoloDroid", 1);
				object object8 = GetObjectByTag("HoloDroid", 2);
				AssignCommand(oHoloDroid, ActionMoveToObject(GetObjectByTag("WP_ROBO1_WALK", 0), 0, 1.0));
				AssignCommand(object6, ActionMoveToObject(GetObjectByTag("WP_ROBO2_WALK", 0), 0, 1.0));
				AssignCommand(object8, ActionMoveToObject(GetObjectByTag("WP_ROBO3_WALK", 0), 0, 1.0));
			}
			break;
		case 2:
			{
				object object13 = GetObjectByTag("HoloDroid", 0);
				object object15 = GetObjectByTag("HoloDroid", 1);
				object object17 = GetObjectByTag("HoloDroid", 2);
				ChangeToStandardFaction(object13, 11);
				ChangeToStandardFaction(object15, 11);
				ChangeToStandardFaction(object17, 11);
				object object19 = GetObjectByTag("CoortaThug1", 0);
				object oCoortaThug2 = GetObjectByTag("CoortaThug2", 0);
				object oCoorta = GetObjectByTag("Coorta", 0);
				ChangeToStandardFaction(object19, 12);
				ChangeToStandardFaction(oCoortaThug2, 12);
				ChangeToStandardFaction(oCoorta, 12);
				ApplyEffectToObject(2, EffectCutSceneHorrified(), object19, 0.0);
				ApplyEffectToObject(2, EffectCutSceneHorrified(), oCoortaThug2, 0.0);
				ApplyEffectToObject(2, EffectCutSceneHorrified(), oCoorta, 0.0);
				AssignCommand(object13, ActionAttack(oCoortaThug2, 0));
				AssignCommand(object15, ActionAttack(object19, 0));
				AssignCommand(object17, ActionAttack(oCoorta, 0));
			}
			break;
		case 3:
			{
				object object25 = GetObjectByTag("HoloDroid", 0);
				object object27 = GetObjectByTag("HoloDroid", 1);
				object object29 = GetObjectByTag("HoloDroid", 2);
				AssignCommand(object25, ClearAllActions());
				AssignCommand(object27, ClearAllActions());
				AssignCommand(object29, ClearAllActions());
			}
			break;
		case 4:
			CreateObject(1, "g_droid_mine_003", GetLocation(GetObjectByTag("WP_ROBO1_SPAWN", 0)), 0);
			CreateObject(1, "g_droid_mine_003", GetLocation(GetObjectByTag("WP_ROBO2_SPAWN", 0)), 0);
			CreateObject(1, "g_droid_mine_003", GetLocation(GetObjectByTag("WP_ROBO3_SPAWN", 0)), 0);
			break;
		case 5:
			{
				object object37 = GetObjectByTag("HoloDroid", 0);
				object object39 = GetObjectByTag("HoloDroid", 1);
				object object41 = GetObjectByTag("HoloDroid", 2);
				AssignCommand(object37, ActionMoveToObject(GetObjectByTag("WP_ROBO1_LEAVE", 0), 0, 1.0));
				DelayCommand(0.2, AssignCommand(object39, ActionMoveToObject(GetObjectByTag("WP_ROBO2_LEAVE", 0), 0, 1.0)));
				DelayCommand(0.5, AssignCommand(object41, ActionMoveToObject(GetObjectByTag("WP_ROBO3_LEAVE", 0), 0, 1.0)));
			}
			break;
	}
}

