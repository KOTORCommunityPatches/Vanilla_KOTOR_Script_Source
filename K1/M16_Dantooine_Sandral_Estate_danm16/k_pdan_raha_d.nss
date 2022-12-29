void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 40)
		{
			ActionPauseConversation();
			
			ActionJumpToObject(GetObjectByTag("dan16_raha01", 0));
			ActionForceMoveToObject(GetObjectByTag("from14db", 0), TRUE, 1.0, 6.0);
			
			ActionResumeConversation();
			
			ActionDoCommand(DestroyObject(OBJECT_SELF));
			SetCommandable(FALSE, OBJECT_SELF);
		}
}
