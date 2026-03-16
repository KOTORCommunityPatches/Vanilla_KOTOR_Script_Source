void main() {
	int nParam1 = GetScriptParameter(1);
	object oG_militia_sec = GetObjectByTag("g_militia_sec", 0);
	object oWp_militia_sec2;
	int int3 = 0;
	float float1 = 0.0;
	if ((nParam1 == 0)) {
		oWp_militia_sec2 = GetObjectByTag("wp_militia_sec1", 0);
		int3 = 1;
	}
	else {
		oWp_militia_sec2 = GetObjectByTag("wp_militia_sec2", 0);
		DelayCommand(3.0, DestroyObject(oG_militia_sec, 0.0, 1, 0.0, 0));
		float1 = 1.0;
	}
	DelayCommand(float1, AssignCommand(oG_militia_sec, ActionForceMoveToObject(oWp_militia_sec2, int3, 1.0, 30.0)));
}

