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
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		if (IsNPCPartyMember(sub1("g0t0"))) {
			object oS4c8 = GetObjectByTag("s4c8", 0);
			DestroyObject(oS4c8, 0.0, 0, 0.0, 0);
			object oDhanis = GetObjectByTag("dhanis", 0);
			if (GetIsObjectValid(oDhanis)) {
				SetLocalBoolean(oDhanis, 46, 1);
			}
		}
		if (GetLocalBoolean(OBJECT_SELF, 30)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		object oTwik = GetObjectByTag("Twik", 0);
		if ((!GetIsObjectValid(oTwik))) {
			return;
		}
		AssignCommand(oTwik, ClearAllActions());
		AssignCommand(oTwik, ActionStartConversation(GetFirstPC(), "twik_trigger", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

