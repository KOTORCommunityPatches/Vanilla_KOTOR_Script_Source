void main() {
	object oWp_rutum_exit = GetWaypointByTag("wp_rutum_exit");
	object oRutum = GetObjectByTag("Rutum", 0);
	object oExchangeThug1 = GetObjectByTag("ExchangeThug1", 0);
	object oExchangeThug2 = GetObjectByTag("ExchangeThug2", 0);
	AssignCommand(oRutum, ActionMoveToObject(oWp_rutum_exit, 0, 1.0));
	AssignCommand(oExchangeThug1, ActionMoveToObject(oWp_rutum_exit, 0, 1.0));
	AssignCommand(oExchangeThug2, ActionMoveToObject(oWp_rutum_exit, 0, 1.0));
	DelayCommand(3.0, DestroyObject(oRutum, 0.0, 0, 0.0, 0));
	DelayCommand(3.0, DestroyObject(oExchangeThug1, 0.0, 0, 0.0, 0));
	DelayCommand(3.0, DestroyObject(oExchangeThug2, 0.0, 0, 0.0, 0));
}