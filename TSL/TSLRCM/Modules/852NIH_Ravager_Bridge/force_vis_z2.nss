void main() {
	object oPC = GetFirstPC();
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			ActionPauseConversation();
			RemovePartyMember(9);
			AssignCommand(oVisasMarr, ClearAllActions());
			AssignCommand(oVisasMarr, ClearAllEffects());
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oPC, ClearAllEffects());
			DelayCommand(0.5, AssignCommand(oPC, ActionPlayAnimation(121, 1.0, 3.5)));
			DelayCommand(0.5, ApplyEffectToObject(1, EffectChoke(), oVisasMarr, 3.5));
			DelayCommand(4.0, ActionResumeConversation());
			break;
		case 1:
			ActionPauseConversation();
			RemovePartyMember(9);
			AssignCommand(oVisasMarr, ClearAllActions());
			AssignCommand(oVisasMarr, ClearAllEffects());
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oPC, ClearAllEffects());
			DelayCommand(0.5, AssignCommand(oPC, ActionPlayAnimation(121, 1.0, 3.5)));
			DelayCommand(0.5, ApplyEffectToObject(1, EffectVisualEffect(1012, 0), oVisasMarr, 3.5));
			DelayCommand(4.0, ActionResumeConversation());
			break;
		case 2:
			ChangeToStandardFaction(oVisasMarr, 5);
			AssignCommand(oVisasMarr, ActionPlayAnimation(26, 1.0, (-1.0)));
			break;
		case 3:
			AssignCommand(oVisasMarr, ActionJumpToObject(GetObjectByTag("sp_visas", 0), 1));
			break;
		case 4:
			RemovePartyMember(9);
			break;
	}
}