void main() {
	object oWp_rutum_exit = GetWaypointByTag("wp_rutum_exit");
	object oRutum = GetObjectByTag("Rutum", 0);
	AssignCommand(oRutum, ActionMoveToObject(oWp_rutum_exit, 1, 1.0));
	DelayCommand(3.0, DestroyObject(oRutum, 0.0, 0, 0.0, 0));
}
