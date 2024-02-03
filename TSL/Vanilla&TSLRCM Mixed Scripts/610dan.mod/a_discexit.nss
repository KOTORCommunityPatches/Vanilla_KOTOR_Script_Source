void main() {
	object oDisciple = GetObjectByTag("Disciple", 0);
	object oWP_disc_exit = GetWaypointByTag("WP_disc_exit");
	location location1 = GetLocation(oWP_disc_exit);
	ClearAllActions();
	DelayCommand(1.0, AssignCommand(oDisciple, ActionForceMoveToLocation(location1, 0, 30.0)));
	DelayCommand(6.0, DestroyObject(oDisciple, 0.0, 1, 0.0, 0));
}

