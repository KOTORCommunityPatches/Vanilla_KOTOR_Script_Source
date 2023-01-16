#include "k_inc_utility"

void main() {
	
	object oSpike = GetItemPossessedBy(GetFirstPC(), "k_computer_spike");
	int nGlobal = GetGlobalNumber("LEV_SPIKES");
	int nStack;
	int nAdjust;
	
	if (nGlobal < 0)
		{
			return;
		}
	
	if (GetIsObjectValid(oSpike))
		{
			nStack = GetItemStackSize(oSpike);
			nAdjust = (nStack - nGlobal);
			
			if (nStack < nGlobal)
				{
					nAdjust = (-nAdjust);
				}
			
			UT_AlterItemStack(oSpike, nAdjust, nGlobal <= nStack);
		}
		else if (nGlobal > 0)
			{
					oSpike = CreateItemOnObject("g_i_progspike01", GetFirstPC(), 1);
					nStack = GetItemStackSize(oSpike);
					nAdjust = (nStack - nGlobal);
					
					if (nStack < nGlobal)
						{
							nAdjust = (-nAdjust);
						}
					
					UT_AlterItemStack(oSpike, nAdjust, nGlobal <= nStack);
			}
	
	SetGlobalNumber("LEV_SPIKES", -1);
}
