void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	object oXarga = GetObjectByTag("xarga", 0);
	SetLocalBoolean(oXarga, 52, 1);
	AssignCommand(oXarga, ClearAllActions());
	DelayCommand(0.1, AssignCommand(oXarga, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

