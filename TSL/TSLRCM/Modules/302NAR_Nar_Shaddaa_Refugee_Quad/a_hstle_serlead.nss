void main() {
	int int1 = 4;
	int int2 = 0;
	while ((int2 <= int1)) {
		{
			object oSerrocoThugVeteran = GetObjectByTag("SerrocoThugVeteran", int2);
			if (GetIsObjectValid(oSerrocoThugVeteran)) {
				AssignCommand(oSerrocoThugVeteran, ClearAllActions());
				ChangeToStandardFaction(oSerrocoThugVeteran, 1);
			}
		}
		(int2++);
	}
	AssignCommand(GetObjectByTag("SerrocoLeader", 0), ClearAllActions());
	ChangeToStandardFaction(GetObjectByTag("SerrocoLeader", 0), 1);
}