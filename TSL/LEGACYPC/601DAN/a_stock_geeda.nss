void main() {
	if ((GetGlobalNumber("301NAR_Geeda_Planets") == 0)) {
		SetGlobalNumber("301NAR_Geeda_Planets", 1);
	}
	int nGlobal = GetGlobalNumber("301NAR_Geeda_Planets");
	AurPostString(("Planets: " + IntToString(nGlobal)), 5, 5, 2.0);
	AurPostString(("Stock: " + IntToString(GetGlobalNumber("601DAN_Geeda_Stock"))), 6, 6, 2.0);
	if (((GetGlobalNumber("601DAN_Geeda_Stock") + 1) == nGlobal)) {
		IncrementGlobalNumber("601DAN_Geeda_Stock", 1);
		switch (nGlobal) {
			case 2:
				CreateItemOnObject("a_light_x08", GetObjectByTag("GeedaStore", 0), 1, 0);
				CreateItemOnObject("a_medium_07", GetObjectByTag("GeedaStore", 0), 1, 0);
				CreateItemOnObject("a_heavy_06", GetObjectByTag("GeedaStore", 0), 1, 0);
				CreateItemOnObject("a_robe_07", GetObjectByTag("GeedaStore", 0), 1, 0);
				CreateItemOnObject("a_belt_17", GetObjectByTag("GeedaStore", 0), 1, 0);
				CreateItemOnObject("a_helm_13", GetObjectByTag("GeedaStore", 0), 1, 0);
				CreateItemOnObject("a_helm_16", GetObjectByTag("GeedaStore", 0), 1, 0);
				CreateItemOnObject("u_l_crys_13", GetObjectByTag("GeedaStore", 0), 1, 0);
				CreateItemOnObject("u_l_colo_07", GetObjectByTag("GeedaStore", 0), 1, 0);
				break;
			case 3:
				CreateItemOnObject("a_light_12", GetObjectByTag("GeedaStore", 0), 1, 0);
				CreateItemOnObject("a_heavy_09", GetObjectByTag("GeedaStore", 0), 1, 0);
				CreateItemOnObject("a_robe_19", GetObjectByTag("GeedaStore", 0), 1, 0);
				CreateItemOnObject("a_band_x01", GetObjectByTag("GeedaStore", 0), 1, 0);
				CreateItemOnObject("u_l_crys_19", GetObjectByTag("GeedaStore", 0), 1, 0);
				CreateItemOnObject("u_l_crys_22", GetObjectByTag("GeedaStore", 0), 1, 0);
				CreateItemOnObject("hkpart05", GetObjectByTag("GeedaStore", 0), 1, 0);
				CreateItemOnObject("u_l_colo_09", GetObjectByTag("GeedaStore", 0), 1, 0);
				break;
		}
	}
	else {
		if (((GetGlobalNumber("601DAN_Geeda_Stock") + 2) == nGlobal)) {
			IncrementGlobalNumber("601DAN_Geeda_Stock", 2);
			CreateItemOnObject("a_light_x08", GetObjectByTag("GeedaStore", 0), 1, 0);
			CreateItemOnObject("a_medium_07", GetObjectByTag("GeedaStore", 0), 1, 0);
			CreateItemOnObject("a_heavy_06", GetObjectByTag("GeedaStore", 0), 1, 0);
			CreateItemOnObject("a_robe_07", GetObjectByTag("GeedaStore", 0), 1, 0);
			CreateItemOnObject("a_belt_17", GetObjectByTag("GeedaStore", 0), 1, 0);
			CreateItemOnObject("a_helm_13", GetObjectByTag("GeedaStore", 0), 1, 0);
			CreateItemOnObject("a_helm_16", GetObjectByTag("GeedaStore", 0), 1, 0);
			CreateItemOnObject("u_l_crys_13", GetObjectByTag("GeedaStore", 0), 1, 0);
			CreateItemOnObject("a_light_12", GetObjectByTag("GeedaStore", 0), 1, 0);
			CreateItemOnObject("a_heavy_09", GetObjectByTag("GeedaStore", 0), 1, 0);
			CreateItemOnObject("a_robe_19", GetObjectByTag("GeedaStore", 0), 1, 0);
			CreateItemOnObject("a_band_x01", GetObjectByTag("GeedaStore", 0), 1, 0);
			CreateItemOnObject("u_l_crys_19", GetObjectByTag("GeedaStore", 0), 1, 0);
			CreateItemOnObject("u_l_crys_22", GetObjectByTag("GeedaStore", 0), 1, 0);
			CreateItemOnObject("u_l_colo_07", GetObjectByTag("GeedaStore", 0), 1, 0);
			CreateItemOnObject("u_l_colo_09", GetObjectByTag("GeedaStore", 0), 1, 0);
			CreateItemOnObject("hkpart05", GetObjectByTag("GeedaStore", 0), 1, 0);
		}
	}
}

