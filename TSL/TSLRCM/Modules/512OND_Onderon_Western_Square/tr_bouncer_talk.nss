void main() {
	object oCan_bouncer = GetObjectByTag("can_bouncer", 0);
	if (GetLocalBoolean(oCan_bouncer, 40)) {
		return;
	}
	SetLocalBoolean(oCan_bouncer, 40, 1);
	AssignCommand(oCan_bouncer, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}