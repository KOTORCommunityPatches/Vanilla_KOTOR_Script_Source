// Prototypes
object sub1(string stringParam1, int intParam2);

object sub1(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void main() {
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	if ((GetObjectByTag("corpse_tr_hssiss", 0) == OBJECT_SELF)) {
		sub1("hssiss", 0);
		sub1("hssiss", 1);
		sub1("hssiss", 2);
	}
	else {
		if ((GetObjectByTag("corpse_tr_hss001", 0) == OBJECT_SELF)) {
			sub1("hssiss", 3);
			sub1("hssiss", 4);
			sub1("hssiss", 5);
		}
		else {
			if ((GetObjectByTag("corpse_tr_hss002", 0) == OBJECT_SELF)) {
				sub1("hssiss", 6);
				sub1("hssiss", 7);
			}
			else {
				if ((GetObjectByTag("corpse_tr_hss003", 0) == OBJECT_SELF)) {
					sub1("hssiss", 8);
					sub1("hssiss", 9);
					sub1("hssiss", 10);
				}
				else {
					if ((GetObjectByTag("corpse_tr_hss004", 0) == OBJECT_SELF)) {
						sub1("hssiss", 11);
						sub1("hssiss", 12);
					}
					else {
						if ((GetObjectByTag("corpse_tr_hss005", 0) == OBJECT_SELF)) {
							sub1("hssiss", 13);
							sub1("hssiss", 14);
							sub1("hssiss", 15);
						}
						else {
							if ((GetObjectByTag("corpse_tr_hss006", 0) == OBJECT_SELF)) {
								sub1("hssiss", 16);
								sub1("hssiss", 17);
							}
						}
					}
				}
			}
		}
	}
	if ((!GetGlobalNumber("701KOR_Hssiss"))) {
		object oKreia_invis = GetObjectByTag("kreia_invis", 0);
		if ((!GetIsObjectValid(oKreia_invis))) {
			AurPostString("Kreia not valid, exiting", 5, 5, 5.0);
			return;
		}
		SetGlobalNumber("701KOR_Hssiss", 1);
		AssignCommand(GetObjectByTag("hssiss", 0), ActionStartConversation(GetFirstPC(), "kreia_kr", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}