#include "k_inc_debug"

void main() {
	
	if (GetIsPC(GetEnteringObject()) && !GetLoadFromSaveGame())
		{
			Db_PostString("Captives left = 8", 10, 10, 5.0);
			
			SetGlobalNumber("K_END_JEDI_LEFT", 8);
		}
}
