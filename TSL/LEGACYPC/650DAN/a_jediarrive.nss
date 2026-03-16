void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	SetLockOrientationInDialog(oKreia, 0);
	object oKavar = GetObjectByTag("Kavar", 0);
	object oVrook = GetObjectByTag("Vrook", 0);
	object oZezKaiEll = GetObjectByTag("ZezKaiEll", 0);
	object object9 = OBJECT_INVALID;
	if (GetIsObjectValid(oKavar)) {
		object9 = oKavar;
	}
	else {
		if (GetIsObjectValid(oVrook)) {
			object9 = oVrook;
		}
		else {
			if (GetIsObjectValid(oZezKaiEll)) {
				object9 = oZezKaiEll;
			}
		}
	}
	if (GetIsObjectValid(object9)) {
		AssignCommand(object9, ClearAllActions());
		AssignCommand(object9, ActionStartConversation(GetPCSpeaker(), "650Jedi", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		object9 = GetObjectByTag("Kreia", 0);
		if (GetIsObjectValid(object9)) {
			AssignCommand(object9, ClearAllActions());
			SetLocalBoolean(object9, 30, 1);
			AssignCommand(object9, ActionStartConversation(GetFirstPC(), "krealone", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

