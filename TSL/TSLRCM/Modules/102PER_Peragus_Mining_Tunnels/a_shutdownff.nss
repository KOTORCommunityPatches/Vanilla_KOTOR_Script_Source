void main() {
	ActionPauseConversation();
	object oFFDoor1 = GetObjectByTag("FFDoor1", 0);
	object oFFDoor2 = GetObjectByTag("FFDoor2", 0);
	object oFFDoor3 = GetObjectByTag("FFDoor3", 0);
	object oFFDoor4 = GetObjectByTag("FFDoor4", 0);
	DelayCommand(0.3, PlaySound("evt_stasisoff"));
	DelayCommand(0.3, ActionOpenDoor(oFFDoor1));
	DelayCommand(0.3, ActionOpenDoor(oFFDoor2));
	DelayCommand(0.3, ActionOpenDoor(oFFDoor3));
	DelayCommand(0.3, ActionOpenDoor(oFFDoor4));
	DelayCommand(4.0, ActionResumeConversation());
}