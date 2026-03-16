// Prototypes
void sub1();

void sub1() {
	int int1 = 0;
	while ((int1 < 3)) {
		{
			object oNPC = GetPartyMemberByIndex(int1);
			if (GetIsObjectValid(oNPC)) {
			if ((GetCurrentHitPoints(oNPC) <= 0)) {
				effect efResurrect = EffectResurrection(100);
				ApplyEffectToObject(0, efResurrect, oNPC, 0.0);
			}
			}
		}
		(int1++);
	}
}

void main() {
	SetGlobalNumber("500OND_Turret", 1);
	if (GetIsXBox()) {
		StartNewModule("505OND", "", "", "", "", "", "", "");
	}
	else {
		sub1();
		SetSoloMode(0);
		SetPartyLeader(0xFFFFFFFF);
		DelayCommand(0.2, StartNewModule("505OND", "", "", "", "", "", "", ""));
	}
}

