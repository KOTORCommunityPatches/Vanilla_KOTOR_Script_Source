void main() {
	int nParam1 = GetScriptParameter(1);
	object oKathVogga = GetObjectByTag("KathVogga", 0);
	object object3 = GetObjectByTag("KathVogga", 1);
	object oWp_kath_01 = GetObjectByTag("wp_kath_01", 0);
	object oWp_kath_02 = GetObjectByTag("wp_kath_02", 0);
	object oWp_kath_01drink = GetObjectByTag("wp_kath_01drink", 0);
	object oWp_kath_02drink = GetObjectByTag("wp_kath_02drink", 0);
	if ((nParam1 == 1)) {
		object oNPC = GetPartyMemberByIndex(0);
		object object15 = GetPartyMemberByIndex(1);
		object object17 = GetPartyMemberByIndex(2);
		AssignCommand(oNPC, ClearAllActions());
		AssignCommand(object15, ClearAllActions());
		AssignCommand(object17, ClearAllActions());
		DelayCommand(0.1, AssignCommand(oNPC, ActionForceMoveToObject(GetObjectByTag("wp_jamajuice_after", 0), 0, 1.0, 30.0)));
		DelayCommand(0.1, AssignCommand(object15, ActionMoveToObject(GetObjectByTag("wp_jamajuice_after", 0), 0, 1.0)));
		DelayCommand(0.1, AssignCommand(object17, ActionMoveToObject(GetObjectByTag("wp_jamajuice_after", 0), 0, 1.0)));
	}
	else {
		if ((nParam1 == 2)) {
			AssignCommand(oKathVogga, ClearAllActions());
			AssignCommand(object3, ClearAllActions());
			DelayCommand(0.1, AssignCommand(oKathVogga, ActionForceMoveToLocation(GetLocation(oWp_kath_01drink), 0, 30.0)));
			DelayCommand(0.1, AssignCommand(object3, ActionForceMoveToLocation(GetLocation(oWp_kath_02drink), 0, 30.0)));
		}
		else {
			if ((nParam1 == 3)) {
				AssignCommand(oKathVogga, ClearAllActions());
				AssignCommand(object3, ClearAllActions());
				DelayCommand(0.1, AssignCommand(oKathVogga, ActionForceMoveToLocation(GetLocation(oWp_kath_01), 0, 30.0)));
				DelayCommand(0.1, AssignCommand(object3, ActionForceMoveToLocation(GetLocation(oWp_kath_02), 0, 30.0)));
			}
			else {
				if ((nParam1 == 4)) {
					SetOrientOnClick(oKathVogga, 0);
					SetOrientOnClick(object3, 0);
					AssignCommand(oKathVogga, ClearAllActions());
					AssignCommand(object3, ClearAllActions());
					DelayCommand(0.1, AssignCommand(oKathVogga, ActionPlayAnimation(22, 1.0, (-1.0))));
					DelayCommand(0.1, AssignCommand(object3, ActionPlayAnimation(22, 1.0, (-1.0))));
					SetGlobalBoolean("303NAR_Kath_Asleep", 1);
				}
			}
		}
	}
}
