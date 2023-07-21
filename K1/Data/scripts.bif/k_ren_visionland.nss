//:: k_ren_visionland
/*
     Play the vision STUNT_00 land sequence
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_stunt"

void main()
{
    if(GetGlobalNumber("K_CURRENT_PLANET") == 5)
    {
        StartNewModule("tar_m02af","","01f");
    }
    // the special circumstances for the Dantooine version of Stunt_00
    else if(GetGlobalBoolean("DAN_STUNT00"))
    {
        SetGlobalBoolean("DAN_STUNT00",FALSE);
        StartNewModule("Danm13","","09");
    }
    else
    {
        ST_PlayVisionLanding();
    }
}

