void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			AssignCommand(GetFirstPC(), ActionJumpToLocation(GetLocation(GetObjectByTag("wp_t3_hk1", 0))));
			RemoveNPCFromPartyToBase(7);
			SpawnAvailableNPC(7, GetLocation(GetObjectByTag("wp_3c_hk", 0)));
			DelayCommand(2.0, SoundObjectPlay(GetObjectByTag("hk50coming", 0)));
			break;
		case 1:
			AssignCommand(GetFirstPC(), ActionForceMoveToObject(GetObjectByTag("wp_t3_hk2", 0), 0, 1.0, 30.0));
			DelayCommand(1.0, AssignCommand(GetObjectByTag("3CFD", 0), ActionForceMoveToObject(GetObjectByTag("wp_t3_hk2", 0), 0, 1.0, 30.0)));
			DelayCommand(1.0, SoundObjectPlay(GetObjectByTag("T3HK50", 0)));
			break;
		case 2:
			DelayCommand(3.0, SoundObjectPlay(GetObjectByTag("T3end", 0)));
			break;
	}
}

