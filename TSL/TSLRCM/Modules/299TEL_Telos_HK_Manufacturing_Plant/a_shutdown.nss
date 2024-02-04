void main() {
	int nParam1 = GetScriptParameter(1);
	object oHKRack = GetObjectByTag("HKRack", 0);
	object oHkrack2 = GetObjectByTag("HKRack2", 0);
	location location1 = Location(GetPosition(oHKRack), GetFacing(oHKRack));
	object oFactory_stop = GetObjectByTag("factory_stop", 0);
	object oFactory_go = GetObjectByTag("factory_go", 0);
	switch (nParam1) {
		case 0:
			AssignCommand(oFactory_go, SetIsDestroyable(1, 1, 0));
			DelayCommand(1.0, SoundObjectPlay(oFactory_stop));
			DelayCommand(1.5, SoundObjectStop(oFactory_go));
			DelayCommand(2.0, AssignCommand(oHKRack, PlayAnimation(204, 1.0, 0.0)));
			SetGlobalNumber("299TEL_Mission_Over", 1);
		case 1:
			AssignCommand(oHKRack, ClearAllActions());
			break;
		case 2:
			DestroyObject(oHKRack, 0.0, 0, 0.0, 0);
			oHkrack2 = CreateObject(64, "hkrack2", location1, 0);
			break;
		case 3:
			DelayCommand(0.5, AssignCommand(oHkrack2, PlayAnimation(204, 1.0, 0.0)));
			SetGlobalNumber("299TEL_Mission_Over", 2);
			DelayCommand(1.0, SoundObjectPlay(oFactory_stop));
			DelayCommand(1.5, SoundObjectPlay(oFactory_go));
			break;
	}
}