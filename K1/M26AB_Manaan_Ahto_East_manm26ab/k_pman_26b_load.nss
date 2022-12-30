#include "k_inc_man"

void main() {
	
	if (GetGlobalBoolean("MAN_SITHBASE_SEALED") && HasNeverTriggered())
		{
			PlaceNPC("man26_sdroid");
			PlaceNPC("man26_selcut03");
			PlaceNPC("man26_drdcut01");
			PlaceNPC("man26_drdcut02");
			PlaceNPC("man26_drdcut03");
			PlaceNPC("man26_drdcut04");
			PlaceNPC("man26_drdcut05");
		}
}
