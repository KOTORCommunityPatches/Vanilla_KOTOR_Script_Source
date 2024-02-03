void main() {
	object oHK517 = GetObjectByTag("HK517", 0);
	object oForce_Field_51 = GetObjectByTag("Force Field 51", 0);
	AssignCommand(oHK517, ClearAllActions());
	AssignCommand(oForce_Field_51, ActionOpenDoor(oForce_Field_51));
	ActionPauseConversation();
	DelayCommand(0.2, AssignCommand(oHK517, ActionForceMoveToObject(GetObjectByTag("WP_HK51_END1_1", 0), 0, 1.0, 30.0)));
	DelayCommand(5.0, ActionResumeConversation());
}

