// FileName a_sisteratk
// Created By: Ferret Baudoin (modified CFA - 1/16/04)
// This makes the Handmaidens freak out and attack.

void main()
{

    //Make first sister attack.
    DelayCommand(0.2,ChangeToStandardFaction(GetObjectByTag("Sister1"), STANDARD_FACTION_HOSTILE_1));
    DelayCommand(0.2,AssignCommand(GetObjectByTag("Sister1"),ActionAttack(GetFirstPC())) );

    //Make second sister attack.
    DelayCommand(0.2,ChangeToStandardFaction(GetObjectByTag("Sister2"), STANDARD_FACTION_HOSTILE_1));
    DelayCommand(0.2,AssignCommand(GetObjectByTag("Sister2"),ActionAttack(GetFirstPC())) );

    //Make third sister attack.
    DelayCommand(0.2,ChangeToStandardFaction(GetObjectByTag("Sister3"), STANDARD_FACTION_HOSTILE_1));
    DelayCommand(0.2,AssignCommand(GetObjectByTag("Sister3"),ActionAttack(GetFirstPC())) );

    //Make fourth sister attack.
    DelayCommand(0.2,ChangeToStandardFaction(GetObjectByTag("Sister4"), STANDARD_FACTION_HOSTILE_1));
    DelayCommand(0.2,AssignCommand(GetObjectByTag("Sister4"),ActionAttack(GetFirstPC())) );

    //Make fifth sister attack.
    DelayCommand(0.2,ChangeToStandardFaction(GetObjectByTag("Sister5"), STANDARD_FACTION_HOSTILE_1));
    DelayCommand(0.2,AssignCommand(GetObjectByTag("Sister5"),ActionAttack(GetFirstPC())) );

    //Make Handmaiden attack.
    DelayCommand(0.2,ChangeToStandardFaction(GetObjectByTag("Handmaiden"), STANDARD_FACTION_HOSTILE_1));
    DelayCommand(0.2,AssignCommand(GetObjectByTag("Handmaiden"),ActionAttack(GetFirstPC())) );
}
