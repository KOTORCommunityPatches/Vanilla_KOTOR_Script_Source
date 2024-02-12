// c_skill_worst
// This returns TRUE if the requested skill has the lowest (or shares the
// lowest) rank of all of GetFirstPC()'s skills.
// Param 1: The ID of the skill to check. List is below.
//  Computer Use = 0
//  Demolitions = 1
//  Stealth = 2
//  Awareness = 3
//  Persuade = 4
//  Repair = 5
//  Security = 6
//  Treat Injury = 7
int StartingConditional() {

    int nRequestedSkill = GetScriptParameter( 1 );
    int nRequestedRank = GetSkillRankBase( nRequestedSkill, GetFirstPC() );

    int nWorstSkill = 0;
    int nWorstRank = 999;
    int nCounter;

    // Iterate over all of the skills and find the one with the
    // worst rank.
    for( nCounter = 0; nCounter < SKILL_MAX_SKILLS; nCounter++ ) {
        int nTestRank = GetSkillRankBase( nCounter, GetFirstPC() );
        if( nTestRank < nWorstRank ) {
            nWorstRank = nTestRank;
            nWorstSkill = nCounter;
        }
    }

    // If the worst skill we find is the same as the requested
    // skill, or the requested skill's rank is equal to the worst
    // skill's rank (since we found another one first) return TRUE.
    // Otherwise, return FALSE.
    if( nRequestedSkill == nWorstSkill ) {
        return TRUE;
    }

    if( nRequestedRank == nWorstRank ) {
        return TRUE;
    }

    return FALSE;
}
