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

int StartingConditional() {
	int int1;
	int int2;
	int1 = 0;
	while ((int1 < 3)) {
		{
			object oNPC = GetPartyMemberByIndex(int1);
			if (GetIsObjectValid(oNPC)) {
			object oBodyItem = GetItemInSlot(1, oNPC);
			if (GetIsObjectValid(oBodyItem)) {
				string string1 = GetTag(oBodyItem);
				if ((string1 == "dancersoutfit")) {
					AurPostString(("Currently wearing: " + GetTag(oBodyItem)), 5, 20, 10.0);
					if ((oNPC == GetFirstPC())) {
						SetGlobalNumber("303NAR_Dancer", 1);
						return 1;
					}
					else {
						if ((sub1(GetTag(oNPC)) == 7)) {
							SetGlobalNumber("303NAR_Dancer", 2);
							return 1;
						}
						else {
							if ((sub1(GetTag(oNPC)) == 4)) {
								SetGlobalNumber("303NAR_Dancer", 3);
								return 1;
							}
						}
					}
				}
			}
			}
		}
		(int1++);
	}
	return 0;
}
