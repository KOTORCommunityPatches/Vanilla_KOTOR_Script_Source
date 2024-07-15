// Prototypes
void sub1();

void sub1() {
	RemoveNPCFromPartyToBase(6);
}

void main() {
	if ((!IsNPCPartyMember(6))) {
		AurPostString("CLEARING KREIA FROM MAP!", 5, 20, 10.0);
		DelayCommand(0.5, sub1());
	}
}

