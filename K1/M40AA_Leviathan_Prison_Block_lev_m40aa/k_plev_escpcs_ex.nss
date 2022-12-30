// Byte code does not match

#include "k_inc_debug"
 
 void main() {
 	
 	Db_PostString("SITH COMMANDER START", 5, 5, 5.0);
 	
 	AssignCommand(GetObjectByTag("sithtrooper1", 0), ActionStartConversation(GetObjectByTag("sithcommander", 0), "lev40_sithcomman", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
 }
