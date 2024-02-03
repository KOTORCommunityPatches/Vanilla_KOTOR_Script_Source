struct structtype1 {
	float float1;
	float float3;
};

void main() {
	int nParam1 = GetScriptParameter(1);
	object oPC = GetFirstPC();
	object oNpc_zherron = GetObjectByTag("npc_zherron", 0);
	switch (nParam1) {
		case 0:
			SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
			AssignCommand(oPC, SetFacingPoint(GetPositionFromLocation(GetLocation(GetObjectByTag("Invisible", 0)))));
			AssignCommand(oNpc_zherron, SetFacingPoint(GetPositionFromLocation(GetLocation(GetObjectByTag("Invisible", 0)))));
			SetLockOrientationInDialog(oPC, 1);
			SetLockOrientationInDialog(oNpc_zherron, 1);
			break;
		case 1:
			SetLockOrientationInDialog(oPC, 0);
			SetLockOrientationInDialog(oNpc_zherron, 0);
			break;
		case 2:
			AssignCommand(oPC, SetFacingPoint(GetPositionFromLocation(GetLocation(oNpc_zherron))));
	}
}

