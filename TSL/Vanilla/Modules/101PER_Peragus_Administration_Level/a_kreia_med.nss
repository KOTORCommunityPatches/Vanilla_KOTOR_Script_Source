// Prototypes
void sub1();

void sub1() {
	object oKreia = GetObjectByTag("Kreia", 0);
	if ((!GetIsInConversation(oKreia))) {
		AssignCommand(oKreia, ActionPlayAnimation(35, 1.0, (-1.0)));
	}
}

void main() {
	if ((GetGlobalNumber("101PER_Sion_Arrives") == 0)) {
		object oKreia = GetObjectByTag("Kreia", 0);
		SetLocalBoolean(oKreia, 55, 1);
		DelayCommand(3.0, sub1());
	}
}
