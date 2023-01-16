void main() {
	
	object oPM0 = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	
	ActionPauseConversation();
	
	if (GetIsObjectValid(oPM0))
		{
			AssignCommand(oPM0, ClearAllActions());
			AssignCommand(oPM0, ActionPlayAnimation(ANIMATION_LOOPING_PRONE, 1.0, 30.0));
		}
	
	if (GetIsObjectValid(oPM1))
		{
			AssignCommand(oPM1, ClearAllActions());
			DelayCommand(0.5, AssignCommand(oPM1, ActionPlayAnimation(ANIMATION_LOOPING_PRONE, 1.0, 30.0)));
		}
	
	if (GetIsObjectValid(oPM2))
		{
			AssignCommand(oPM2, ClearAllActions());
			DelayCommand(1.0, AssignCommand(oPM2, ActionPlayAnimation(ANIMATION_LOOPING_PRONE, 1.0, 30.0)));
		}
	
	ActionWait(3.0);
	ActionResumeConversation();
}
