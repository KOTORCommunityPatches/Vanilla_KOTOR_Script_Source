void main() {
	object oSittingCommFemale = GetObjectByTag("SittingRodian", 0);
	AssignCommand(oSittingCommFemale, ActionPlayAnimation(204, 1.0, 0.0));
	oSittingCommFemale = GetObjectByTag("SittingAlien2", 0);
	AssignCommand(oSittingCommFemale, ActionPlayAnimation(204, 1.0, 0.0));
	oSittingCommFemale = GetObjectByTag("SittingBith", 0);
	AssignCommand(oSittingCommFemale, ActionPlayAnimation(204, 1.0, 0.0));
	oSittingCommFemale = GetObjectByTag("SittingBith", 1);
	AssignCommand(oSittingCommFemale, ActionPlayAnimation(204, 1.0, 0.0));
	oSittingCommFemale = GetObjectByTag("SittingBith", 2);
	AssignCommand(oSittingCommFemale, ActionPlayAnimation(204, 1.0, 0.0));
	oSittingCommFemale = GetObjectByTag("travg2", 0);
	AssignCommand(oSittingCommFemale, ActionPlayAnimation(204, 1.0, 0.0));
	oSittingCommFemale = GetObjectByTag("SittingCommMale", 0);
	AssignCommand(oSittingCommFemale, ActionPlayAnimation(204, 1.0, 0.0));
	oSittingCommFemale = GetObjectByTag("SittingCommMale", 0);
	AssignCommand(oSittingCommFemale, ActionPlayAnimation(204, 1.0, 0.0));
	oSittingCommFemale = GetObjectByTag("SittingCommMale", 1);
	AssignCommand(oSittingCommFemale, ActionPlayAnimation(204, 1.0, 0.0));
	oSittingCommFemale = GetObjectByTag("SittingCommMale", 2);
	AssignCommand(oSittingCommFemale, ActionPlayAnimation(204, 1.0, 0.0));
	oSittingCommFemale = GetObjectByTag("SittingCommFemale", 0);
	AssignCommand(oSittingCommFemale, ActionPlayAnimation(204, 1.0, 0.0));
	oSittingCommFemale = GetObjectByTag("SittingCommFemale", 1);
	AssignCommand(oSittingCommFemale, ActionPlayAnimation(204, 1.0, 0.0));
	oSittingCommFemale = GetObjectByTag("SittingCommFemale", 2);
	AssignCommand(oSittingCommFemale, ActionPlayAnimation(204, 1.0, 0.0));
	oSittingCommFemale = GetObjectByTag("SittingCommFemale", 3);
	AssignCommand(oSittingCommFemale, ActionPlayAnimation(204, 1.0, 0.0));
	if ((GetGlobalNumber("201TEL_Thugs") > 7)) {
		DestroyObject(GetObjectByTag("201_ith_drd", 0), 0.0, 1, 0.0, 0);
		DestroyObject(GetObjectByTag("201_tsf_ith", 0), 0.0, 1, 0.0, 0);
		DestroyObject(GetObjectByTag("DrdIth", 0), 0.0, 1, 0.0, 0);
	}
}

