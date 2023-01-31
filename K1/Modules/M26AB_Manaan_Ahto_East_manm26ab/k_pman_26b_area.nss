// GetStringByStrRef hotfix

#include "k_inc_man"

void main() {
	
	if (GetIsPC(GetEnteringObject())
		{
			InitiateSitters();
			SetTokenRaceTime(18, 2382);
			SetTokenRaceTime(19, 2325);
			SetTokenRaceTime(20, 2250);
			SetTokenRaceTime(21, 2248);
			SetGlobalNumber("MAN_RANDOM", d8(1));
			int nTime;
			int nMin;
			int nSec;
			int nMSec;
			nMin = GetGlobalNumber("MAN_SWOOP_MIN");
			nSec = GetGlobalNumber("MAN_SWOOP_SEC");
			nMSec = GetGlobalNumber("MAN_SWOOP_MSEC");
			nTime = ((nMin * 6000) + (nSec * 100) + nMSec);
			
			if (GetGlobalNumber("k_geno_ithorak") >= 10)
				{
					DestroyObject(GetObjectByTag("Vek", 0));
				}
			
			if (HasNeverTriggered())
				{
					SetCustomToken(17, GetStringByStrRef(32289));
					SetCustomToken(22, GetStringByStrRef(32289));
					SetCustomToken(23, GetStringByStrRef(32289));
				}
				else if (nTime > 0)
					{
						SetGlobalBoolean("MAN_JUST_RACED", TRUE);
						
						if (UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02) == FALSE)
							{
								UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, TRUE);
								SetTokenRaceTime(23, nTime);
							}
						
						SetTokenRaceTime(17, nTime);
						int nBeat = (GetGlobalNumber("MAN_BEST_MIN") * 6000) + (GetGlobalNumber("MAN_BEST_SEC") * 100) + GetGlobalNumber("MAN_BEST_MSEC");
						
						if (nTime < nBeat || nBeat == 0)
							{
								SetTokenRaceTime(22, nTime);
								SetGlobalNumber("MAN_BEST_MIN", nMin);
								SetGlobalNumber("MAN_BEST_SEC", nSec);
								SetGlobalNumber("MAN_BEST_MSEC", nMSec);
							}
						
						SetGlobalBoolean("MAN_SWOOP_DONE", FALSE);
						int nOpponent = GetOpponent();
						
						if (nOpponent == 1)
							{
								if (nTime < 2382)
									{
										SetManaanRaceStateGlobal(1);
										SetPlayerNotPaidLocal(TRUE);
										SetQueedleStateGlobal(1);
										AddJournalQuestEntry("Man26ab_swoopraces", 50);
									}
									else
										{
											SetPlayerLostLastRaceGlobal(TRUE);
										}
							}
							else if (nOpponent == 2)
								{
									if (nTime < 2325)
										{
											SetPlayerNotPaidLocal(TRUE);
											
											if (GetManaanRaceStateGlobal() == 1)
												{
													SetManaanRaceStateGlobal(2);
													AddJournalQuestEntry("Man26ab_swoopraces", 60);
												}
												else
													{
														SetManaanRaceStateGlobal(1);
														AddJournalQuestEntry("Man26ab_swoopraces", 50);
													}
										}
										else
											{
												SetPlayerLostLastRaceGlobal(1);
											}
								}
								else if (nOpponent == 3)
									{
										if (nTime < 2250)
											{
												SetPlayerNotPaidLocal(TRUE);
												
												if (GetManaanRaceStateGlobal() == 2)
													{
														SetHuktaMadGlobal(TRUE);
														SetManaanRaceStateGlobal(3);
														AddJournalQuestEntry("Man26ab_swoopraces", 80);
													}
													else
														{
															SetManaanRaceStateGlobal(2);
															AddJournalQuestEntry("Man26ab_swoopraces", 60);
														}
												}
												else
													{
														SetPlayerLostLastRaceGlobal(1);
													}
									}
									else if (nOpponent == 4)
										{
											if (nTime < 2248)
												{
													SetManaanRaceStateGlobal(3);
													SetPlayerNotPaidLocal(TRUE);
													AddJournalQuestEntry("Man26ab_swoopraces", 80);
												}
												else
													{
														SetPlayerLostLastRaceGlobal(1);
													}
										}

						SetOpponent(0);
						
						if (GetGlobalBoolean("MAN_OFFICIAL_RACE"))
							{
								AssignCommand(GetObjectByTag("man26_swpreg", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 1));
								SetGlobalBoolean("MAN_OFFICIAL_RACE", 0);
							}
							else
								{
									AssignCommand(GetObjectByTag("man26_zoffice_01", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 1));
									SetGlobalBoolean("MAN_OFFICIAL_RACE", 0);
								}
					}
			
			SetGlobalNumber("MAN_SWOOP_MIN", 0);
			SetGlobalNumber("MAN_SWOOP_SEC", 0);
			SetGlobalNumber("MAN_SWOOP_MSEC", 0);
			
			if (GetQueedleUpgradeGlobal() == TRUE)
				{
					SetQueedleStateGlobal(2);
				}
			
			if (GetGlobalBoolean("MAN_SITHBASE_SEALED"))
				{
					object oDoor = GetObjectByTag("man26ab_door02", 0);
					SetLocked(oDoor, FALSE);
					AssignCommand(oDoor, ActionCloseDoor(oDoor));
					int nNth;
					object oWarDrd = GetObjectByTag("pman_sithwar", nNth);
					
					while (GetIsObjectValid(oWarDrd))
						{
							DestroyObject(oWarDrd, 0.0, TRUE);
							
							nNth++;
							
							oWarDrd = GetObjectByTag("pman_sithwar", nNth);
						}
					
					DestroyObject(GetObjectByTag("man26_sithdip", 0), 0.0, TRUE);
					
					if (UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04) == FALSE)
						{
							UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04, TRUE);
							SignalEvent(OBJECT_SELF, EventUserDefined(100));
						}
				}
			
			if (UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03))
				{
					DestroyObject(GetObjectByTag("man_litedrd03", 0));
					DestroyObject(GetObjectByTag("man_pud01", 0));
					DestroyObject(GetObjectByTag("man_pud02", 0));
				}
				else
					{
						UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, TRUE);
					}
		}
}