void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		PlayMovie("MalMov04", 0);
	}
	else {
		if ((nParam1 == 2)) {
			StartNewModule("851NIH", "FROM_222TEL", "", "", "", "", "", "");
		}
		else {
			AurPostString("Error in Transition to 851.", 15, 15, 10.0);
		}
	}
}

