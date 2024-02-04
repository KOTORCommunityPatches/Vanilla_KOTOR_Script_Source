void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			{
				object oMainOffCorpse = GetObjectByTag("MainOffCorpse", 0);
				AssignCommand(GetFirstPC(), SetFacingPoint(GetPosition(oMainOffCorpse)));
			}
			break;
		case 2:
			break;
	}
}