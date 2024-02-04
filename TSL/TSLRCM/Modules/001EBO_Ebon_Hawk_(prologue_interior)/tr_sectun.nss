void main() {
	object oCont_tunnel = GetObjectByTag("cont_tunnel", 0);
	AssignCommand(oCont_tunnel, ActionStartConversation(GetFirstPC(), "sectun", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}