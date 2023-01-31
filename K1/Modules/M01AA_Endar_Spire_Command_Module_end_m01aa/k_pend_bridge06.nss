#include "k_inc_end"

void main() {
	
	if (GetEnteringObject() == GetFirstPC())
		{
			SetGlobalBoolean("END_PC_ON_BRIDGE", TRUE);
		}
	
	if (GetEnteringObject() == GetTrask())
		{
			SetGlobalBoolean("END_TRASK_ON_BRIDGE", TRUE);
		}
}