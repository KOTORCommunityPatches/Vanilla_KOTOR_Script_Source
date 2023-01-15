void main() {
	int nParam1 = GetScriptParameter(1);
	object oPC = GetFirstPC();
	object object3 = GetNextPC();
	object object5 = GetNextPC();
	switch (nParam1) {
		case 0:
			AurPostString("a_tomb: 0", 5, 5, 1.0);
			AssignCommand(oPC, ClearAllActions());
			{
				effect effect1 = EffectMovementSpeedDecrease(15);
				ApplyEffectToObject(1, effect1, oPC, 2.0);
				DelayCommand(1.0, AssignCommand(oPC, ActionMoveToObject(GetObjectByTag("wp_tomb", 0), 0, 1.0)));
			}
			break;
		case 1:
			AurPostString("a_tomb: 1", 5, 5, 1.0);
			break;
		case 2:
			AurPostString("a_tomb: 2", 5, 5, 1.0);
			ActionPauseConversation();
			AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("sp_leave_pc", 0), 1));
			AssignCommand(object3, ClearAllActions());
			AssignCommand(object3, ActionJumpToObject(GetObjectByTag("wp_cnpc1", 0), 1));
			AssignCommand(object5, ClearAllActions());
			AssignCommand(object5, ActionJumpToObject(GetObjectByTag("wp_cnpc2", 0), 1));
			AssignCommand(oPC, ActionMoveToObject(GetObjectByTag("wp_leave_pc", 0), 0, 1.0));
			SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
			SetDialogPlaceableCamera(2);
			DelayCommand(3.0, ActionResumeConversation());
			break;
		case 3:
			AurPostString("a_tomb: 3", 5, 5, 1.0);
			ActionPauseConversation();
			AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_tomb_enter_pc", 0), 0, 1.0));
			DelayCommand(7.0, ActionResumeConversation());
			DelayCommand(7.0, StartNewModule("711KOR", "From_710KOR", "", "", "", "", "", ""));
			{
				int int3 = 0;
				int3 = 0;
				while ((int3 < 12)) {
				if (IsNPCPartyMember(int3)) {
					RemoveNPCFromPartyToBase(int3);
				}
					(int3++);
				}
				object oKreia_invis = GetObjectByTag("kreia_invis", 0);
				SetLocalBoolean(oKreia_invis, 55, 1);
			}
			break;
	}
}

