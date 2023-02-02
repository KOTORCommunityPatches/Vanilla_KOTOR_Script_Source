// Prototypes
void sub3();
string sub2(int intParam1);
void sub1(int intParam1);

void sub3() {
	RemoveNPCFromPartyToBase(0);
}

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
	AurPostString("CLEARING PARTY FROM MAP!", 5, 20, 10.0);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	int int1 = 0;
	while ((int1 < 12)) {
		sub1(int1);
		(int1++);
	}
	SetAreaUnescapable(1);
	DelayCommand(0.5, sub3());
	SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
}
