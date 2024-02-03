struct structtype1 {
	float float1;
	float float3;
};

void main() {
	int nParam1 = GetScriptParameter(1);
	object oHK47 = GetObjectByTag("HK47", 0);
	object oHk51holo = GetObjectByTag("hk51holo", 0);
	object oWp_hk51_spawn = GetObjectByTag("wp_hk51_spawn", 0);
	object oHK51dlg_plc = GetObjectByTag("HK51dlg_plc", 0);
	switch (nParam1) {
		case 1:
			DelayCommand(1.4, AssignCommand(oHk51holo, ActionJumpToObject(oWp_hk51_spawn, 1)));
			DelayCommand(2.0, AssignCommand(oHK47, ActionDoCommand(SetFacingPoint(GetPosition(oHK51dlg_plc)))));
			break;
		case 2:
			break;
		case 3:
			break;
	}
}

