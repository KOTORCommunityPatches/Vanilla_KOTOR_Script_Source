#include "k_inc_kas"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	if ((nUser == 100))
		{
			if ((GetMandalorianPlotGlobal() > 0))
				{
					object oDatapad = GetItemPossessedBy(OBJECT_SELF, "kas25_datapad1");
					
					ClearAllActions();
					DestroyObject(oDatapad);
				}
		}
		else {
			if ((nUser == 1001)) {
			}
			else {
				if ((nUser == 1002)) {
				}
				else {
					if ((nUser == 1003)) {
					}
					else {
						if ((nUser == 1004)) {
						}
						else {
							if ((nUser == 1005)) {
							}
							else {
								if ((nUser == 1006)) {
								}
								else {
									// DEATH
									if ((nUser == 1007))
										{
											if ((GetMandalorianPlotGlobal() < 1))
												{
													SetMandalorianPlotGlobal(1);
												}
											
											SignalEvent(GetNearestObjectByTag("kas25_mandalor01", OBJECT_SELF, 1), EventUserDefined(100));
											SignalEvent(GetNearestObjectByTag("kas25_mandalor01", OBJECT_SELF, 2), EventUserDefined(100));
										}
										else {
											if ((nUser == 1008)) {
											}
											else {
												if ((nUser == 1009)) {
												}
												else {
													if ((nUser == 1010)) {
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
}
