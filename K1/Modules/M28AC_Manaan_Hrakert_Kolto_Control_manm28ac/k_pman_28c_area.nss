// GetStringByStrRef hotfix

#include "k_inc_man"
 
 void main() {
 	
	if (GetIsPC(GetEnteringObject()))
		{
			DelayCommand(1.0, RemoveSuits());
			
			SetGlobalFadeOut();
			SetGlobalFadeIn(5.0, 1.5);
			
			SetPlayerRestrictMode(FALSE);
			
			if (GetManaanMainPlotVariable() >= PLOT_HARVEST_STOPPED)
				{
					ClearSelkathFromThisLevel();
				}
		}
 }
