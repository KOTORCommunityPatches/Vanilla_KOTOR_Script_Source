// Byte code does not match
#include "k_inc_debug"

void main() {
	
	if (GetIsObjectValid(GetObjectByTag("jolee", 0)) == FALSE && GetIsObjectValid(GetObjectByTag("juhani", 0)) == FALSE && GetGlobalNumber("G_FinalChoice") == 1)
		{
			Db_PostString("start conv", 5, 5, 1.0);
			
			if (GetIsObjectValid(GetObjectByTag("bastila", 0)) == TRUE)
				{
					Db_PostString("bast valid", 5, 6, 1.0);
				}
				else
					{
						Db_PostString("bast not valid", 5, 6, 1.0);
					}
			
			AssignCommand(GetObjectByTag("bastila", 0), ClearAllActions());
			DelayCommand(0.5, AssignCommand(GetObjectByTag("bastila", 0), ActionStartConversation(GetFirstPC(), "unk44_exittrig", FALSE, 0, TRUE)));
			DelayCommand(1.0, DestroyObject(OBJECT_SELF));
		}
}