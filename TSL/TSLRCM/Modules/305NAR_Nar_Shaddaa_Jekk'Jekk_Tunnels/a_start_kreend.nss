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
	sub1("GenoDisc");
	object oKreia = GetObjectByTag("Kreia", 0);
	AssignCommand(oKreia, ActionJumpToObject(GetObjectByTag("WP_END_KREIA_APPEAR", 0), 0));
	DelayCommand(0.7, ActionStartConversation(oKreia, "305kreia", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}