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
	object oHandmaiden;
	switch (GetGlobalNumber("303NAR_Dancer")) {
		case 1:
			AurPostString("PC is dancer", 5, 4, 5.0);
			oHandmaiden = GetFirstPC();
			SetGlobalNumber("303_Dance_Machine", 1);
			break;
		case 2:
			SetGlobalNumber("303_Dance_Machine", 2);
			oHandmaiden = GetObjectByTag("Mira", 0);
			break;
		case 3:
			SetGlobalNumber("303_Dance_Machine", 3);
			oHandmaiden = GetObjectByTag("Handmaiden", 0);
			break;
	}
	if ((nParam1 == 1)) {
		AssignCommand(GetObjectByTag("twilekdomo", 0), ActionMoveToObject(GetObjectByTag("wp_twidomo_1", 0), 0, 1.0));
		object oNPC = GetPartyMemberByIndex(0);
		AssignCommand(oNPC, ClearAllActions());
		AssignCommand(oNPC, ActionMoveToObject(GetObjectByTag("wp_dancer_1", 0), 0, 1.0));
		oNPC = GetPartyMemberByIndex(1);
		if (GetIsObjectValid(oNPC)) {
			AssignCommand(oNPC, ClearAllActions());
			DelayCommand(1.0, AssignCommand(oNPC, ActionMoveToObject(GetObjectByTag("wp_party_1", 0), 0, 1.0)));
		}
		oNPC = GetPartyMemberByIndex(2);
		if (GetIsObjectValid(oNPC)) {
			AssignCommand(oNPC, ClearAllActions());
			DelayCommand(1.0, AssignCommand(oNPC, ActionMoveToObject(GetObjectByTag("wp_party_2", 0), 0, 1.0)));
		}
	}
	else {
		if ((nParam1 == 2)) {
			object oVogga = GetObjectByTag("Vogga", 0);
			AssignCommand(GetObjectByTag("twilekdomo", 0), ActionMoveToObject(GetObjectByTag("wp_twidomo_2", 0), 0, 1.0));
			DelayCommand(1.0, AssignCommand(oHandmaiden, ClearAllActions()));
			DelayCommand(1.0, AssignCommand(oHandmaiden, ActionMoveToObject(GetObjectByTag("wp_dancer_2", 0), 0, 1.0)));
			DelayCommand(5.0, AssignCommand(oHandmaiden, sub1(OBJECT_SELF, oVogga)));
			DelayCommand(5.0, AssignCommand(oHandmaiden, ActionPlayAnimation(16, 1.0, (-1.0))));
			DelayCommand(7.0, AssignCommand(oVogga, ActionPlayAnimation(107, 1.0, 0.0)));
		}
		else {
			if ((nParam1 == 3)) {
				object object19 = GetObjectByTag("Vogga", 0);
				AssignCommand(object19, ClearAllActions());
				AssignCommand(object19, ActionPlayAnimation(22, 1.0, (-1.0)));
				SetGlobalBoolean("303NAR_Vogga_Asleep", 1);
				AssignCommand(oHandmaiden, ClearAllActions());
				AssignCommand(oHandmaiden, sub1(OBJECT_SELF, object19));
				AssignCommand(oHandmaiden, ActionPlayAnimation(16, 1.0, (-1.0)));
			}
			else {
				if ((nParam1 == 4)) {
					object oTwilekdomo = GetObjectByTag("twilekdomo", 0);
					AssignCommand(oTwilekdomo, ActionMoveToObject(GetObjectByTag("wp_twidomo_sp", 0), 0, 1.0));
					DelayCommand(4.0, DestroyObject(oTwilekdomo, 0.0, 0, 0.0, 0));
				}
				else {
					if ((nParam1 == 5)) {
						int nGlobal = GetGlobalNumber("303_Dance_Machine");
						int int8;
						int int9 = 0;
						string string1;
						object object24 = GetFirstPC();
						int8 = 0;
						while ((int8 < GetPartyMemberCount())) {
							if ((object24 == oHandmaiden)) {
								AurPostString(("wp_dancer_2 " + GetTag(object24)), 5, 5, 5.0);
								string1 = "wp_dancer_2";
							}
							else {
								if ((int9 == 0)) {
									AurPostString(("wp_party_1 " + GetTag(object24)), 5, 6, 5.0);
									string1 = "wp_party_1";
									(int9++);
								}
								else {
									if ((int9 == 1)) {
										AurPostString(("wp_party_2 " + GetTag(object24)), 5, 7, 5.0);
										string1 = "wp_party_2";
										(int9++);
									}
								}
							}
							DelayCommand(3.0, AssignCommand(object24, ClearAllActions()));
							DelayCommand(3.0, AssignCommand(object24, ActionJumpToObject(GetObjectByTag(string1, 0), 1)));
							object24 = GetNextPC();
							(int8++);
						}
					}
					else {
						if ((nParam1 == 6)) {
							object object28 = GetObjectByTag("Vogga", 0);
							AssignCommand(object28, ClearAllActions());
							AssignCommand(object28, ActionPlayAnimation(22, 1.0, (-1.0)));
						}
					}
				}
			}
		}
	}
}

