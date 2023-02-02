int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	object object1;
	switch (nParam1) {
		case 41:
			return (!GetGlobalNumber("302NAR_Airspeeder_41"));
			break;
		case 42:
			return (!GetGlobalNumber("302NAR_Airspeeder_42"));
			break;
		case 43:
			return (!GetGlobalNumber("302NAR_Airspeeder_43"));
			break;
		case 44:
			return (GetGlobalNumber("302NAR_Airspeeder_44") == 1);
			break;
		case 45:
			return (((GetGlobalNumber("302NAR_Airspeeder_41") && GetGlobalNumber("302NAR_Airspeeder_42")) && GetGlobalNumber("302NAR_Airspeeder_43")) && (GetGlobalNumber("302NAR_Airspeeder_44") == 2));
			break;
		case 46:
			return (!(((GetGlobalNumber("302NAR_Airspeeder_41") && GetGlobalNumber("302NAR_Airspeeder_42")) && GetGlobalNumber("302NAR_Airspeeder_43")) && (GetGlobalNumber("302NAR_Airspeeder_44") == 2)));
			break;
	}
	return 0;
}
