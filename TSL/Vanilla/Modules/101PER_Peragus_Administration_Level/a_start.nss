void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	object oPC = GetFirstPC();
	AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_start", 0))));
	SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
	AurPostString("Stopping Background Music", 5, 5, 5.0);
	MusicBackgroundStop(GetArea(OBJECT_SELF));
	DelayCommand(10.0, AurPostString("Playing Background Music", 5, 5, 5.0));
	DelayCommand(10.0, MusicBackgroundPlay(GetArea(OBJECT_SELF)));
}
