void main() {
	object oKaevee = GetObjectByTag("Kaevee", 0);
	object oWP_kaev_exit = GetWaypointByTag("WP_kaev_exit");
	location location1 = GetLocation(oWP_kaev_exit);
	ClearAllActions();
	AssignCommand(oKaevee, ActionForceMoveToLocation(location1, 1, 30.0));
	DelayCommand(5.0, DestroyObject(oKaevee, 0.0, 1, 0.0, 0));
}

