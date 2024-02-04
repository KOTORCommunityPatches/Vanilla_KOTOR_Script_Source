// Prototypes
int sub1(string stringParam1);

int sub1(string stringParam1) {
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

void main() {
	SetPartyLeader(0xFFFFFFFF);
	object oNPC = GetPartyMemberByIndex(1);
	object object3 = GetPartyMemberByIndex(2);
	if (GetIsObjectValid(oNPC)) {
		RemovePartyMember(sub1(GetTag(oNPC)));
		DestroyObject(oNPC, 0.0, 0, 0.0, 0);
	}
	if (GetIsObjectValid(object3)) {
		RemovePartyMember(sub1(GetTag(object3)));
		DestroyObject(object3, 0.0, 0, 0.0, 0);
	}
	object oWP_KREIA_0 = GetWaypointByTag("WP_ATTON_0");
	object object7 = SpawnAvailableNPC(0, GetLocation(oWP_KREIA_0));
	oWP_KREIA_0 = GetWaypointByTag("WP_KREIA_0");
	object object10 = SpawnAvailableNPC(6, GetLocation(oWP_KREIA_0));
	AddPartyMember(0, object7);
	AddPartyMember(6, object10);
	AssignCommand(object7, ActionPlayAnimation(26, 1.0, (-1.0)));
	AssignCommand(object10, ActionPlayAnimation(26, 1.0, (-1.0)));
}