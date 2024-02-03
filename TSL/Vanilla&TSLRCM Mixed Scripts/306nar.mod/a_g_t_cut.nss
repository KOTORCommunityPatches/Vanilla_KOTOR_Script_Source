struct structtype1 {
	float float1;
	float float3;
};

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			{
				object oGeredi = GetObjectByTag("Geredi", 0);
				object oG_warp = GetObjectByTag("g_warp", 0);
				object oG_end = GetObjectByTag("g_end", 0);
				AssignCommand(oGeredi, ClearAllActions());
				AssignCommand(oGeredi, ActionJumpToLocation(GetLocation(oG_warp)));
				AssignCommand(oGeredi, ActionForceMoveToLocation(GetLocation(oG_end), 0, 30.0));
			}
			break;
		case 2:
			{
				object object7 = GetObjectByTag("Geredi", 0);
				object oTwik = GetObjectByTag("Twik", 0);
				object oT_end = GetObjectByTag("t_end", 0);
				AssignCommand(oTwik, ClearAllActions());
				AssignCommand(oTwik, ActionForceMoveToLocation(GetLocation(oT_end), 0, 30.0));
			}
			break;
		case 3:
			object oTt_end1 = GetObjectByTag("tt_end1", 0);
			object oTt_warp1 = GetObjectByTag("tt_warp1", 0);
			object oTt_end2 = GetObjectByTag("tt_end2", 0);
			object oTt_warp2 = GetObjectByTag("tt_warp2", 0);
			object oTt_1 = GetObjectByTag("tt_1", 0);
			object oTt_2 = GetObjectByTag("tt_2", 0);
			object object25 = GetObjectByTag("Geredi", 0);
			object object27 = GetObjectByTag("Twik", 0);
			vector struct2 = GetPositionFromLocation(GetLocation(object25));
			vector struct4 = GetPositionFromLocation(GetLocation(object27));
								;
;
		case 4:
		default:
	}
}

