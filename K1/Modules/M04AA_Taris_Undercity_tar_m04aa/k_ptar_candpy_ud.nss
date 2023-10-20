// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_tar"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	switch (nUser)
		{
			case 2000:
				if (!UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01))
				{
					UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, TRUE);
				}
				else if (!UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02))
					{
						UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, TRUE);
					}
					else if (!UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03))
						{
							UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, TRUE);
						}
						else
							{
								int nPty;
								object oPM;
								
								Db_PostString("CANDEROUS TALK", 5, 5, 5.0);
								
								ClearAllActions();
								SurrenderToEnemies();
								AssignCommand(GetObjectByTag("daviktroop041", 0), ClearAllActions());
								AssignCommand(GetObjectByTag("daviktroop041", 0), SurrenderToEnemies());
								AssignCommand(GetObjectByTag("daviktroop042", 0), ClearAllActions());
								AssignCommand(GetObjectByTag("daviktroop042", 0), SurrenderToEnemies());
								AssignCommand(GetObjectByTag("daviktroop043", 0), ClearAllActions());
								AssignCommand(GetObjectByTag("daviktroop043", 0), SurrenderToEnemies());
								
								nPty = 0;
								
								while (nPty < GetPartyMemberCount())
									{
										oPM = GetPartyMemberByIndex(nPty);
										
										AssignCommand(oPM, ClearAllActions());
										CancelCombat(oPM);
										
										nPty++;
									}
								
								if (GetDistanceBetween(OBJECT_SELF, GetPartyMemberByIndex(0)) < 15.0)
									{
										NoClicksFor(3.3);
										DelayCommand(3.0, ActionStartConversation(GetPartyMemberByIndex(0), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
									}
									else
										{
											ExecuteScript("k_ptar_cander04", OBJECT_SELF);
										}
							}
			break;
			
			case 3000:
				ClearAllActions();
				
				TAR_MarkForCleanup(OBJECT_SELF);
				
				DelayCommand(24.0, DestroyObject(OBJECT_SELF));
				
				ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL);
				
					{
						object oCand = GetObjectByTag("canderous043", 0);
						object oCanMook041 = GetObjectByTag("daviktroop041", 0);
						object oCanMook042 = GetObjectByTag("daviktroop042", 0);
						object oCanMook043 = GetObjectByTag("daviktroop043", 0);
					
						if (OBJECT_SELF == oCanMook041)
							{
								ActionWait(1.0);
							}
						
						if (OBJECT_SELF == oCanMook042)
							{
								ActionWait(2.0);
							}
						
						if (OBJECT_SELF == oCanMook043)
							{
								ActionWait(3.0);
							}
						
						TAR_PlotMoveObject(GetObjectByTag("tar04_swcanext", 0), FALSE);
					}
			break;
			
			case 4000:
				ClearAllActions();
				ActionResumeConversation();
			break;
		}
}
