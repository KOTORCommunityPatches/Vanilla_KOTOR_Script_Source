// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	int int1;
	object oNPC;
	effect efNext;
	sub1("ACTIVATING ARMOR", 5, 5, 5.0);
	int1 = 1;
	oNPC = GetNearestCreature(0, 7, GetFirstPC(), int1, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);
	while (GetIsObjectValid(oNPC)) {
		if ((((!IsObjectPartyMember(oNPC)) && (GetDistanceBetween(GetFirstPC(), oNPC) < 15.0)) || GetGlobalBoolean("TAR_DUELINPROGRESS"))) {
			sub1(("SOMEONE TOO CLOSE - " + GetName(oNPC)), 5, 6, 5.0);
			AssignCommand(oNPC, ActionStartConversation(GetFirstPC(), "ptar_armor_dlg", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			return;
		}
		(int1++);
		oNPC = GetNearestCreature(7, 7, GetFirstPC(), int1, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);
	}
	sub1("ARMOR SUCCESS", 5, 6, 5.0);
	SetGlobalBoolean("TAR_SITHARMOR", (!GetGlobalBoolean("TAR_SITHARMOR")));
	if (GetGlobalBoolean("TAR_SITHARMOR")) {
		int1 = 0;
		while ((int1 < GetPartyMemberCount())) {
			oNPC = GetPartyMemberByIndex(int1);
			sub1("APPLYING DISGUISE", 5, (5 + int1), 5.0);
			ApplyEffectToObject(2, EffectDisguise(28), oNPC, 0.0);
			(int1++);
		}
	}
	else {
		int1 = 0;
		while ((int1 < GetPartyMemberCount())) {
			oNPC = GetPartyMemberByIndex(int1);
			efNext = GetFirstEffect(oNPC);
			while (GetIsEffectValid(efNext)) {
				if ((GetEffectType(efNext) == 62)) {
					sub1("REMOVING DISGUISE", 5, (5 + int1), 5.0);
					RemoveEffect(oNPC, efNext);
				}
				efNext = GetNextEffect(oNPC);
			}
			(int1++);
		}
	}
}

