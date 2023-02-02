void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	object oG_DARKJEDI04 = GetObjectByTag("va_speaker_1", 0);
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 0)) {
		AssignCommand(oG_DARKJEDI04, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		oG_DARKJEDI04 = GetObjectByTag("G_DARKJEDI04", 0);
		AssignCommand(oG_DARKJEDI04, ActionStartConversation(oEntering, "si_sold1", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
