struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oLeader = GetPartyLeader();
	object oSister1 = GetObjectByTag("Sister1", 0);
	object oSister2 = GetObjectByTag("Sister2", 0);
	AssignCommand(oSister1, ActionDoCommand(SetFacingPoint(GetPosition(oLeader))));
	AssignCommand(oSister2, ActionDoCommand(SetFacingPoint(GetPosition(oLeader))));
}

