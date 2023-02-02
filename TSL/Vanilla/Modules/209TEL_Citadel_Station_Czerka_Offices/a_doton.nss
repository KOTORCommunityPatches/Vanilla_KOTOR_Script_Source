// Prototypes
void sub1(object objectParam1, object oPC);

void sub1(object objectParam1, object oPC) {
	if ((oPC == OBJECT_INVALID)) {
		oPC = GetFirstPC();
	}
	AssignCommand(objectParam1, SetFacingPoint(GetPositionFromLocation(GetLocation(oPC))));
}

void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		ApplyEffectToObject(2, EffectCutSceneHorrified(), GetObjectByTag("doton", 0), (-1.0));
	}
	else {
		if ((nParam1 == 2)) {
			ChangeToStandardFaction(GetObjectByTag("doton", 0), 2);
			AssignCommand(GetObjectByTag("gam_enforcer", 0), ClearAllActions());
			AssignCommand(GetObjectByTag("gam_enforcer", 1), ClearAllActions());
			DelayCommand(0.3, sub1(GetObjectByTag("gam_enforcer", 0), GetFirstPC()));
			DelayCommand(0.8, sub1(GetObjectByTag("gam_enforcer", 1), GetFirstPC()));
		}
		else {
			if ((nParam1 == 3)) {
				object oDoton = GetObjectByTag("doton", 0);
				SetMinOneHP(oDoton, 0);
				ChangeToStandardFaction(oDoton, 12);
				AssignCommand(GetObjectByTag("gam_enforcer", 0), ActionAttack(oDoton, 0));
				AssignCommand(GetObjectByTag("gam_enforcer", 1), ActionAttack(oDoton, 0));
			}
			else {
				if ((nParam1 == 4)) {
					object oRamana = GetObjectByTag("ramana", 0);
					AssignCommand(oRamana, ClearAllActions());
					AssignCommand(oRamana, ActionMoveToObject(GetObjectByTag("wp_a1_exit", 0), 0, 1.0));
				}
				else {
					if ((nParam1 == 5)) {
						object oHarra = GetObjectByTag("harra", 0);
						AssignCommand(oHarra, ActionMoveToObject(GetObjectByTag("wp_a1_exit", 0), 1, 1.0));
					}
					else {
						if ((nParam1 == 6)) {
							object object19 = GetObjectByTag("doton", 0);
							AssignCommand(object19, ClearAllEffects());
							AssignCommand(object19, ActionMoveToObject(GetObjectByTag("wp_a1_exit", 0), 1, 1.0));
							DelayCommand(4.0, DestroyObject(object19, 0.0, 1, 0.0, 0));
						}
						else {
							if ((nParam1 == 7)) {
								object oWp_a1_exit = GetObjectByTag("wp_a1_exit", 0);
								object object24 = GetObjectByTag("harra", 0);
								object object26 = GetObjectByTag("ramana", 0);
								AssignCommand(object24, ClearAllActions());
								AssignCommand(object24, ActionMoveToObject(oWp_a1_exit, 0, 1.0));
								AssignCommand(object26, ClearAllActions());
								AssignCommand(object26, ActionMoveToObject(oWp_a1_exit, 0, 1.0));
								DelayCommand(7.0, DestroyObject(object24, 0.0, 1, 0.0, 0));
								DelayCommand(7.0, DestroyObject(object26, 0.0, 1, 0.0, 0));
							}
							else {
								if ((nParam1 == 8)) {
									DestroyObject(GetObjectByTag("harra", 0), 0.0, 0, 0.0, 0);
									DestroyObject(GetObjectByTag("ramana", 0), 0.0, 0, 0.0, 0);
								}
							}
						}
					}
				}
			}
		}
	}
}
