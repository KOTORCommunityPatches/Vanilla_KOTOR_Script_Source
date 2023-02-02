// Prototypes
void sub2();
void sub1();

void sub2() {
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
	int int1 = 0;
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	effect efNext = GetFirstEffect(oNPC);
	while ((GetIsEffectValid(efNext) == 1)) {
		if ((GetEffectType(efNext) == 62)) {
			int1 = (int1 + 1);
		}
		efNext = GetNextEffect(oNPC);
	}
	if ((GetIsObjectValid(object3) == 1)) {
		efNext = GetFirstEffect(object3);
		while ((GetIsEffectValid(efNext) == 1)) {
			if ((GetEffectType(efNext) == 62)) {
				int1 = (int1 + 1);
			}
			efNext = GetNextEffect(object3);
		}
	}
	if ((GetIsObjectValid(object5) == 1)) {
		efNext = GetFirstEffect(object5);
		while ((GetIsEffectValid(efNext) == 1)) {
			if ((GetEffectType(efNext) == 62)) {
				int1 = (int1 + 1);
			}
			efNext = GetNextEffect(object5);
		}
	}
	if ((int1 == 0)) {
		sub1();
	}
	else {
		sub2();
	}
}
