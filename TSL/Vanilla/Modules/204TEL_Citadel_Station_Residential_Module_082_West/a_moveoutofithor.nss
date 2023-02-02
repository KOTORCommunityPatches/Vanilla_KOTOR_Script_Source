void main() {
	object oWp_leavingithorian = GetObjectByTag("wp_leavingithorian", 0);
	ActionPauseConversation();
	AssignCommand(GetFirstPC(), ActionMoveToObject(oWp_leavingithorian, 0, 1.0));
	AssignCommand(GetNextPC(), ActionMoveToObject(oWp_leavingithorian, 0, 1.0));
	AssignCommand(GetNextPC(), ActionMoveToObject(oWp_leavingithorian, 0, 1.0));
	ActionResumeConversation();
}
