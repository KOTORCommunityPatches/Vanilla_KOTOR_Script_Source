// Prototypes
object sub1(string stringParam1, int intParam2);

object sub1(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	object oSoldier_salute;
	object oSw_exit2;
	int int3;
	switch (nParam1) {
		case 0:
			oSoldier_salute = GetObjectByTag("va_officer", 0);
			oSw_exit2 = GetObjectByTag("wp_dark_officer", 0);
			AssignCommand(oSoldier_salute, ActionMoveToObject(oSw_exit2, 0, 1.0));
			oSoldier_salute = GetObjectByTag("tobin", 0);
			oSw_exit2 = GetObjectByTag("wp_dark_tobin", 0);
			AssignCommand(oSoldier_salute, ActionMoveToObject(oSw_exit2, 0, 1.0));
			break;
		case 1:
			sub1("npc_vaklu", 0);
			break;
		case 2:
			oSoldier_salute = GetObjectByTag("vaklu", 0);
			oSw_exit2 = GetObjectByTag("wp_dark_vaklu", 0);
			AssignCommand(oSoldier_salute, ActionMoveToObject(oSw_exit2, 0, 1.0));
			int3 = 104;
			oSoldier_salute = GetObjectByTag("soldier_salute", 0);
			DelayCommand(1.8, AssignCommand(oSoldier_salute, PlayAnimation(int3, 1.0, 0.0)));
			oSoldier_salute = GetObjectByTag("soldier_salute", 1);
			DelayCommand(2.8, AssignCommand(oSoldier_salute, PlayAnimation(int3, 1.0, 0.0)));
			oSoldier_salute = GetObjectByTag("soldier_salute", 2);
			DelayCommand(3.8, AssignCommand(oSoldier_salute, PlayAnimation(int3, 1.0, 0.0)));
			oSoldier_salute = GetObjectByTag("soldier_salute", 3);
			DelayCommand(4.8, AssignCommand(oSoldier_salute, PlayAnimation(int3, 1.0, 0.0)));
			break;
		case 3:
			oSw_exit2 = GetObjectByTag("sw_exit2", 0);
			oSoldier_salute = GetObjectByTag("vaklu", 0);
			AssignCommand(oSoldier_salute, ActionMoveToObject(oSw_exit2, 0, 1.0));
			oSoldier_salute = GetObjectByTag("tobin", 0);
			AssignCommand(oSoldier_salute, ActionMoveToObject(oSw_exit2, 0, 1.0));
			int3 = 104;
			oSoldier_salute = GetObjectByTag("soldier_salute", 3);
			DelayCommand(0.8, AssignCommand(oSoldier_salute, PlayAnimation(int3, 1.0, 0.0)));
			oSoldier_salute = GetObjectByTag("soldier_salute", 2);
			DelayCommand(1.8, AssignCommand(oSoldier_salute, PlayAnimation(int3, 1.0, 0.0)));
			oSoldier_salute = GetObjectByTag("soldier_salute", 1);
			DelayCommand(2.8, AssignCommand(oSoldier_salute, PlayAnimation(int3, 1.0, 0.0)));
			oSoldier_salute = GetObjectByTag("soldier_salute", 0);
			DelayCommand(3.8, AssignCommand(oSoldier_salute, PlayAnimation(int3, 1.0, 0.0)));
			break;
		case 4:
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(0.5, 1.5, 0.0, 0.0, 0.0);
			oSoldier_salute = GetObjectByTag("va_officer", 0);
			AssignCommand(oSoldier_salute, ClearAllActions());
			DelayCommand(0.1, AssignCommand(oSoldier_salute, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			oSoldier_salute = GetObjectByTag("vaklu", 0);
			AssignCommand(oSoldier_salute, ClearAllActions());
			DestroyObject(oSoldier_salute, 0.0, 1, 0.0, 0);
			oSoldier_salute = GetObjectByTag("tobin", 0);
			AssignCommand(oSoldier_salute, ClearAllActions());
			DelayCommand(0.2, DestroyObject(oSoldier_salute, 0.0, 1, 0.0, 0));
			break;
	}
}

