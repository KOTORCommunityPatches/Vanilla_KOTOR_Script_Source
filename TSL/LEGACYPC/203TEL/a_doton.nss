struct structtype1 {
	float float1;
	float float3;
};

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
		object oDoton = GetObjectByTag("doton", 0);
		ChangeToStandardFaction(oDoton, 12);
		object oGam_enforcer = GetObjectByTag("gam_enforcer", 0);
		object object5 = GetObjectByTag("gam_enforcer", 1);
		AssignCommand(oGam_enforcer, ClearAllActions());
		AssignCommand(object5, ClearAllActions());
		ChangeToStandardFaction(oGam_enforcer, 11);
		ChangeToStandardFaction(object5, 11);
		AssignCommand(oGam_enforcer, ActionAttack(oDoton, 0));
		AssignCommand(object5, ActionAttack(oDoton, 0));
		ApplyEffectToObject(2, EffectCutSceneHorrified(), GetObjectByTag("doton", 0), (-1.0));
	}
	else {
		if ((nParam1 == 2)) {
			object oPC = GetFirstPC();
			object object10 = GetObjectByTag("doton", 0);
			object object12 = GetObjectByTag("gam_enforcer", 0);
			object object14 = GetObjectByTag("gam_enforcer", 1);
			ChangeToStandardFaction(object10, 2);
			AssignCommand(object12, ClearAllActions());
			AssignCommand(object14, ClearAllActions());
			DelayCommand(0.3, sub1(object12, oPC));
			DelayCommand(0.8, sub1(object14, oPC));
		}
		else {
			if ((nParam1 == 3)) {
				object object16 = GetObjectByTag("doton", 0);
				object object18 = GetObjectByTag("gam_enforcer", 0);
				object object20 = GetObjectByTag("gam_enforcer", 1);
				SetMinOneHP(object16, 0);
				ChangeToStandardFaction(object16, 12);
				AssignCommand(object18, ActionAttack(object16, 0));
				AssignCommand(object20, ActionAttack(object16, 0));
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
							object object28 = GetObjectByTag("doton", 0);
							AssignCommand(object28, ClearAllEffects());
							AssignCommand(object28, ActionMoveToObject(GetObjectByTag("wp_a1_exit", 0), 1, 1.0));
							DelayCommand(4.0, DestroyObject(object28, 0.0, 1, 0.0, 0));
						}
						else {
							if ((nParam1 == 7)) {
								object oWp_a1_exit = GetObjectByTag("wp_a1_exit", 0);
								object object33 = GetObjectByTag("harra", 0);
								object object35 = GetObjectByTag("ramana", 0);
								AssignCommand(object33, ClearAllActions());
								AssignCommand(object33, ActionMoveToObject(oWp_a1_exit, 0, 1.0));
								AssignCommand(object35, ClearAllActions());
								AssignCommand(object35, ActionMoveToObject(oWp_a1_exit, 0, 1.0));
								DelayCommand(7.0, DestroyObject(object33, 0.0, 1, 0.0, 0));
								DelayCommand(7.0, DestroyObject(object35, 0.0, 1, 0.0, 0));
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

