void main() {
	
	object oObject;
	object oSelf = OBJECT_SELF;
	
	AssignCommand(GetPCSpeaker(), ActionPlayAnimation(ANIMATION_LOOPING_GET_LOW, 1.0, 1.0));
	
	CreateObject(OBJECT_TYPE_CREATURE, "g_gizka016", GetLocation(oSelf));
	
	ActionPauseConversation();
	ActionWait(1.0);
	ActionResumeConversation();
}
