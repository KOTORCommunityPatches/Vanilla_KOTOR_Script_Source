// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

void main() {
	int nParam1 = GetScriptParameter(1);
	object oNpc_jorran = GetObjectByTag("npc_jorran", 0);
	switch (nParam1) {
		case 0:
			AurPostString("a_jorrdeath_cs: 0 - move laigrek into camera", 5, 5, 5.0);
			{
				object oWP_protdroid1_13 = GetObjectByTag("WP_protdroid1_13", 0);
				object oNearestC_laigrek = GetNearestObjectByTag("c_laigrek", OBJECT_SELF, 1);
				AssignCommand(oNearestC_laigrek, ClearAllActions());
				AssignCommand(oNearestC_laigrek, ActionJumpToObject(oWP_protdroid1_13, 1));
				DelayCommand(1.0, AssignCommand(oNearestC_laigrek, PlayAnimation(10260, 1.0, 0.0)));
			}
			break;
		case 1:
			AurPostString("a_jorrdeath_cs: 1 - run jorran run", 5, 6, 5.0);
			{
				object oWp_jorran_flee = GetObjectByTag("wp_jorran_flee", 0);
				AssignCommand(oNpc_jorran, ClearAllActions());
				AssignCommand(oNpc_jorran, ActionForceMoveToObject(oWp_jorran_flee, 1, 1.0, 30.0));
			}
			break;
		case 2:
			SetGlobalNumber("610DAN_Jorran_Jerk", 3);
			{
				object oWp_laigrekambush = GetObjectByTag("wp_laigrekambush", 0);
				object oC_laigrek = CreateObject(1, "c_laigrek", GetLocation(oWp_laigrekambush), 0);
				DelayCommand(5.0, PlayAnimation(10074, 1.0, 2.0));
				DelayCommand(5.0, AssignCommand(oC_laigrek, PlayAnimation(10260, 1.0, 0.0)));
			}
			break;
		case 3:
			AurPostString("a_jorrdeath_cs: 2 - oh oh noo", 5, 7, 5.0);
			DelayCommand(0.5, AssignCommand(oNpc_jorran, ClearAllActions()));
			DelayCommand(0.5, AssignCommand(oNpc_jorran, ActionDoCommand(ApplyEffectToObject(2, EffectDeath(0, 1, 0), oNpc_jorran, 0.0))));
			break;
	}
}
