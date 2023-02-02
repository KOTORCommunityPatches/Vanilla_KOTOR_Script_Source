// Byte code does not match

void main() {
	int nParam1 = GetScriptParameter(1);
	object oAirtaxi = GetObjectByTag("airtaxi", 0);
	vector vPosition = GetPosition(oAirtaxi);
	object oPC;
	int int3;
	switch (nParam1) {
		case 1:
			oPC = GetObjectByTag("mira", 0);
			int3 = 15;
			break;
		case 2:
			oPC = GetObjectByTag("hk47", 0);
			int3 = 34;
			break;
		case 3:
			oPC = GetObjectByTag("atton", 0);
			int3 = 15;
			break;
		case 4:
			oPC = GetObjectByTag("baodur", 0);
			int3 = 15;
			break;
		case 5:
			oPC = GetObjectByTag("t3m4", 0);
			int3 = 25;
			break;
		case 0:
			oPC = GetFirstPC();
			int3 = 15;
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oPC, ActionForceMoveToObject(oAirtaxi, 1, 1.0, 30.0));
			AssignCommand(oPC, SetFacingPoint(vPosition));
			AssignCommand(oPC, ActionPlayAnimation(int3, 1.0, 4.0));
		default:
	}
}
