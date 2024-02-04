void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((GetLocalBoolean(GetObjectByTag("anc_terminal", 0), 50) && (!GetLocalBoolean(OBJECT_SELF, 41)))) {
		DelayCommand(0.2, AssignCommand(GetObjectByTag("ritual_leader", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		SetLocalBoolean(OBJECT_SELF, 41, 1);
	}
	else {
		if ((((!GetLocalBoolean(GetObjectByTag("anc_terminal", 0), 50)) && GetSpellAcquired(178, oEntering)) && (!GetLocalBoolean(OBJECT_SELF, 40)))) {
			AssignCommand(oEntering, ActionStartConversation(OBJECT_SELF, "sarcv", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			SetLocalBoolean(OBJECT_SELF, 40, 1);
		}
	}
}