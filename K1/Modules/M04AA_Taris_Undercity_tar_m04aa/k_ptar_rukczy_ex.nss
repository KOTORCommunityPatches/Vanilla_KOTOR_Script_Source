// Byte code does not match

#include "k_inc_debug"
 
 void main() {
 	
 	object oExiting = GetExitingObject();
 	
 	if (GetIsPC(oExiting) && GetGlobalNumber("Tar_Rukil") == 50)
 		{
 			Db_PostString("RUKIL TALK", 5, 5, 1.0);
 			
 			AssignCommand(GetObjectByTag("Rukil04", 0), ActionStartConversation(oExiting));
 		}
 }