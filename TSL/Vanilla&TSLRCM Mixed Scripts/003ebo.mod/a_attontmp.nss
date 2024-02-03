struct structtype1 {
	float float1;
	float float3;
};

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			PlayMovieQueue(1);
			AssignCommand(GetObjectByTag("BaoDur", 0), ActionJumpToLocation(Location(Vector(52.04592, 45.01086, 1.80089), 123.975)));
			break;
		case 2:
			SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			break;
		case 3:
			PlayMovie("NarMov01", 0);
			break;
	}
}

