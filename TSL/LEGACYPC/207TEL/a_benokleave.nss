void main() {
	object oWp_exitcantina = GetObjectByTag("wp_exitcantina", 0);
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("207_benok", 0), ActionMoveToObject(oWp_exitcantina, 0, 1.0));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("207_matu", 0), ActionMoveToObject(oWp_exitcantina, 0, 1.0)));
	DelayCommand(0.4, AssignCommand(GetObjectByTag("207_nahata", 0), ActionMoveToObject(oWp_exitcantina, 0, 1.0)));
	DelayCommand(7.0, DestroyObject(GetObjectByTag("207_benok", 0), 0.0, 1, 0.0, 0));
	DelayCommand(7.0, DestroyObject(GetObjectByTag("207_matu", 0), 0.0, 1, 0.0, 0));
	DelayCommand(7.0, DestroyObject(GetObjectByTag("207_nahata", 0), 0.0, 1, 0.0, 0));
	ActionResumeConversation();
}

