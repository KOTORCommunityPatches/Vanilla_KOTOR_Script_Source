void main() {
	ActionPauseConversation();
	DestroyObject(GetNearestObjectByTag("mal_blocker", OBJECT_SELF, 1), 0.0, 0, 0.0, 0);
	DelayCommand(2.0, AssignCommand(GetNearestObjectByTag("mal_prsncages", OBJECT_SELF, 1), ActionPlayAnimation(202, 1.0, 0.0)));
	DelayCommand(3.0, ActionResumeConversation());
}

