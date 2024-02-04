void main() {
	object oWP_EMER_HATCH = GetObjectByTag("WP_EMER_HATCH", 0);
	MusicBackgroundChangeDay(GetArea(OBJECT_SELF), 59, 0);
	MusicBackgroundChangeNight(GetArea(OBJECT_SELF), 59, 0);
	AssignCommand(GetPCSpeaker(), ActionJumpToLocation(GetLocation(oWP_EMER_HATCH)));
}