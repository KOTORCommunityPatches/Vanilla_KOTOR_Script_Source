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
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	SetGlobalNumber("601DAN_Side", 1);
	SetGlobalNumber("601DAN_Battle_Mili", 1);
	sub1();
	DelayCommand(1.0, StartNewModule("601DAN", "wp_speech_pc", "", "", "", "", "", ""));
}

