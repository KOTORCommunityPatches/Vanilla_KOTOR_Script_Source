
void main()
{
 if(GetLastAttacker() == GetObjectByTag("baodur"))
 {
     object oDoor = OBJECT_SELF;

    AssignCommand( oDoor, ActionUnlockObject( oDoor ) );
    AssignCommand( oDoor, ActionOpenDoor( oDoor ) );
 }
 if(!IsNPCPartyMember(NPC_BAO_DUR) &&
    GetDistanceBetween(GetPartyLeader(),GetObjectByTag("Baodur")) <= 12.0)
    DelayCommand(0.1, ActionStartConversation(OBJECT_SELF,"000ffield"));
}
