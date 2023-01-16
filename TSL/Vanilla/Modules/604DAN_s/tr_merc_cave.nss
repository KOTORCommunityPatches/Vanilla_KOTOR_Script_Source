// Prototypes
void sub1(string stringParam1);

void sub1(string stringParam1) {
	int int1 = 0;
	object object1 = GetObjectByTag(stringParam1, int1);
	while (GetIsObjectValid(object1)) {
		{
			effect efDeath = EffectDeath(0, 0, 1);
			ApplyEffectToObject(0, efDeath, object1, 0.0);
			object1 = GetObjectByTag(stringParam1, (int1++));
		}
	}
}

void main() {
	if (((!GetGlobalNumber("604DAN_Vrook_Status")) == 2)) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	object oG_merc_capt = GetObjectByTag("g_merc_capt", 0);
	if (((!GetIsObjectValid(oG_merc_capt)) || GetLocalBoolean(oG_merc_capt, 40))) {
		return;
	}
	if ((!GetIsXBox())) {
		sub1("g_kinrath04");
	}
	AssignCommand(oG_merc_capt, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

