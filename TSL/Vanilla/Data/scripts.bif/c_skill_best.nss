// c_skill_best
// This returns TRUE if the requested skill has the highest (or shares the
// highest) rank of all of GetFirstPC()'s skills.
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

    int nBestSkill = 0;
    int nBestRank = 0;
    int nCounter;

    // Iterate over all of the skills and find the one with the
    // best rank.
    for( nCounter = 0; nCounter < SKILL_MAX_SKILLS; nCounter++ ) {
        int nTestRank = GetSkillRankBase( nCounter, GetFirstPC() );
        if( nTestRank > nBestRank ) {
            nBestRank = nTestRank;
            nBestSkill = nCounter;
        }
    }

    // If the best skill we find is the same as the requested
    // skill, or the requested skill's rank is equal to the best
    // skill's rank (since we found another one first) return TRUE.
    // Otherwise, return FALSE.
    if( nRequestedSkill == nBestSkill ) {
        return TRUE;
    }

    if( nRequestedRank == nBestRank ) {
        return TRUE;
    }

    return FALSE;
}
