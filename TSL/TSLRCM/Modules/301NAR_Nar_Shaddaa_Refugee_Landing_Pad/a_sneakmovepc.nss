void main() {
	SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
	AssignCommand(GetPCSpeaker(), ClearAllActions());
	DelayCommand(0.6, AssignCommand(GetPCSpeaker(), ActionJumpToLocation(GetLocation(GetObjectByTag("WP_SNEAK_MOVE", 0)))));
	SetGlobalFadeIn(0.7, 0.5, 0.0, 0.0, 0.0);
}