#include "k_inc_utility"
#include "k_inc_debug"

void main() {
	int nEvent = GetUserDefinedEventNumber();
	if (nEvent == 1001) {
	}
	else {
		if (nEvent == 1002) {
		}
		else {
			if (nEvent == 1003) {
			}
			else {
				if (nEvent == 1004) {
				}
				else {
					if (nEvent == 1005) {
					}
					else {
						if (nEvent == 1006) {
						}
						else {
							if (nEvent == 1007) {
							}
							else {
								if (nEvent == 1008) {
								}
								else {
									if (nEvent == 1009) {
									}
									else {
										if (nEvent == 1010) {
										}
										else {
											if (nEvent == 2000) {
												Db_PostString("PLAYING CHEER", 5, 5, 5.0);
												ClearAllActions();
												float nRand1 = IntToFloat((Random(1) + 1));
												float nRand2 = IntToFloat((Random(3) + 1));
												float nRand3 = IntToFloat((Random(5) + 1));
												DelayCommand(nRand1, ActionPlayAnimation(ANIMATION_FIREFORGET_VICTORY1, 1.0, 0.0));
												DelayCommand(nRand2, ActionPlayAnimation(ANIMATION_FIREFORGET_VICTORY1, 1.0, 0.0));
												DelayCommand(nRand3, ActionPlayAnimation(ANIMATION_FIREFORGET_VICTORY1, 1.0, 0.0));
											}
											else {
												if (nEvent == HOSTILE_RETREAT) {
													UT_ReturnToBase("wp_homebase");
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
}