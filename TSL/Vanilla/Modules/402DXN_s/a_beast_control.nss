void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			ChangeToStandardFaction(GetObjectByTag("boma_young_bc", 0), 1);
			break;
		case 1:
			GrantSpell(182, GetFirstPC());
			break;
	}
}

