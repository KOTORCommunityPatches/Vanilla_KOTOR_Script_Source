void main() {
	
	object oStampy = GetObjectByTag("tar05_stampy", 0);
	object oCorpsePile = GetObjectByTag("tar05_corpsepile", 0);
	
	ActionPauseConversation();
	AssignCommand(oStampy, ActionPlayAnimation(ANIMATION_FIREFORGET_CUSTOM01));
	PlaySound("c_rancor_atk1");
	ActionWait(3.0);
	ActionResumeConversation();
}