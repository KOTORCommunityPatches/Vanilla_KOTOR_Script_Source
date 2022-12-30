#include "k_inc_lev"

void main() {
	
	object oSpike = GetItemPossessedBy(GetFirstPC(), "k_computer_spike");
	int nStack;
	int nMax = 99;
	int nAdjust;
	
	if (GetIsObjectValid(oSpike))
		{
			nStack = GetItemStackSize(oSpike);
			nAdjust = nStack - nMax;
			
			if (nStack < nMax)
				{
					nAdjust = -nAdjust;
				}
			
			Db_PostString("ADDING SPIKES-" + IntToString(nAdjust), 5, 5, 5.0);
			
			UT_AlterItemStack(oSpike, nAdjust, nMax <= nStack);
			
			SetGlobalNumber("LEV_SPIKES", nStack);
		}
		else if (nMax > 0)
			{
				oSpike = CreateItemOnObject("g_i_progspike01", GetFirstPC(), 1);
				nStack = GetItemStackSize(oSpike);
				nAdjust = nStack - nMax;
				
				if (nStack < nMax)
					{
						nAdjust = -nAdjust;
					}
				
				Db_PostString("CREATING SPIKES-" + IntToString(nAdjust), 5, 5, 5.0);
				
				UT_AlterItemStack(oSpike, nAdjust, (nMax <= nStack));
				
				SetGlobalNumber("LEV_SPIKES", 0);
			}
	
	DestroyObject(GetItemPossessedBy(GetFirstPC(), "tar09_icebreaker"), 0.0, TRUE);
}
