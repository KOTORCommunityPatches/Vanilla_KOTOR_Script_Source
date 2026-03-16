// Prototypes
void sub2();
void sub1();

void sub2() {
	SetSoloMode(0);
	SetPartyLeader(0xFFFFFFFF);
	DelayCommand(0.2, StartNewModule("107PER", "", "", "", "", "", "", ""));
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
	int nGlobal = GetGlobalNumber("107PER_MG_EBON");
	object oSecurity = GetObjectByTag("security", 0);
	if ((!GetIsObjectValid(oSecurity))) {
		AurPostString("No security computer present!", 5, 15, 10.0);
		return;
	}
	if ((!GetLocalBoolean(oSecurity, 29))) {
		SetLocalBoolean(oSecurity, 29, 1);
		BarkString(OBJECT_INVALID, 113783, (-1), 200);
		DelayCommand(3.0, ExecuteScript("a_sith_bark", oSecurity, 0xFFFFFFFF));
	}
	if ((nGlobal > 1)) {
		SetCustomToken(30, IntToString(nGlobal));
		BarkString(OBJECT_INVALID, 113781, (-1), 200);
	}
	else {
		if ((nGlobal == 1)) {
			BarkString(OBJECT_INVALID, 113782, (-1), 200);
		}
		else {
			BarkString(OBJECT_INVALID, 113784, (-1), 200);
			sub1();
			DelayCommand(5.0, sub2());
		}
	}
}

