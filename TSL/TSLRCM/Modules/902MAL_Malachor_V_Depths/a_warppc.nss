void main() {
	AssignCommand(GetFirstPC(), ActionJumpToObject(GetWaypointByTag("FROM_901MAL"), 1));
	SetGlobalFadeIn(1.0, 5.0, 0.0, 0.0, 0.0);
}