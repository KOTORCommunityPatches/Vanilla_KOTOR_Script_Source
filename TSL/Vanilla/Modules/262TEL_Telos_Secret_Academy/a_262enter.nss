// Prototypes
void sub1();

void sub1() {
	SetPartyLeader(0xFFFFFFFF);
	int int2 = 0;
	while ((int2 < 12)) {
		if (IsNPCPartyMember(int2)) {
			RemoveNPCFromPartyToBase(int2);
		}
		(int2++);
	}
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	sub1();
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	if ((!GetIsObjectValid(oHandmaiden))) {
		return;
	}
	object oCouncilRoom = GetObjectByTag("MedChamber", 0);
	SetLocked(oCouncilRoom, 0);
	DelayCommand(1.0, AssignCommand(oCouncilRoom, ActionOpenDoor(oCouncilRoom)));
	oCouncilRoom = GetObjectByTag("CouncilRoom", 0);
	AssignCommand(oCouncilRoom, ActionOpenDoor(oCouncilRoom));
	DelayCommand(0.1, AssignCommand(oHandmaiden, ActionStartConversation(oEntering, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
