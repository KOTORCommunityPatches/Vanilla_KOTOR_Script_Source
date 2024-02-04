// Prototypes
void sub1();

void sub1() {
	int int1;
	object oNPC;
	int1 = 0;
	while ((int1 < 3)) {
		oNPC = GetPartyMemberByIndex(int1);
		if (GetIsObjectValid(oNPC)) {
			if ((GetCurrentHitPoints(oNPC) <= 0)) {
			}
		}
		(int1++);
	}
}

void main() {
	if ((!GetIsObjectValid(GetObjectByTag("BaoDur", 0)))) {
		return;
	}
	if ((GetEnteringObject() == GetPartyLeader())) {
		int int2;
		object oDrdtank = GetObjectByTag("drdtank", 0);
		if (GetIsObjectValid(oDrdtank)) {
			if ((GetStandardFaction(oDrdtank) == 1)) {
				int2 = 0;
			}
			else {
				int2 = 1;
			}
		}
		else {
			int2 = 1;
		}
		object oTelosShuttle = GetObjectByTag("TelosShuttle", 0);
		if ((GetIsObjectValid(oTelosShuttle) && int2)) {
			sub1();
			AssignCommand(oTelosShuttle, ClearAllActions());
			AssignCommand(GetFirstPC(), ClearAllActions());
			AssignCommand(GetFirstPC(), ActionStartConversation(GetFirstPC(), "shuttle", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		else {
			BarkString(OBJECT_INVALID, 132470, 0xFFFFFFFF, 0xFFFFFFFF);
		}
	}
}