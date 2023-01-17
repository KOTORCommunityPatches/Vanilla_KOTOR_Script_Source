void main() {
	object oForceField1 = GetObjectByTag("ForceField1", 0);
	object oForceField2 = GetObjectByTag("ForceField2", 0);
	object oForceField3 = GetObjectByTag("ForceField3", 0);
	object oForceField4 = GetObjectByTag("ForceField4", 0);
	object oForceField5 = GetObjectByTag("ForceField5", 0);
	object oForceField6 = GetObjectByTag("ForceField6", 0);
	object oForceField7 = GetObjectByTag("ForceField7", 0);
	SetLocked(oForceField1, 1);
	SetLocked(oForceField2, 1);
	SetLocked(oForceField3, 1);
	SetLocked(oForceField4, 1);
	SetLocked(oForceField5, 1);
	SetLocked(oForceField6, 1);
	SetLocked(oForceField7, 1);
	DelayCommand(1.0, AssignCommand(oForceField1, ActionCloseDoor(oForceField1)));
	DelayCommand(1.0, AssignCommand(oForceField2, ActionCloseDoor(oForceField2)));
	DelayCommand(1.0, AssignCommand(oForceField3, ActionCloseDoor(oForceField3)));
	DelayCommand(1.0, AssignCommand(oForceField4, ActionCloseDoor(oForceField4)));
	DelayCommand(1.0, AssignCommand(oForceField5, ActionCloseDoor(oForceField5)));
	DelayCommand(1.0, AssignCommand(oForceField6, ActionCloseDoor(oForceField6)));
	DelayCommand(1.0, AssignCommand(oForceField7, ActionCloseDoor(oForceField7)));
}

