#include "k_inc_debug"

void main() {
	
	Db_PostString("Firing Area Stript = " + IntToString(GetGlobalBoolean("punk_stargem")), 5, 5, 5.0);
	
	if (GetGlobalBoolean("punk_stargem") == TRUE)
		{
			SetLocked(GetObjectByTag("unk44_stardoor", 0), FALSE);
		}
	
	if (GetGlobalNumber("G_FinalChoice") > 0)
		{
			SetLocked(GetObjectByTag("unk44_exitdoor", 0), FALSE);
		}
}