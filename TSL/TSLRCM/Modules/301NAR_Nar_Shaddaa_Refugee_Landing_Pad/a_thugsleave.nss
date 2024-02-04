void main() {
	object oExchangeThug1 = GetObjectByTag("ExchangeThug1", 0);
	object oExchangeThug2 = GetObjectByTag("ExchangeThug2", 0);
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		object oWp_rutum_exit = GetWaypointByTag("wp_rutum_exit");
		AssignCommand(oExchangeThug1, ClearAllActions());
		AssignCommand(oExchangeThug2, ClearAllActions());
		AssignCommand(oExchangeThug1, ActionForceMoveToLocation(GetLocation(oWp_rutum_exit), 0, 30.0));
		AssignCommand(oExchangeThug2, ActionForceMoveToLocation(GetLocation(oWp_rutum_exit), 0, 30.0));
	}
	else {
		if ((nParam1 == 2)) {
			DelayCommand(1.0, DestroyObject(oExchangeThug1, 0.0, 0, 0.0, 0));
			DelayCommand(1.0, DestroyObject(oExchangeThug2, 0.0, 0, 0.0, 0));
		}
		else {
			AurPostString("Invalid Argument to the Rutrum script", 15, 15, 10.0);
		}
	}
}