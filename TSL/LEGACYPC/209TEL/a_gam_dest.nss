void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		object oTr_gam_destroy = GetObjectByTag("tr_gam_destroy", 0);
		if (GetIsObjectValid(oTr_gam_destroy)) {
			if (GetLocalBoolean(oTr_gam_destroy, 29)) {
				return;
			}
			SetLocalBoolean(oTr_gam_destroy, 29, 1);
			object oGamGuardLux = GetObjectByTag("GamGuardLux", 0);
			object object8 = GetObjectByTag("GamGuardLux", 1);
			object object10 = GetObjectByTag("GamGuardLux", 2);
			object oGamGuardLuxB = GetObjectByTag("GamGuardLuxB", 0);
			if (GetIsObjectValid(oGamGuardLux)) {
				if ((GetStandardFaction(oGamGuardLux) != 1)) {
					DestroyObject(oGamGuardLux, 0.0, 1, 0.0, 0);
				}
				else {
					AurPostString("not deleting", 5, 15, 10.0);
				}
			}
			else {
				AurPostString("not deleting", 5, 15, 10.0);
			}
			if (GetIsObjectValid(object8)) {
				if ((GetStandardFaction(object8) != 1)) {
					DestroyObject(object8, 0.0, 1, 0.0, 0);
				}
				else {
					AurPostString("not deleting", 5, 15, 10.0);
				}
			}
			else {
				AurPostString("not deleting", 5, 15, 10.0);
			}
			if (GetIsObjectValid(object10)) {
				if ((GetStandardFaction(object10) != 1)) {
					DestroyObject(object10, 0.0, 1, 0.0, 0);
				}
				else {
					AurPostString("not deleting", 5, 15, 10.0);
				}
			}
			else {
				AurPostString("not deleting", 5, 15, 10.0);
			}
			if (GetIsObjectValid(oGamGuardLuxB)) {
				if ((GetStandardFaction(oGamGuardLuxB) != 1)) {
					DestroyObject(oGamGuardLuxB, 0.0, 1, 0.0, 0);
				}
				else {
					AurPostString("not deleting", 5, 15, 10.0);
				}
			}
			else {
				AurPostString("not deleting", 5, 15, 10.0);
			}
		}
	}
}

