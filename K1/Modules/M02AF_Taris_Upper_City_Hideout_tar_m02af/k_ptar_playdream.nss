#include "k_inc_debug"

void main() {
	
	SetGlobalFadeOut();
	
	Db_PostString("PLAYING MOVIE...", 5, 5, 5.0);
	
	SetGlobalNumber("K_CURRENT_PLANET", 10);
	SetGlobalNumber("tar_Carth", 1);
}