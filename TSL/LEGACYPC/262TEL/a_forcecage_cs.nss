void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			DelayCommand(2.0, AssignCommand(GetObjectByTag("kreia", 0), ActionPlayAnimation(35, 1.0, (-1.0))));
			DelayCommand(2.0, AssignCommand(GetObjectByTag("atton", 0), ActionPlayAnimation(26, 1.0, (-1.0))));
			break;
		case 1:
			DelayCommand(1.0, AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_pc_forcecage", 0), 0, 1.0)));
			break;
		case 2:
			SetNPCSelectability(1, 1);
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			AddPartyMember(0, GetObjectByTag("Atton", 0));
			AddPartyMember(6, GetObjectByTag("Kreia", 0));
			AssignCommand(GetObjectByTag("BaoDur", 0), SetIsDestroyable(1, 1, 0));
			DestroyObject(GetObjectByTag("BaoDur", 0), 0.0, 1, 0.0, 0);
			SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
			break;
		case 3:
			SetNPCSelectability(1, 1);
			AssignCommand(GetObjectByTag("BaoDur", 0), SetIsDestroyable(1, 1, 0));
			DestroyObject(GetObjectByTag("BaoDur", 0), 0.0, 1, 0.0, 0);
			DestroyObject(GetObjectByTag("Atton", 0), 0.0, 1, 0.0, 0);
			DestroyObject(GetObjectByTag("Kreia", 0), 0.0, 1, 0.0, 0);
			ShowPartySelectionGUI("", 0xFFFFFFFF, 0xFFFFFFFF, 0);
			break;
	}
}

