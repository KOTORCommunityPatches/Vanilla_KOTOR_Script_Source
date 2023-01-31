void main() {
	
	if (GetDistanceBetween(OBJECT_SELF, GetPCSpeaker()) < 1.5)
		{
			ActionMoveAwayFromObject(GetPCSpeaker(), TRUE, 1.5);
		}
	
	ActionPauseConversation();
	ActionWait(0.4);
	ActionResumeConversation();
}