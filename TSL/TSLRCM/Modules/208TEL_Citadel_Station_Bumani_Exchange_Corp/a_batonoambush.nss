void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		ChangeToStandardFaction(GetObjectByTag("merc1_batono", 0), 1);
		ChangeToStandardFaction(GetObjectByTag("merc2_batono", 0), 1);
	}
	else {
		if ((nParam1 == 2)) {
			ChangeToStandardFaction(GetObjectByTag("203_batono", 0), 1);
		}
	}
}