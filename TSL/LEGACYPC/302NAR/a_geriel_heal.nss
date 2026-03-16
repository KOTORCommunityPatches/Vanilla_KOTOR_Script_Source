struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oPC = GetFirstPC();
	object oGeriel = GetObjectByTag("geriel", 0);
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionForceMoveToObject(GetObjectByTag("wp_geriel_heal", 0), 1, 1.0, 30.0));
	vector vPosition = GetPosition(oGeriel);
	;
}

