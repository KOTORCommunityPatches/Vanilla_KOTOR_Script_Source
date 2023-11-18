// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_debug"

void main() {
	
	Db_PostString("firing gonto conv", 5, 5, 5.0);
	
	if (GetIsObjectValid(GetObjectByTag("man26_gonto", 0)) == TRUE)
		{
			Db_PostString("gonto valid", 5, 6, 5.0);
		}
		else
			{
				Db_PostString("not valid", 5, 6, 5.0);
			}
	
	if (GetIsInConversation(GetObjectByTag("man26_gonto", 0)) == TRUE)
		{
			Db_PostString("is already in conversation", 5, 7, 5.0);
		}
		else
			{
				Db_PostString("is not in conv", 5, 7, 5.0);
				AssignCommand(GetObjectByTag("man26_gonto", 0), ActionStartConversation(GetFirstPC(), "man26_gonto", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
			}
}
