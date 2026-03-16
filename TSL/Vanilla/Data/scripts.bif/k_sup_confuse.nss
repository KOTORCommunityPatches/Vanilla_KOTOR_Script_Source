
void main()
{
    //Make sure the creature is commandable for the round
    SetCommandable(TRUE);
    //Clear all previous actions.
    ClearAllActions();
    int nRandom = d10();
    //Roll a random int to determine this rounds effects
//    if(nRandom  == 1)
    {
//       ActionRandomWalk();
    }
  //  else if (nRandom >= 2 && nRandom  <= 3)
//    {
//        ClearAllActions();
//    }
//    else if(nRandom >= 4 && nRandom <= 10)
//    {
        ActionAttack(GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_FRIEND));
//    }
    SetCommandable(FALSE);
}
