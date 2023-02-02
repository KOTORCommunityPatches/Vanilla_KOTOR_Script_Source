void main() {
	AssignCommand(GetFirstPC(), ActionForceMoveToObject(GetWaypointByTag("wp_ritual_pc"), 0, 1.0, 30.0));
	MusicBackgroundPlay(GetObjectByTag("final_music", 0));
}
