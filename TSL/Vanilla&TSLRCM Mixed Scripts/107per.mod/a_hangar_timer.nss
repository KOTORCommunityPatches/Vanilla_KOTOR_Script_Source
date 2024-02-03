// Globals
	int intGLOB_1 = 25;

void main() {
	object oWP_TARGET_ENTER;
	location location1;
	switch (GetUserDefinedEventNumber()) {
		case 1:
			{
				int nGlobal = GetGlobalNumber("107PER_MG_LEFT");
				if ((nGlobal <= 0)) {
				return;
				}
				oWP_TARGET_ENTER = GetWaypointByTag("WP_TARGET_ENTER");
				location1 = GetLocation(oWP_TARGET_ENTER);
				CreateObject(1, "g_sithtroop008", location1, 0);
				SetGlobalNumber("107PER_MG_LEFT", (nGlobal - 1));
				DelayCommand(2.0, SignalEvent(OBJECT_SELF, EventUserDefined(1)));
			}
			break;
		case 2:
			{
				int int4 = GetGlobalNumber("107PER_MG_DEAD");
				int int6 = GetGlobalNumber("107PER_MG_EBON");
				int int8 = GetGlobalNumber("107PER_MG_FINISHED");
				if (((int8 == 0) && ((int4 + int6) >= intGLOB_1))) {
					SetGlobalNumber("107PER_MG_FINISHED", 1);
				if ((int4 < intGLOB_1)) {
					AssignCommand(GetObjectByTag("atton", 0), ActionStartConversation(GetFirstPC(), "turend", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				}
				else {
					if ((int4 >= intGLOB_1)) {
						AssignCommand(GetObjectByTag("atton", 0), ActionStartConversation(GetFirstPC(), "turend", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
					}
					else {
						AurPostString("107PER: (AWD-OEI)Shouldnot happen, report me!", 5, 10, 20.0);
					}
				}
				}
			}
			break;
	}
}

