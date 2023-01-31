#include "k_inc_lev"

void main() {
	
	SetGlobalNumber("LEV_LEVEL", 1);
	
	LEV_CleanupDeadObjects(OBJECT_SELF);
	
	SetGlobalNumber("LEV_SPIKES", -1);
}