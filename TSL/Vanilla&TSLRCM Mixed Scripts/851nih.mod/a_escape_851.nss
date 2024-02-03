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
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	sub1();
	SetSoloMode(0);
	SetPartyLeader(0xFFFFFFFF);
	PlayMovie("MalMov05", 0);
	if ((GetGlobalNumber("101PER_Revan_End") == 1)) {
		QueueMovie("TelMov02", 1);
		QueueMovie("HypMov01", 1);
		PlayMovieQueue(1);
		StartNewModule("003EBO", "", "", "", "", "", "", "");
	}
	else {
		StartNewModule("205TEL", "", "", "", "", "", "", "");
	}
}

