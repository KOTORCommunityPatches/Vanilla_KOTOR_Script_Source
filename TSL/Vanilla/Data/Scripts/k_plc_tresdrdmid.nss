//:: Created By: Kevin Saunders
//:: Copyright (c) 2004 Obsidian Entertainment
#include "k_inc_debug"
#include "k_inc_treas_k2"


void main()
{
    object oContainer = OBJECT_SELF;

    if(!GetLocalBoolean(oContainer, 57))
    {
        int numberOfItems = Random(2)+1;

        PlaceTreasureDroid(oContainer, numberOfItems);
        
        // CTJ-OEI 09-29-04
        // Optimization - We don't want to keep executing this script
        // over and over once it is done.  Script execution, and the
        // I/O associated with it, is very expensive.
        RemoveHeartbeat(OBJECT_SELF);
    }
}
