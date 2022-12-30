// Byte code does not match

void main() {
 	
 	if (GetLocked(OBJECT_SELF) == FALSE)
 		{
 			if (GetGlobalNumber("Tar_LastHolo") != 4)
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
 			if (GetGlobalNumber("Tar_LastHolo") == 4)
 				{
 					SetLocked(OBJECT_SELF, TRUE);
 					SetGlobalNumber("Tar_LastHolo", 5);
 					ActionPlayAnimation(ANIMATION_PLACEABLE_ACTIVATE, 1.0, 0.0);
 					PlaySound("gen_shieldredon");
 				}
 		}
 }
