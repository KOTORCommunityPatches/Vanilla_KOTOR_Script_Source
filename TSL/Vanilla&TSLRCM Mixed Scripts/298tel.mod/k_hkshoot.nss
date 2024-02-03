void main() {
	object oHK50cs = GetObjectByTag("HK50cs", 0);
	if ((GetEnteringObject() == GetFirstPC())) {
		return;
	}
	if ((GetGlobalNumber("298TEL_Reactor_Down") == 1)) {
		if ((!GetIsConversationActive())) {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			AssignCommand(GetObjectByTag("HK47", 0), ActionForceMoveToObject(GetObjectByTag("WP_HKTRIG_SHOOT", 0), 0, 0.1, 0.5));
			DelayCommand(0.75, AssignCommand(oHK50cs, ActionStartConversation(GetFirstPC(), "hk50cut", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
		}
	}
}

