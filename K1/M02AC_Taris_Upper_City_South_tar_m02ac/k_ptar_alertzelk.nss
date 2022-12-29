#include "k_inc_tar"

void main() {
	
	object oOpener = GetLastOpenedBy();
	object oZelka = GetObjectByTag("Zelka021", 0);
	
	Db_PostString("FAILED TO OPEN", 5, 5, 5.0);
	
	if (!UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			if (!TAR_GetWearingSithArmor(OBJECT_INVALID))
				{
					UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
				}
			
			if (GetGlobalNumber("tar_zelkarm") < 2)
				{
					SetGlobalNumber("Tar_ZelkaRm", 1);
					NoClicksFor(1.2);
					DelayCommand(1.0, UT_NPC_InitConversation("Zelka021", "", OBJECT_INVALID));
				}
				else
					{
						if (GetGlobalNumber("tar_zelkarm") < 2)
							{
								SetGlobalNumber("tar_zelkarm", 99);
							}
					}
			
			if (GetTag(oOpener) == "Zelka021")
			{
				AssignCommand(oOpener, ActionResumeConversation());
				SetLocked(OBJECT_SELF, TRUE);
			}
		}
}
