void main() {
	object oHK50cs = GetObjectByTag("HK50cs", 0);
	if ((GetGlobalNumber("298TEL_Reactor_Down") == 1)) {
		AssignCommand(oHK50cs, ClearAllActions());
		AssignCommand(oHK50cs, ActionStartConversation(GetFirstPC(), "hk50shoot", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0);
	}
}