// Could not recompile

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			object oZhugcut3 = CreateObject(1, "zhugcut3", Location(Vector(60.09973, (-28.5991), 9.66561), 0.0), 0);
			break;
		case 1:
			AssignCommand(nParam1, ActionMoveToLocation(Location(Vector(55.05192, (-32.85696), 9.66554), 0.0), 0));
			break;
	}
}