void main() {
	if ((GetEnteringObject() != GetFirstPC())) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	object oKavar = GetObjectByTag("Kavar", 0);
	object oVrook = GetObjectByTag("Vrook", 0);
	object oZezKaiEll = GetObjectByTag("ZezKaiEll", 0);
	object oKreia = OBJECT_INVALID;
	if (GetIsObjectValid(oKavar)) {
		oKreia = oKavar;
	}
	else {
		if (GetIsObjectValid(oVrook)) {
			oKreia = oVrook;
		}
		else {
			if (GetIsObjectValid(oZezKaiEll)) {
				oKreia = oZezKaiEll;
			}
		}
	}
	if (GetIsObjectValid(oKreia)) {
		AssignCommand(oKreia, ClearAllActions());
		AssignCommand(oKreia, ActionStartConversation(GetPCSpeaker(), "650Jedi", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		oKreia = GetObjectByTag("Kreia", 0);
		if (GetIsObjectValid(oKreia)) {
			AssignCommand(oKreia, ClearAllActions());
			SetLocalBoolean(oKreia, 30, 1);
			AssignCommand(oKreia, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

