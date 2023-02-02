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

// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
	effect efVisual = EffectVisualEffect(3003, 0);
	ApplyEffectAtLocation(0, efVisual, GetLocation(objectParam1), 0.0);
	ApplyEffectAtLocation(0, EffectVisualEffect(1044, 0), GetLocation(objectParam1), 0.0);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			ActionWait(0.5);
			ActionDoCommand(sub1(GetObjectByTag("WP_ESBOMB_1", 0)));
			ActionWait(0.5);
			ActionDoCommand(sub1(GetObjectByTag("WP_ESBOMB_2", 0)));
			ActionWait(0.4);
			ActionDoCommand(sub1(GetObjectByTag("WP_ESBOMB_3", 0)));
			ActionWait(0.5);
			ActionDoCommand(sub1(GetObjectByTag("WP_ESBOMB_4", 0)));
			ActionWait(0.1);
			ActionDoCommand(sub1(GetObjectByTag("WP_ESBOMB_5", 0)));
			ActionWait(0.2);
			ActionDoCommand(sub1(GetObjectByTag("WP_ESBOMB_6", 0)));
			ActionDoCommand(ActionUnlockObject(GetObjectByTag("dxuncache", 0)));
			ActionDoCommand(ActionOpenDoor(GetObjectByTag("dxuncache", 0)));
			SetGlobalNumber("403DXN_ES_Quest", 3);
			AddJournalQuestEntry("explosivesit", 30, 0);
			break;
		case 1:
			{
				object oBoma_young_es = CreateObject(1, "boma_young_es", GetLocation(GetWaypointByTag("WP_ES_SPAWN_1")), 0);
				object oBoma_es = CreateObject(1, "boma_es", GetLocation(GetWaypointByTag("WP_ES_SPAWN_2")), 0);
				object object15 = CreateObject(1, "boma_young_es", GetLocation(GetWaypointByTag("WP_ES_SPAWN_3")), 0);
				object oMaalraas_es = CreateObject(1, "maalraas_es", GetLocation(GetWaypointByTag("WP_ES_SPAWN_4")), 0);
				object object21 = CreateObject(1, "maalraas_es", GetLocation(GetWaypointByTag("WP_ES_SPAWN_5")), 0);
				object oCannock_es = CreateObject(1, "cannock_es", GetLocation(GetWaypointByTag("WP_ES_SPAWN_6")), 0);
				object oBeastUpset = GetObjectByTag("BeastUpset", 0);
				SoundObjectPlay(oBeastUpset);
				AssignCommand(oBoma_es, PlayAnimation(10260, 1.0, 0.0));
				DelayCommand(0.5, AssignCommand(oBoma_young_es, PlayAnimation(10268, 1.0, 4.0)));
				DelayCommand(0.5, AssignCommand(object15, PlayAnimation(10263, 1.0, 0.0)));
				DelayCommand(0.5, AssignCommand(oMaalraas_es, PlayAnimation(10268, 1.0, 4.0)));
				DelayCommand(0.5, AssignCommand(object21, PlayAnimation(10263, 1.0, 0.0)));
				DelayCommand(0.5, AssignCommand(oCannock_es, PlayAnimation(10263, 1.0, 0.0)));
			}
			break;
		case 2:
			{
				object oWP_ES_DEST = GetObjectByTag("WP_ES_DEST", 0);
				DelayCommand(0.5, AssignCommand(GetObjectByTag("boma_young_es", 1), ActionForceMoveToObject(oWP_ES_DEST, 1, 1.0, 30.0)));
				DelayCommand(0.5, AssignCommand(GetObjectByTag("maalraas_es", 0), ActionForceMoveToObject(oWP_ES_DEST, 1, 1.0, 30.0)));
				DelayCommand(1.0, AssignCommand(GetObjectByTag("boma_es", 0), ActionForceMoveToObject(oWP_ES_DEST, 1, 1.0, 30.0)));
				DelayCommand(1.0, AssignCommand(GetObjectByTag("boma_young_es", 0), ActionForceMoveToObject(oWP_ES_DEST, 1, 1.0, 30.0)));
				DelayCommand(1.0, AssignCommand(GetObjectByTag("maalraas_es", 1), ActionForceMoveToObject(oWP_ES_DEST, 1, 1.0, 30.0)));
				DelayCommand(1.5, AssignCommand(GetObjectByTag("cannock_es", 0), ActionForceMoveToObject(oWP_ES_DEST, 1, 1.0, 30.0)));
			}
			break;
		case 3:
			ChangeToStandardFaction(GetObjectByTag("boma_young_es", 1), 1);
			ChangeToStandardFaction(GetObjectByTag("maalraas_es", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("boma_es", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("boma_young_es", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("maalraas_es", 1), 1);
			ChangeToStandardFaction(GetObjectByTag("cannock_es", 0), 1);
			break;
	}
}
