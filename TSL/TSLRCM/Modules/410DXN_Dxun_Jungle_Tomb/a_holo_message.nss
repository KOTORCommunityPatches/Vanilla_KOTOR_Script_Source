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
	int nParam2 = GetScriptParameter(2);
	object oSec_terminal = GetObjectByTag("sec_terminal", 0);
	object oHolo_captain = GetObjectByTag("holo_captain", 0);
	if (GetIsObjectValid(oHolo_captain)) {
		DestroyObject(oHolo_captain, 0.0, 0, 0.0, 0);
	}
	else {
		oHolo_captain = sub1("holo_captain", 0);
	}
	switch (nParam1) {
		case 0:
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(4.0, 1.0, 0.0, 0.0, 0.0);
			SetLocalBoolean(oSec_terminal, nParam2, 1);
			SetLocalBoolean(oHolo_captain, nParam2, 1);
			SetLockHeadFollowInDialog(oHolo_captain, 1);
			SetLockOrientationInDialog(oHolo_captain, 1);
			DelayCommand(4.0, AssignCommand(oHolo_captain, ActionStartConversation(GetFirstPC(), "holo_cap", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			break;
		case 1:
			SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			AssignCommand(GetFirstPC(), ClearAllActions());
			AssignCommand(GetFirstPC(), ActionStartConversation(oSec_terminal, "sec_term", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			break;
	}
}