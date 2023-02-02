void main() {
	object oMedben = GetObjectByTag("Medben", 0);
	vector vPosition = GetPosition(oMedben);
	ClearAllActions();
	ActionPauseConversation();
	DelayCommand(0.3, AssignCommand(GetPCSpeaker(), SetFacingPoint(vPosition)));
	DelayCommand(1.0, ActionResumeConversation());
}
