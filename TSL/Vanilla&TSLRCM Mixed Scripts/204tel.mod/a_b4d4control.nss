// Prototypes
void sub3();
int sub2(string stringParam1);
void sub1();

void sub3() {
	SetPartyLeader(0xFFFFFFFF);
	RemovePartyMember(0);
	RemoveNPCFromPartyToBase(6);
}

int sub2(string stringParam1) {
	if ((stringParam1 == "atton")) {
		return 0;
	}
	else {
		if ((stringParam1 == "baodur")) {
			return 1;
		}
		else {
			if ((stringParam1 == "mand")) {
				return 2;
			}
			else {
				if ((stringParam1 == "disciple")) {
					return 11;
				}
				else {
					if ((stringParam1 == "g0t0")) {
						return 3;
					}
					else {
						if ((stringParam1 == "handmaiden")) {
							return 4;
						}
						else {
							if ((stringParam1 == "hanharr")) {
								return 10;
							}
							else {
								if ((stringParam1 == "hk47")) {
									return 5;
								}
								else {
									if ((stringParam1 == "kreia")) {
										return 6;
									}
									else {
										if ((stringParam1 == "mira")) {
											return 7;
										}
										else {
											if ((stringParam1 == "t3m4")) {
												return 8;
											}
											else {
												if ((stringParam1 == "visasmarr")) {
													return 9;
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
		}
	}
	return (-1);
}

void sub1() {
	SetPartyLeader(0xFFFFFFFF);
	object oNPC = GetPartyMemberByIndex(1);
	object object3 = GetPartyMemberByIndex(2);
	if (GetIsObjectValid(oNPC)) {
		int int3 = sub2(GetTag(oNPC));
		SetGlobalNumber("204_B4D4_PARTY_1", int3);
	}
	if (GetIsObjectValid(object3)) {
		int int6 = sub2(GetTag(object3));
		SetGlobalNumber("204_B4D4_PARTY_2", int6);
	}
	sub3();
	object o204_b4d4 = GetObjectByTag("204_b4d4", 0);
	AddAvailableNPCByObject(1, o204_b4d4);
	SwitchPlayerCharacter(1);
	DestroyObject(o204_b4d4, 0.0, 1, 0.0, 0);
}

void main() {
	object o204_habat = GetObjectByTag("204_habat", 0);
	MusicBackgroundChangeDay(GetArea(OBJECT_SELF), 16, 0);
	MusicBackgroundChangeNight(GetArea(OBJECT_SELF), 16, 0);
	SetGlobalNumber("203TEL_B-4D4_PC", 1);
	sub1();
	DelayCommand(1.0, AssignCommand(o204_habat, ClearAllActions()));
	DelayCommand(1.0, AssignCommand(o204_habat, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

