// Prototypes
void sub1();

void sub1() {
	int int1;
	effect efResurrect = EffectResurrection(100);
	effect efHeal;
	object oNPC;
	int1 = 0;
	while ((int1 < 3)) {
		oNPC = GetPartyMemberByIndex(int1);
		if (GetIsObjectValid(oNPC)) {
			if ((GetCurrentHitPoints(oNPC) <= 0)) {
				ApplyEffectToObject(0, efResurrect, oNPC, 0.0);
			}
			else {
				efHeal = EffectHeal(GetMaxHitPoints(oNPC));
				ApplyEffectToObject(0, efHeal, oNPC, 0.0);
			}
		}
		(int1++);
	}
}

void main() {
	if ((GetEnteringObject() == GetPartyLeader())) {
		int int1;
		object oDrdtank = GetObjectByTag("drdtank", 0);
		if (GetIsObjectValid(oDrdtank)) {
			if ((GetStandardFaction(oDrdtank) == 1)) {
				int1 = 0;
			}
			else {
				int1 = 1;
			}
		}
		else {
			int1 = 1;
		}
		object oTelosShuttle = GetObjectByTag("TelosShuttle", 0);
		if ((GetIsObjectValid(oTelosShuttle) && int1)) {
			sub1();
			AssignCommand(oTelosShuttle, ClearAllActions());
			AssignCommand(GetFirstPC(), ClearAllActions());
			AssignCommand(GetFirstPC(), ActionStartConversation(GetFirstPC(), "shuttle", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		else {
			BarkString(OBJECT_INVALID, 132470);
		}
	}
}

