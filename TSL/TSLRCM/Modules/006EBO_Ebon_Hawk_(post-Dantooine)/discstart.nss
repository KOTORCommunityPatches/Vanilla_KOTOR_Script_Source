void main() {
	AssignCommand(GetObjectByTag("Disciple", 0), ActionStartConversation(GetFirstPC(), "discadm", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
}