void main() {
	if ((GetGlobalNumber("800DRO_Console_59") == 1)) {
		object oForceField1 = GetObjectByTag("ForceField1", 0);
		object oForceField2 = GetObjectByTag("ForceField2", 0);
		object oForceField3 = GetObjectByTag("ForceField3", 0);
		object oForceField4 = GetObjectByTag("ForceField4", 0);
		object oForceField5 = GetObjectByTag("ForceField5", 0);
		object oForceField6 = GetObjectByTag("ForceField6", 0);
		object oForceField7 = GetObjectByTag("ForceField7", 0);
		int nGlobal = GetGlobalNumber("351NAR_Power");
		string string1 = IntToString(nGlobal);
		string string3 = GetStringLeft(GetStringRight(string1, 2), 1);
		string string6 = GetStringRight(string1, 1);
		if ((nGlobal >= 100)) {
			SetLocked(oForceField1, 0);
			SetLocked(oForceField2, 0);
			SetLocked(oForceField3, 0);
			SetLocked(oForceField4, 0);
			SetLocked(oForceField5, 0);
			SetLocked(oForceField6, 0);
			SetLocked(oForceField7, 0);
			DelayCommand(1.0, AssignCommand(oForceField1, ActionOpenDoor(oForceField1)));
			DelayCommand(1.0, AssignCommand(oForceField2, ActionOpenDoor(oForceField2)));
			DelayCommand(1.0, AssignCommand(oForceField3, ActionOpenDoor(oForceField3)));
			DelayCommand(1.0, AssignCommand(oForceField4, ActionOpenDoor(oForceField4)));
			DelayCommand(1.0, AssignCommand(oForceField5, ActionOpenDoor(oForceField5)));
			DelayCommand(1.0, AssignCommand(oForceField6, ActionOpenDoor(oForceField6)));
			DelayCommand(1.0, AssignCommand(oForceField7, ActionOpenDoor(oForceField7)));
		}
		if (((string3 == "1") && (GetGlobalNumber("351NAR_Bounty_Board") == 0))) {
			SetGlobalNumber("351NAR_Bounty_Board", 1);
			SoundObjectPlay(GetObjectByTag("Computer06", 0));
			GivePlotXP("Nar_Shaddaa_Plot_Base_XP", 50);
		}
		if (((string6 == "1") && (GetGlobalNumber("351NAR_Ebon_Released") == 0))) {
			SetGlobalNumber("351NAR_Ebon_Released", 1);
			object oTO_003EBO = GetObjectByTag("TO_003EBO", 0);
			SetLocked(oTO_003EBO, 0);
			GivePlotXP("Nar_Shaddaa_Plot_Base_XP", 50);
			DelayCommand(1.0, AssignCommand(oTO_003EBO, ActionOpenDoor(oTO_003EBO)));
		}
	}
}
