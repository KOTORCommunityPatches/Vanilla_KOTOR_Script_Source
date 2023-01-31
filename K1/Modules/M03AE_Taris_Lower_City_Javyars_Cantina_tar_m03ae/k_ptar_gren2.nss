void main() {

	string sGren = "flash_gren";
	location lGren = GetLocation(GetObjectByTag("GRENADE_WP", 0));
	
	ActionPauseConversation();
	
	CreateItemOnFloor(sGren, lGren);
	
	DelayCommand(0.8, ActionResumeConversation());
}