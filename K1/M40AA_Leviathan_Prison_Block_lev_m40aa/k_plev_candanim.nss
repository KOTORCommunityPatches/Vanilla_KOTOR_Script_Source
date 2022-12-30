void JumpAnim() {
	ClearAllActions();
	ActionJumpToObject(GetObjectByTag("lev40_wpcand", 0), FALSE);
	ActionPlayAnimation(ANIMATION_FIREFORGET_ACTIVATE);
	ActionDoCommand(SetCommandable(TRUE, OBJECT_SELF));
	SetCommandable(FALSE, OBJECT_SELF);
}

void main() {
	
	AssignCommand(GetFirstPC(), JumpAnim());
	
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}
