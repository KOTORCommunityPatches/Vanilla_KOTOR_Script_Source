// Prototypes
void sub1();

void sub1() {
	object object1;
	int nPartyCount = GetPartyMemberCount();
	int int3;
	effect effect1 = EffectDisguise(181);
	int3 = 0;
	while ((int3 < nPartyCount)) {
		ApplyEffectToObject(2, effect1, GetPartyMemberByIndex(int3), 0.0);
		(int3++);
	}
}

void main() {
	sub1();
}

