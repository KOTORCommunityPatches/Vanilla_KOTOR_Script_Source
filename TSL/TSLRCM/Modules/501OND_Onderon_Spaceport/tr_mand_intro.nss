void main() {
	SetForceAlwaysUpdate(GetObjectByTag("talia", 0), 0);
	SetForceAlwaysUpdate(GetObjectByTag("kavar", 0), 0);
	SetForceAlwaysUpdate(GetObjectByTag("talia_look", 0), 0);
	AssignCommand(GetObjectByTag("fake_mand", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}