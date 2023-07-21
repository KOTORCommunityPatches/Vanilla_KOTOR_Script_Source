#include "k_inc_end"
void main()
{
    if(GetPartyMemberByIndex(0) == GetTrask())
    {
        SetLocked(OBJECT_SELF,FALSE);
        ActionOpenDoor(OBJECT_SELF);
        SetGlobalNumber("END_TRASK_DLG",8);
        ActionStartConversation(GetFirstPC(),"end_trask01",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE);
    }
    else
    {
        ActionStartConversation(GetFirstPC());
    }
}
