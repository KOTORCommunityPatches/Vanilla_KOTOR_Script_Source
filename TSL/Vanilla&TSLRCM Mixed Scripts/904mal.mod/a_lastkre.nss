struct structtype1 {
	float float1;
	float float3;
};

void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	ActionPauseConversation();
	AssignCommand(GetFirstPC(), ActionJumpToLocation(Location(Vector(0.009343147, 0.33124018, 2.2579389), 1.3198074)));
	DelayCommand(2.0, ActionResumeConversation());
}

