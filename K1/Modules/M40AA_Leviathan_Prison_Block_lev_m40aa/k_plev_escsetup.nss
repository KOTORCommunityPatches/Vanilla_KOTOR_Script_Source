// DeNCS failed to decompile. Manual reconstruction. Partial binary match. Original script omits a variable for ActionStartConversation.

#include "k_inc_lev"

void main() {
	
	int nJailBreaker = GetGlobalNumber("Lev_Escape");
	object oCand;
	object oEntering = GetEnteringObject();
	object oCage;
	int nSkip = FALSE;
	
	if (!GetIsPC(oEntering) || UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			return;
		}
	
	UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
	
	SetGlobalFadeOut();
	
	SetCommandable(TRUE, GetFirstPC());
	
	oCage = CreateObject(OBJECT_TYPE_PLACEABLE, "lev40_tortcage", GetLocation(GetObjectByTag("lev40_wptorturecs", 0)), FALSE);
	
	AssignCommand(oCage, SetFacing(180.0));
	
	if (GetGlobalNumber("LEV_ESCAPE") == 0)
		{
			nJailBreaker = 6;
			
			SetGlobalNumber("LEV_ESCAPE", nJailBreaker);
		}
	
	AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("lev40_wptorturecs", 0), FALSE));
	
	if (1 == nJailBreaker)
		{
			Db_PostString("MISSION PLOT", 5, 5 , 1.0);
			
			CreateObject(OBJECT_TYPE_CREATURE, "lev_sithtroop004", GetLocation(GetObjectByTag("lev40_wpmisguard", 0)));
		}
	
	if (2 == nJailBreaker)
		{
			CreateObject(OBJECT_TYPE_CREATURE, "lev40_t3tech", GetLocation(GetObjectByTag("lev40_wpt3tech", 0)));
			CreateObject(OBJECT_TYPE_CREATURE, "lev40_shopdroid", GetLocation(GetObjectByTag("lev40_wpshopdroid", 0)));
			
			object oTech;
			int nCnt = 0;
			
			while (GetIsObjectValid(oTech = GetObjectByTag("lev40_idletech", nCnt)))
				{
					ChangeToStandardFaction(oTech, STANDARD_FACTION_NEUTRAL);
					
					nCnt++;
				}
		}
	
	if (3 == nJailBreaker)
		{
			Db_PostString("CREATING GUARD", 5, 5 , 5.0);
			
			CreateObject(OBJECT_TYPE_CREATURE, "lev_sithtroop003", GetLocation(GetObjectByTag("lev40_wpjolguard", 0)));
		}
	
	if (4 == nJailBreaker)
		{
			
		}
		else
			{
				oCand = CreateObject(OBJECT_TYPE_CREATURE, "p_cand", GetLocation(GetObjectByTag("lev40_spcand", 0)));
				
				AssignCommand(oCand, ActionJumpToObject(GetObjectByTag("lev40_spcandcell", 0), FALSE));
			}
	
	if (5 == nJailBreaker)
		{
			CreateObject(OBJECT_TYPE_CREATURE, "lev40_jutech", GetLocation(GetObjectByTag("lev40_wpjutech", 0)));
		}
	
	if (6 == nJailBreaker)
		{
			CreateObject(OBJECT_TYPE_CREATURE, "lev40_hktech0", GetLocation(GetObjectByTag("lev40_wptech0", 0)));
		}
	
	LEV_StripCharacter(GetObjectByTag("bastila", 0), GetObjectByTag("lev40_ptylocker", 0));
	LEV_StripCharacter(GetObjectByTag("carth", 0), GetObjectByTag("lev40_ptylocker", 0));
	LEV_StripCharacter(GetFirstPC(), GetObjectByTag("lev40_ptylocker", 0));
	
	if (!nSkip)
		{
			AssignCommand(GetObjectByTag("sithtrooper1", 0), ActionStartConversation(GetObjectByTag("sithcommander", 0), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
		}
		else
			{
				ExecuteScript("k_plev_goescape", OBJECT_SELF);
			}
}
