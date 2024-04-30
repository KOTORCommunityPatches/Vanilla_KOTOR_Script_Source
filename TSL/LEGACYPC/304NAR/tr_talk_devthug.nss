void main() {
	AurPostString("tr_talk_devthug: Entered trigger..", 5, 4, 2.0);
	if ((GetGlobalNumber("304NAR_Visquis_Meet") > 1)) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((GetPartyLeader() != oEntering)) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 34)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 34, 1);
	object oNearestDevThug = GetNearestObjectByTag("DevThug", OBJECT_SELF, 1);
	AssignCommand(oNearestDevThug, ClearAllActions());
	AssignCommand(oNearestDevThug, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

