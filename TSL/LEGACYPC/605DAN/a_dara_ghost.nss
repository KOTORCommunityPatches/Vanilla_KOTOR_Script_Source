void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SetGlobalNumber("605DAN_Daraala_Ghosts", 1);
			break;
		case 2:
			ActionTakeItem(GetObjectByTag("qu_deadwill", 0), GetFirstPC());
			ActionTakeItem(GetObjectByTag("qu_fakewill", 0), GetFirstPC());
			ActionTakeItem(GetObjectByTag("qu_deadsalvager1", 1), GetFirstPC());
			ActionTakeItem(GetObjectByTag("qu_deadsalvager1", 0), GetFirstPC());
			break;
	}
}

