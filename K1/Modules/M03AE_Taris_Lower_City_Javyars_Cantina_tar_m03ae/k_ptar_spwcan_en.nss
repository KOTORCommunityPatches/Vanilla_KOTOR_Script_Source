#include "k_inc_debug"

void main() {
	
	object oCand;
	object oEntering = GetEnteringObject();
	
	Db_PostString(("TAR_CANDSPAWN = " + IntToString(GetGlobalBoolean("TAR_CANDSPAWN"))), 5, 5, 5.0);
	Db_PostString(("TAR_SWOOPRACE = " + IntToString(GetGlobalBoolean("Tar_SwoopRace"))), 5, 6, 5.0);
	
	if ((!GetGlobalBoolean("TAR_CANDSPAWN") && GetIsPC(oEntering) && GetGlobalBoolean("Tar_SwoopRace")) || GetGlobalNumber("TAR_CANDMEET") == 1)
		{
			SetGlobalBoolean("TAR_CANDSPAWN", TRUE);
			
			if (GetGlobalNumber("TAR_CANDMEET") == 1)
				{
					SetGlobalNumber("TAR_CANDMEET", 2);
				}
			
			oCand = CreateObject(OBJECT_TYPE_CREATURE, "tar03_cander031", GetLocation(GetObjectByTag("ptar_spcander", 0)), 0);
		}
}