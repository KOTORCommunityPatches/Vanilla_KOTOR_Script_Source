struct structtype1 {
	float float1;
	float float3;
};

void main() {
	ActionPauseConversation();
	SetGlobalFadeOut(0.0, 8.0, 0.0, 0.0, 0.0);
	AssignCommand(GetFirstPC(), ActionMoveToLocation(Location(Vector(0.21135, (-18.8657), 0.4746), 0.0), 0));
	DelayCommand(6.0, ActionResumeConversation());
}

