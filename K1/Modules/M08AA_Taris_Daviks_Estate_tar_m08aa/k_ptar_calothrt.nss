void main() {
	
	CreateObject(OBJECT_TYPE_PLACEABLE, "rfl001", GetLocation(OBJECT_SELF));
	
	ActionPauseConversation();
	
	ActionPlayAnimation(ANIMATION_FIREFORGET_USE_COMPUTER, 1.0, 0.0);
	ActionPlayAnimation(ANIMATION_FIREFORGET_USE_COMPUTER, 1.0, 0.0);
	ActionPlayAnimation(ANIMATION_FIREFORGET_USE_COMPUTER, 1.0, 0.0);
	
	ActionResumeConversation();
}
