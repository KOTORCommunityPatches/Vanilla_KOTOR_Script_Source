#include "k_inc_tar"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (GetIsPC(oEntering) && GetLocalNumber(GetModule(), 0) > 2 && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			Db_PostString("CANDEROUS MOVE OUT", 5, 5, 1.0);
			
			SetGlobalNumber("Tar_Canderous", 2);
			
			SignalEvent(GetObjectByTag("daviktroop041", 0), EventUserDefined(3000));
			SignalEvent(GetObjectByTag("daviktroop042", 0), EventUserDefined(3000));
			SignalEvent(GetObjectByTag("daviktroop043", 0), EventUserDefined(3000));
			SignalEvent(GetObjectByTag("canderous043", 0), EventUserDefined(3000));
		}
		else
			{
				Db_PostString("CANDEROUS STAY", 5, 5, 1.0);
			}
}
