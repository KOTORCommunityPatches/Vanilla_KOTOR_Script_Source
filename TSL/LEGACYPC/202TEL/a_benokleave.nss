void main() {
	object oWp_exitcantina = GetObjectByTag("wp_exitcantina", 0);
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("202_benok", 0), ActionMoveToObject(oWp_exitcantina, 0, 1.0));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("202_matu", 0), ActionMoveToObject(oWp_exitcantina, 0, 1.0)));
	DelayCommand(0.4, AssignCommand(GetObjectByTag("202_nahata", 0), ActionMoveToObject(oWp_exitcantina, 0, 1.0)));
	DelayCommand(9.0, DestroyObject(GetObjectByTag("202_benok", 0), 0.0, 0, 0.0, 0));
	DelayCommand(9.0, DestroyObject(GetObjectByTag("202_matu", 0), 0.0, 0, 0.0, 0));
	DelayCommand(9.0, DestroyObject(GetObjectByTag("202_nahata", 0), 0.0, 0, 0.0, 0));
	ActionResumeConversation();
}

