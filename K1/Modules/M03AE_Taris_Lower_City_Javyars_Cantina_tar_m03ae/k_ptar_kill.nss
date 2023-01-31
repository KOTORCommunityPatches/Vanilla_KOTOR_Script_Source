#include "k_inc_utility"

void main() {

	object oHelper1 = GetObjectByTag("invis_sound1", 0);
	object oHelper2 = GetObjectByTag("invis_sound2", 0);
	object oHelper3 = GetObjectByTag("invis_sound3", 0);
	object oCalo = GetObjectByTag("calo031", 0);
	object oRodian = GetObjectByTag("taproomvic031", 0);
	object oTwilek1 = GetObjectByTag("taproomvic032", 0);
	object oTwilek2 = GetObjectByTag("taproomvic033", 0);
	location lCorpse3 = GetLocation(GetObjectByTag("tar03_wpvic0", 0));
	location lCorpse1 = GetLocation(GetObjectByTag("tar03_wpvic1", 0));
	location lCorpse2 = GetLocation(GetObjectByTag("tar03_wpvic2", 0));
	object oBlaster = GetItemPossessedBy(oCalo, "G_W_HVYBLSTR01");
	
	UT_ActionPauseConversation(10.0);
	
	DestroyObject(oRodian, 0.0, TRUE);
	DestroyObject(oTwilek1, 0.0, TRUE);
	DestroyObject(oTwilek2, 0.0, TRUE);
	
	DelayCommand(1.0, AssignCommand(oCalo, ActionEquipItem(oBlaster, INVENTORY_SLOT_LEFTWEAPON, 0)));

	DelayCommand(0.5, AssignCommand(oCalo, PlaySound("cb_ht_blastleth1")));
	DelayCommand(1.0, AssignCommand(oCalo, PlaySound("cb_ht_blastleth2"))); // Sound doesn't exist
	DelayCommand(1.8, AssignCommand(oCalo, PlaySound("cb_ht_blastleth1")));
	DelayCommand(2.5, AssignCommand(oCalo, PlaySound("cb_ht_blastleth2"))); // Sound doesn't exist
	
	DelayCommand(1.7, AssignCommand(oHelper1, PlaySound("n_swoopgang_hit1")));
	DelayCommand(2.9, AssignCommand(oHelper2, PlaySound("n_rodian_hit1")));
	DelayCommand(3.3, AssignCommand(oHelper3, PlaySound("n_swoopgang_hit1")));
	
	DelayCommand(2.0, UT_CreateObject(OBJECT_TYPE_CREATURE, "bp_dead3", lCorpse3));
	DelayCommand(2.5, UT_CreateObject(OBJECT_TYPE_CREATURE, "bp_dead1", lCorpse1));
	DelayCommand(3.0, UT_CreateObject(OBJECT_TYPE_CREATURE, "bp_dead2", lCorpse2));
}