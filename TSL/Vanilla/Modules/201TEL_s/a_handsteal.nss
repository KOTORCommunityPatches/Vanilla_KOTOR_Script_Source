void main() {
	object oHandmaiden = GetObjectByTag("handmaiden", 0);
	if (GetIsObjectValid(oHandmaiden)) {
		object oRWeapItem = GetItemInSlot(4, oHandmaiden);
		if (GetIsObjectValid(oRWeapItem)) {
			AssignCommand(oHandmaiden, ActionUnequipItem(oRWeapItem, 0));
		}
	}
	ActionPauseConversation();
	SetGlobalFadeIn(2.0, 2.5, 0.0, 0.0, 0.0);
	DelayCommand(2.0, AssignCommand(GetObjectByTag("handmaiden", 0), ActionMoveToObject(GetObjectByTag("wp_handmaiden", 0), 0, 1.0)));
	DelayCommand(5.0, ActionResumeConversation());
}

