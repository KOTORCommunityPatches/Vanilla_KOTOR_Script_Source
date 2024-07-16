#include "k_inc_end"

void main() {
	
	if (GetExitingObject() == GetFirstPC())
		{
			SetGlobalBoolean("END_PC_ON_BRIDGE", FALSE);
		}
	
	if (GetExitingObject() == GetTrask())
		{
			SetGlobalBoolean("END_TRASK_ON_BRIDGE", FALSE);
		}
}
