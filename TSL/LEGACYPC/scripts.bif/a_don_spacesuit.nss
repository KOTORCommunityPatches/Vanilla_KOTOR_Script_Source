// Prototypes
void sub1();

void sub1() {
	int nPartyCount = GetPartyMemberCount();
	int int3;
	effect effect1 = EffectDisguise(279);
	int3 = 0;
	while ((int3 < nPartyCount)) {
		{
			object oNPC = GetPartyMemberByIndex(int3);
			ApplyEffectToObject(2, effect1, oNPC, 0.0);
		}
		(int3++);
	}
}

void main() {
	sub1();
}

