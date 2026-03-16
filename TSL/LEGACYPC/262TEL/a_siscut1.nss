void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		AssignCommand(GetObjectByTag("Sister2Cut", 0), ActionMoveToObject(GetObjectByTag("wp_sister2bay_2", 0), 0, 1.0));
	}
	else {
		if ((nParam1 == 2)) {
			SetLockOrientationInDialog(GetObjectByTag("Sister1Cut", 0), 1);
		}
		else {
			if ((nParam1 == 3)) {
				SetLockOrientationInDialog(GetObjectByTag("Sister2Cut", 0), 1);
			}
			else {
				if ((nParam1 == 4)) {
					SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0);
				}
				else {
					if ((nParam1 == 5)) {
						AssignCommand(GetFirstPC(), DelayCommand(3.0, StartNewModule("003EBO", "", "", "", "", "", "", "")));
						SetGlobalFadeOut(0.0, 2.0, 0.0, 0.0, 0.0);
						DelayCommand(2.0, DestroyObject(GetObjectByTag("sister2cut", 0), 0.0, 0, 0.0, 0));
						DelayCommand(2.0, DestroyObject(GetObjectByTag("sister1cut", 0), 0.0, 0, 0.0, 0));
					}
				}
			}
		}
	}
}

