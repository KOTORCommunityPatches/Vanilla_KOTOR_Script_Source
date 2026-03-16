// Prototypes
void sub2(string stringParam1, string stringParam2);
void sub1();

void sub2(string stringParam1, string stringParam2) {
	SetSoloMode(0);
	SetPartyLeader(0xFFFFFFFF);
	DelayCommand(0.2, StartNewModule(stringParam1, stringParam2, "", "", "", "", "", ""));
}

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
	switch (GetUserDefinedEventNumber()) {
		case 1:
			AurPostString("INSIDE EVENT CODE", 15, 15, 10.0);
			sub1();
			if (((GetGlobalNumber("301NAR_T3_Sold") > 0) && (GetGlobalNumber("303NAR_T3_Mission") == 0))) {
				DelayCommand(2.0, sub2("301nar", "WP_from_ebonhawk"));
			}
			else {
				DelayCommand(2.0, sub2("003ebo", "WP_from_outside"));
			}
			return;
	}
}

