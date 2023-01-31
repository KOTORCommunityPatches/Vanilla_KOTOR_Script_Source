#include "k_inc_kas"

void main() {
	
	if (GetEvilHurtLocal() == FALSE)
		{
			SetEvilHurtLocal(TRUE);
			UT_DarkSml(GetPCSpeaker());
		}
}