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
	object oDisciple = GetObjectByTag("Disciple", 0);
	if (GetIsObjectValid(oDisciple)) {
		sub1();
		AddAvailableNPCByObject(11, oDisciple);
		SetGlobalNumber("000_Disciple_Joined", 1);
		AddPartyMember(11, oDisciple);
		ShowPartySelectionGUI("", 0xFFFFFFFF, 0xFFFFFFFF, 0);
	}
	else {
		AurPostString("ERROR: Disciple not valid.", 5, 15, 10.0);
	}
}
