// Prototypes
string sub2(int intParam1);
void sub1(int intParam1);

string sub2(int intParam1) {
	switch (intParam1) {
		case 0:
			return "atton";
			break;
		case 1:
			return "baodur";
			break;
		case 2:
			return "mand";
			break;
		case 11:
			return "disciple";
			break;
		case 3:
			return "g0t0";
			break;
		case 4:
			return "handmaiden";
			break;
		case 10:
			return "hanharr";
			break;
		case 5:
			return "hk47";
			break;
		case 6:
			return "kreia";
			break;
		case 7:
			return "mira";
			break;
		case 8:
			return "t3m4";
			break;
		case 9:
			return "visasmarr";
			break;
	}
	return "ERROR";
}

void sub1(int intParam1) {
	string string1 = sub2(intParam1);
	object object1 = GetObjectByTag(string1, 0);
	if ((GetIsObjectValid(object1) && (intParam1 != 0))) {
		if (IsObjectPartyMember(object1)) {
			RemoveNPCFromPartyToBase(intParam1);
		}
		else {
			DestroyObject(object1, 0.0, 1, 0.0, 0);
		}
	}
}

void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	SetGlobalNumber("300NAR_Bounty_Attack", 2);
	ChangeToStandardFaction(GetObjectByTag("ZThug1", 0), 1);
	ChangeToStandardFaction(GetObjectByTag("ZThug2", 0), 1);
	ChangeToStandardFaction(GetObjectByTag("Azanti", 0), 1);
	SetGlobalBoolean("303NAR_SWITCH_TO_PC", 1);
	AurPostString("CLEARING PARTY FROM MAP!", 5, 20, 10.0);
	int int1 = 1;
	while ((int1 < 12)) {
		sub1(int1);
		(int1++);
	}
	SetAreaUnescapable(1);
	SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
	DestroyObject(GetObjectByTag("ZThug1", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("ZThug2", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("Azanti", 0), 0.0, 0, 0.0, 0);
	SetGlobalBoolean("301NAR_Zhug_Attack", 0);
	if ((GetGlobalNumber("303NAR_Hanharr_Side") == 1)) {
		StartNewModule("303NAR", "WP_PC_HAN_JEKK_0", "", "", "", "", "", "");
	}
	else {
		StartNewModule("303NAR", "WP_PC_MIRA_APT_0", "", "", "", "", "", "");
	}
	return;
}
