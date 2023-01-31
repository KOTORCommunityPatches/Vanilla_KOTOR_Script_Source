// Byte code does not match

void main() {
 	
 	if (GetLocked(OBJECT_SELF) == FALSE)
 		{
 			if (GetGlobalNumber("Tar_LastHolo") != 5)
 				{
 					if (GetGlobalBoolean("Tar_HoloActive") == FALSE)
 						{
 							SetGlobalNumber("Tar_LastHolo", 0);
 							SetGlobalBoolean("Tar_HoloActive", TRUE);
 							ActionStartConversation(GetLastUsedBy(), "", FALSE, 0, FALSE);
 						}
 					if (GetGlobalBoolean("Tar_HoloActive") == TRUE)
 						{
 							ActionStartConversation(GetLastUsedBy(), "Tar_Holoexplod", FALSE, 0, FALSE);
 						}
 				}
 			if (GetGlobalNumber("Tar_LastHolo") == 5)
 				{
 					SetLocked(OBJECT_SELF, TRUE);
 					SetGlobalNumber("Tar_LastHolo", 6);
 					PlayAnimation(ANIMATION_PLACEABLE_ACTIVATE, 1.0, 0.0);
 					PlaySound("gen_shieldredon");
 					DelayCommand(0.5, AssignCommand(GetObjectByTag("tar03_box", 0), ActionStartConversation(GetFirstPC(), "Tar_HoloOpen", FALSE, 0, FALSE)));
 				}
 		}
 }