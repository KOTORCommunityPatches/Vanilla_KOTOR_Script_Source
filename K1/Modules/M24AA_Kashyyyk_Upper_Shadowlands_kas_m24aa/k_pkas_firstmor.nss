// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_utility"

object oRulan = GetObjectByTag("Rulan", 0);
object oGlobalPC = GetFirstPC();
object oGlobalPM1 = GetPartyMemberByIndex(1);
object oGlobalPM2 = GetPartyMemberByIndex(2);

void Respawn(string sString, location lLoc1, int nNum1, int nNum2) {
	int nEffect1;
	int nEffect2;
	location lLoc2 = GetLocation(GetObjectByTag("kas_rulan_morph_jump_wp2", 0));
	
	if (nNum1 == TRUE)
		{
			nEffect1 = 1047;
		}
		else
			{
				nEffect1 = 1046;
			}
	
	if (nNum2 == TRUE)
		{
			nEffect2 = 1047;
		}
		else
			{
				nEffect2 = 1046;
			}
	
	DelayCommand(0.5, PlaySound("v_imp_heal"));
	DelayCommand(0.2, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(nEffect1, FALSE), lLoc1, 0.0));
	DelayCommand(0.6, AssignCommand(oRulan, JumpToLocation(GetLocation(GetObjectByTag("kas_rulan_morph_jump_wp", 0)))));
	DelayCommand(1.8, DestroyObject(oRulan, 0.0, FALSE, 0.0));
	
	DelayCommand(2.7, PlaySound("v_pro_afflict"));
	DelayCommand(0.9, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(nEffect1, FALSE), lLoc1, 0.0));
	DelayCommand(1.8, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(nEffect2, FALSE), lLoc1, 0.0));
	
	DelayCommand(0.02, UT_CreateObject(OBJECT_TYPE_CREATURE, sString, lLoc2));
	DelayCommand(1.8, AssignCommand(GetObjectByTag(sString, 0), JumpToLocation(lLoc1)));
}

void main() {
	
	SetGlobalNumber("k_Rulan_morph", GetGlobalNumber("k_Rulan_morph") + 1);
	
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	location lRulan = GetLocation(oRulan);
	string sTag;
	int nCam;
	
	sTag = "rulan_jolee";
	
	SetGlobalNumber("KAS_RULAN_NPC", 3);
	
	nCam = 29;
	
	UT_ActionPauseConversation(6.2);
	
	AssignCommand(oRulan, PlayAnimation(ANIMATION_LOOPING_GET_LOW, 1.5, 10.0));
	
	DelayCommand(0.1, Respawn(sTag, lRulan, FALSE, TRUE));
	
	DelayCommand(0.8, SetDialogPlaceableCamera(28));
	
	DelayCommand(2.0, SetDialogPlaceableCamera(nCam));
}
