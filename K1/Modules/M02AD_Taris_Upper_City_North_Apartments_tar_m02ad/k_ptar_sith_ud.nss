#include "k_inc_utility"
#include "k_inc_generic"

void main() {
	int int1 = GetUserDefinedEventNumber();
	if ((int1 == 1001)) {
		object oTar02_wpsearch2;
		if (UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01)) {
			oTar02_wpsearch2 = GetObjectByTag("tar02_wpsearch0", 0);
		}
		else {
			if (UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02)) {
				oTar02_wpsearch2 = GetObjectByTag("tar02_wpsearch1", 0);
			}
			else {
				if (UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03)) {
					oTar02_wpsearch2 = GetObjectByTag("tar02_wpsearch2", 0);
				}
				else {
					return;
				}
			}
		}
		if ((GetStandardFaction(OBJECT_SELF) != STANDARD_FACTION_HOSTILE_1)) {
			if ((GetDistanceBetween(oTar02_wpsearch2, OBJECT_SELF) > 0.6)) {
				ActionMoveToObject(oTar02_wpsearch2, 0, 0.5);
			}
			else {
				ActionPlayAnimation(10, 1.0, 2.0);
			}
		}
	}
	else {
		if ((int1 == 1002)) {
		}
		else {
			if ((int1 == 1003)) {
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
								object oTar02_alienprisoner = GetObjectByTag("tar02_alienprisoner", 0);
								SignalEvent(oTar02_alienprisoner, EventUserDefined(2000));
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
											if ((int1 == 2000)) {
												ClearAllActions();
												ActionResumeConversation();
												ActionPlayAnimation(10, 1.0, 3.0);
											}
											else {
												if ((int1 == 3000)) {
													ClearAllActions();
													ActionEquipMostDamagingRanged(OBJECT_INVALID);
													ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
													DelayCommand(0.5, GN_DetermineCombatRound(OBJECT_INVALID));
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
}