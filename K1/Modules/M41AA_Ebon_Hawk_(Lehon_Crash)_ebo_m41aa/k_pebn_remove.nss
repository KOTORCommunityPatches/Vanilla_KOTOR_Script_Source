// Byte code does not match


 void main() {
 	if (GetIsPC(GetEnteringObject()) == TRUE)
 		{
 			RemoveJournalQuestEntry("tat18ac_dragonhunt");
 			RemoveJournalQuestEntry("kor25_doubtsith");
 			RemoveJournalQuestEntry("kas23_rorworr");
 			RemoveJournalQuestEntry("kor35_aidlashowe");
 			RemoveJournalQuestEntry("k_swg_helenatalk");
 			RemoveJournalQuestEntry("kas23_mainwookplot");
 			RemoveJournalQuestEntry("tat_ambush");
 			RemoveJournalQuestEntry("tat17ad_buyinghk47");
 			RemoveJournalQuestEntry("ebo_supplies");
 			RemoveJournalQuestEntry("man_elora");
 			RemoveJournalQuestEntry("kor33_enteracademy");
 			RemoveJournalQuestEntry("tat17aa_jawarescue");
 			RemoveJournalQuestEntry("kor35_findingdustil");
 			RemoveJournalQuestEntry("man_firith");
 			RemoveJournalQuestEntry("man_gluupor");
 			RemoveJournalQuestEntry("kas25_mandalorians");
 			RemoveJournalQuestEntry("kas22_EliMatton");
 			RemoveJournalQuestEntry("man_ignus");
 			RemoveJournalQuestEntry("k_jagi");
 			RemoveJournalQuestEntry("kas24_removepoachers");
 			RemoveJournalQuestEntry("tar_largobounty");
 			RemoveJournalQuestEntry("Man26ab_swoopraces");
 			RemoveJournalQuestEntry("tat17aa_middleman");
 			RemoveJournalQuestEntry("man_missing");
 			RemoveJournalQuestEntry("k_missbroth");
 			RemoveJournalQuestEntry("kor35_renegadesith");
 			RemoveJournalQuestEntry("man_merc");
 			RemoveJournalQuestEntry("kor38_roguedroid");
 			RemoveJournalQuestEntry("tat17ag_sandbounty");
 			RemoveJournalQuestEntry("tat17ae_signingnico");
 			RemoveJournalQuestEntry("kas22_starmap");
 			RemoveJournalQuestEntry("kor33_findstarmap");
 			RemoveJournalQuestEntry("man26_starmap");
 			RemoveJournalQuestEntry("tat17_starmap");
 			RemoveJournalQuestEntry("k_pebo_stowaway");
 			RemoveJournalQuestEntry("man_murder");
 			RemoveJournalQuestEntry("man_sunry");
 			RemoveJournalQuestEntry("kas24_tachpoaching");
 			RemoveJournalQuestEntry("tat18aa_tanistrapped");
 			RemoveJournalQuestEntry("tat17ae_swoopracing");
 			RemoveJournalQuestEntry("Category000");
 			RemoveJournalQuestEntry("kor35_doublecross");
 			RemoveJournalQuestEntry("kor35_doublecross2");
 			RemoveJournalQuestEntry("kor38_hermit");
 			RemoveJournalQuestEntry("kor35_mandalorian");
 			RemoveJournalQuestEntry("kor37_ajuntapall");
 			RemoveJournalQuestEntry("k_pebo_gizkatrouble");
 			RemoveJournalQuestEntry("kor35_waysith");
 			RemoveJournalQuestEntry("k_xor");
 			RemoveJournalQuestEntry("ebo46_unfinishedbusiness");
 			RemoveJournalQuestEntry("Tat20aa_worthy");
 			RemoveJournalQuestEntry("Genoharadan");
 			RemoveJournalQuestEntry("Geno_Ithorak");
 			RemoveJournalQuestEntry("Geno_Lorgal");
 			RemoveJournalQuestEntry("Geno_Rulan");
 			RemoveJournalQuestEntry("Geno_Vorn");
 			RemoveJournalQuestEntry("Geno_Zuulan");
 			RemoveJournalQuestEntry("k_pazaak");
 			
 			if (GetGlobalBoolean("EBO_HYPER_FIXED") == FALSE)
 				{
 					AssignCommand(GetObjectByTag("Hyperdrive", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
 					
 					if (GetGlobalBoolean("UNK_SHIPPARTS") == TRUE)
 						{
 							UT_NPC_InitConversation("invis", "ebo41_tell", OBJECT_INVALID);
 						}
 				}
 				else
 					{
 						AssignCommand(GetObjectByTag("Hyperdrive", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ACTIVATE));
 					}
 			
 			PlayRoomAnimation("m12aa_01q", 7);
 			
 			if (IsAvailableCreature(NPC_JOLEE) == TRUE))
 				{
 					DestroyObject(GetObjectByTag("bastila", 0), 0.0, TRUE);
 					RemovePartyMember(NPC_BASTILA);
 				}
 			
 			RevealMap();
 		}
 }
