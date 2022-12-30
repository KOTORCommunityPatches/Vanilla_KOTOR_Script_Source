#include "k_inc_utility"

void main() {
	int int1 = GetUserDefinedEventNumber();
	if ((int1 == 1001)) {
	}
	else {
		if ((int1 == 1002)) {
		}
		else {
			if ((int1 == 1003)) {
				if ((GetIsInConversation(OBJECT_SELF) == TRUE)) {
					ClearAllActions();
				}
			}
			else {
				if ((int1 == 1004)) {
				}
				else {
					if ((int1 == 1005)) {
					}
					else {
						if ((int1 == 1006)) {
						}
						else {
							if ((int1 == 1007)) {
								SetLightsaberPowered(GetFirstPC(), FALSE, FALSE, TRUE);
							}
							else {
								if ((int1 == 1008)) {
								}
								else {
									if ((int1 == 1009)) {
									}
									else {
										if ((int1 == 1010)) {
										}
										else {
											if ((int1 == 1011)) {
											}
											else {
												if ((int1 == HOSTILE_RETREAT)) {
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
