// GetStringByStrRef hotfix

#include "k_inc_man"
 
 void main() {
 	
	if (GetIsPC(GetEnteringObject()))
		{
			DelayCommand(1.0, RemoveSuits());
		}
 }
