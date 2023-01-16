// a_102attattack
// This causes Atton to attack the player.
// CFA: 2-12-04

#include "k_inc_debug"

void main()
{

    //Make Atton attack.
    ClearAllActions ();
    DelayCommand(0.2,ChangeToStandardFaction(GetObjectByTag("Atton"), STANDARD_FACTION_HOSTILE_1));
    DelayCommand(0.2,AssignCommand(GetObjectByTag("Atton"),ActionAttack(GetFirstPC())) );

}

