// GetStringByStrRef hotfix

#include "k_inc_man"

void main() {
 	
	if (GetGlobalBoolean("MAN_SITHBASE_SEALED") && HasNeverTriggered())
		{
			PlaceNPC("man26_selarb");
		}
}
