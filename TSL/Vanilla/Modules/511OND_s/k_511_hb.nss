// Prototypes
object sub3(string stringParam1, int intParam2);
void sub2();
int sub1();

object sub3(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void sub2() {
	object oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, 1);
	while (GetIsObjectValid(oAreaObject)) {
		if ((GetStandardFaction(oAreaObject) == 2)) {
			AssignCommand(oAreaObject, ClearAllActions());
			DestroyObject(oAreaObject, 0.0, 1, 0.0, 0);
		}
		oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
	}
}

int sub1() {
	int int1;
	object oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, 1);
	while (GetIsObjectValid(oAreaObject)) {
		if ((GetStandardFaction(oAreaObject) == 1)) {
			(int1++);
		}
		oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
	}
	return int1;
}

void main() {
	object oTo_504 = GetObjectByTag("To_504", 0);
	object object3;
	object oWp_dark_pc;
	if (((GetGlobalNumber("500OND_DarkSide_Iziz") == 1) && (!GetLocalBoolean(oTo_504, 42)))) {
		if ((sub1() == 0)) {
			SetLocalBoolean(oTo_504, 42, 1);
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
			sub2();
			oWp_dark_pc = GetObjectByTag("wp_dark_pc", 0);
			AurPostString("Jumping PC", 5, 5, 5.0);
			AssignCommand(GetFirstPC(), ClearAllActions());
			AssignCommand(GetFirstPC(), ActionJumpToObject(oWp_dark_pc, 1));
			sub3("va_officer", 0);
			sub3("soldier_salute", 1);
			sub3("soldier_salute", 2);
			sub3("soldier_salute", 3);
			sub3("soldier_salute", 4);
			object3 = sub3("npc_tobin", 0);
			DelayCommand(0.5, AssignCommand(object3, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		}
	}
}

