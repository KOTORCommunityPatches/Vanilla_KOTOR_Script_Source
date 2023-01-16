// a_adjust_skill
// Param 1: The ID of the skill to modify. List is below.
// Param 2: The amount to modify the skill (negatives allowed).
//  Computer Use = 0
//  Demolitions = 1
//  Stealth = 2
//  Awareness = 3
//  Persuade = 4
//  Repair = 5
//  Security = 6
//  Treat Injury = 7
// This script will modify the requested skill on GetFirstPC().
void main() {

    // int nSkill = GetScriptParameter( 1 );
    // int nAmount = GetScriptParameter( 2 );
    // Increase his Awareness by 2.
    AdjustCreatureSkills( GetObjectByTag ("HK47"), 3, 2 );
    // Increase his Treat Injury by 2.
    AdjustCreatureSkills( GetObjectByTag ("HK47"), 3, 2 );
    // Give +2 to Will-Based saves.
    ModifyWillSavingThrowBase ( GetObjectByTag ("HK47"), 2 );
    AdjustCreatureAttributes ( GetObjectByTag ("HK47"), ABILITY_WISDOM, 1 );

}
