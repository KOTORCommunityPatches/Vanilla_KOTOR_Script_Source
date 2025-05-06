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
		SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0);
		object oSister1Cut = GetObjectByTag("Sister1Cut", 0);
		object oSister2Cut = GetObjectByTag("Sister2Cut", 0);
		AssignCommand(GetObjectByTag("Sister1Cut", 0), ActionMoveToObject(GetObjectByTag("wp_sister1council_2", 0), 0, 1.0));
		AssignCommand(GetObjectByTag("Sister2Cut", 0), ActionMoveToObject(GetObjectByTag("wp_sister2council_2", 0), 0, 1.0));
	}
	else {
		if ((nParam1 == 2)) {
			SetLockOrientationInDialog(GetObjectByTag("AtrisCut", 0), 1);
		}
		else {
			if ((nParam1 == 3)) {
				AssignCommand(GetObjectByTag("Sister1Cut", 0), ActionPlayAnimation(32, 1.0, 500.0));
				AssignCommand(GetObjectByTag("Sister2Cut", 0), ActionPlayAnimation(32, 1.0, 500.0));
			}
			else {
				if ((nParam1 == 4)) {
					SetLockOrientationInDialog(GetObjectByTag("AtrisCut", 0), 0);
				}
				else {
					if ((nParam1 == 5)) {
						sub1(GetObjectByTag("AtrisCut", 0), GetObjectByTag("Sister1Cut", 0));
					}
					else {
						if ((nParam1 == 6)) {
							object oAtrisCut = GetObjectByTag("AtrisCut", 0);
							sub1(oAtrisCut, GetObjectByTag("Atris_Pillar", 0));
						}
						else {
							if ((nParam1 == 7)) {
								AssignCommand(GetObjectByTag("AtrisCut", 0), ActionMoveToObject(GetObjectByTag("wp_atriswind_2", 0), 0, 1.0));
							}
							else {
								if ((nParam1 == 8)) {
									SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0);
								}
								else {
									if ((nParam1 == 9)) {
										AssignCommand(GetFirstPC(), DelayCommand(3.0, StartNewModule("003EBO", "", "", "", "", "", "", "")));
										SetGlobalFadeOut(0.0, 2.0, 0.0, 0.0, 0.0);
										DelayCommand(2.0, DestroyObject(GetObjectByTag("AtrisCut", 0), 0.0, 0, 0.0, 0));
										DelayCommand(2.0, DestroyObject(GetObjectByTag("sister1cut", 0), 0.0, 0, 0.0, 0));
										DelayCommand(2.0, DestroyObject(GetObjectByTag("sister2cut", 0), 0.0, 0, 0.0, 0));
									}
								}
							}
						}
					}
				}
			}
		}
	}
}

