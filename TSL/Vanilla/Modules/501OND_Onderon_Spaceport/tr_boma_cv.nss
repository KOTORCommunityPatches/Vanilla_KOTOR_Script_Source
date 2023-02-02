void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPC(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	if (GetSpellAcquired(178, oEntering)) {
		AssignCommand(oEntering, ActionStartConversation(OBJECT_SELF, "bomacv", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		SetLocalBoolean(GetObjectByTag("xarga", 0), 41, 1);
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
}
