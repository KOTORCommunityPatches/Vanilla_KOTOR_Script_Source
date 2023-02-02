void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			CreateObject(1, "n_admoff", GetLocation(GetObjectByTag("WP_ADM_SPAWN", 0)), 0);
			CreateObject(1, "n_minefirst003", GetLocation(GetObjectByTag("WP_MED_SPAWN", 0)), 0);
			break;
		case 2:
			CreateObject(1, "n_mineforeman", GetLocation(GetObjectByTag("WP_SIEN_SPAWN1", 0)), 0);
			break;
		case 3:
			CreateObject(1, "n_dockoff", GetLocation(GetObjectByTag("WP_DOCK_SPAWN", 0)), 0);
			break;
		case 4:
			CreateObject(1, "n_minecoorta", GetLocation(GetObjectByTag("WP_COORTA", 0)), 0);
			break;
	}
}
