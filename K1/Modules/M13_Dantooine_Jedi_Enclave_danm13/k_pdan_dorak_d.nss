#include "k_inc_dan"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	switch (nUser)
	{
		case 10:
			if (GetGlobalNumber("Dan_DorakHistory") == 0)
				{
					UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, TRUE);
					ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE);
				}
		break;
	}
}
