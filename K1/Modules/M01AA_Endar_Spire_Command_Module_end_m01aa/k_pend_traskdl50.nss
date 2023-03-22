#include "k_inc_end"

void main() {
	
	SetTraskState(TRASK_MUST_MEDPACK);
	
	CreateItemOnObject("g_i_medeqpmnt01", GetFirstPC(), 1);
	CreateItemOnObject("g_i_medeqpmnt02", GetFirstPC(), 1);
}
