void main() {
	int nParam1 = GetScriptParameter(1);
	object oForceFieldMain2 = GetObjectByTag("ForceFieldMain2", 0);
	object oForceField50 = GetObjectByTag("ForceField50", 0);
	object oForceField51 = GetObjectByTag("ForceField51", 0);
	switch (nParam1) {
		case 0:
			AssignCommand(oForceFieldMain2, ActionCloseDoor(oForceFieldMain2));
			break;
		case 1:
			AssignCommand(oForceField50, ActionOpenDoor(oForceField50));
			AssignCommand(oForceField51, ActionOpenDoor(oForceField51));
			break;
	}
}