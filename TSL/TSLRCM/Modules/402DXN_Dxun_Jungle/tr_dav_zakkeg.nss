void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((GetGlobalNumber("402DXN_Davrel_Fate") != 3)) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
	object oNpc_davrel = GetObjectByTag("npc_davrel", 0);
	AssignCommand(oNpc_davrel, SetCommandable(1, OBJECT_SELF));
	AssignCommand(oNpc_davrel, ClearAllActions());
	AssignCommand(oNpc_davrel, ActionJumpToObject(GetObjectByTag("sw_exit1", 0), 1));
	DelayCommand(0.2, AssignCommand(oNpc_davrel, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}