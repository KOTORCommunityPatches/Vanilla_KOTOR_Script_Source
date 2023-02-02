// Prototypes
void sub1();

void sub1() {
	int int1 = 62;
	object oNPC;
	effect efNext;
	int nPartyCount = GetPartyMemberCount();
	int int4 = 0;
	while ((int4 < nPartyCount)) {
		oNPC = GetPartyMemberByIndex(int4);
		efNext = GetFirstEffect(oNPC);
		while (GetIsEffectValid(efNext)) {
			if ((GetEffectType(efNext) == int1)) {
				RemoveEffect(oNPC, efNext);
			}
			efNext = GetNextEffect(oNPC);
		}
		(int4++);
	}
}

void main() {
	sub1();
	SetPlayerRestrictMode(0);
}
