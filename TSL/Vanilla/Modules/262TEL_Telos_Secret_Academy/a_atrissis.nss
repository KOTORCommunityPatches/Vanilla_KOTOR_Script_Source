void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		SetGlobalFadeIn(1.0, 3.0, 0.0, 0.0, 0.0);
		AssignCommand(GetObjectByTag("Sister1Wind", 0), ActionMoveToObject(GetObjectByTag("wp_sister1wind_2", 0), 0, 1.0));
		AssignCommand(GetObjectByTag("Sister2Wind", 0), ActionMoveToObject(GetObjectByTag("wp_sister2wind_2", 0), 0, 1.0));
	}
	else {
		if ((nParam1 == 2)) {
			SetLockOrientationInDialog(GetObjectByTag("AtrisWindCut", 0), 1);
		}
		else {
			if ((nParam1 == 3)) {
				object oAtrisWindCut = GetObjectByTag("AtrisWindCut", 0);
				object oSister1Wind = GetObjectByTag("Sister1Wind", 0);
				object oSister2Wind = GetObjectByTag("Sister2Wind", 0);
				AssignCommand(oSister2Wind, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_sister2wind_2a", 0)), 0));
			}
			else {
				if ((nParam1 == 4)) {
					AssignCommand(GetObjectByTag("AtrisWindCut", 0), ActionMoveToObject(GetObjectByTag("wp_atriswind_2", 0), 0, 1.0));
				}
				else {
					if ((nParam1 == 5)) {
						DelayCommand(4.0, DestroyObject(GetObjectByTag("AtrisWindCut", 0), 0.0, 0, 0.0, 0));
						DelayCommand(4.0, DestroyObject(GetObjectByTag("Sister1Wind", 0), 0.0, 0, 0.0, 0));
						DelayCommand(4.0, DestroyObject(GetObjectByTag("Sister2Wind", 0), 0.0, 0, 0.0, 0));
						DelayCommand(4.0, StartNewModule("950COR", "FROM_262TEL", "", "", "", "", "", ""));
					}
				}
			}
		}
	}
}
