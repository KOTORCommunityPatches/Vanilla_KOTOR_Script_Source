//:: k_ren_unkturret
/*
     Loads Turret game with cover 7_4
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_stunt"

void main()
{
    SetGlobalNumber("K_TURRET_SKYBOX", 15);
    ST_PlayStuntTurret_07_4();
}
