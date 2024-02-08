// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"

void main() {
	
	SetGlobalBoolean("TAR_DUELINPROGRESS", FALSE);
	
	if (GetIsPC(GetExitingObject()))
		{
			TAR_EnableSithArmor();
		}
}
