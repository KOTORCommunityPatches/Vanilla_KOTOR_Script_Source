//:: c_302_items_as
/*
    Returns 1 if
      the player didn't install the item yet

      exception: 44, 45

Key

41: Navigation Interface
42: Maneuvering Flaps
43: Power Cells
44: Unlocked controls
45: All systems go.
46: all systems not go.

*/
//:: Created By: Kevin Saunders
//:: Copyright 2004 Obsidian Entertainment
int StartingConditional()
{
    int nLocal = GetScriptParameter(1);
    object oItem;

    switch (nLocal)
    {
        case 41:
        {
            return !(GetGlobalNumber("302NAR_Airspeeder_41"));
        }break;
        case 42:
        {
            return !(GetGlobalNumber("302NAR_Airspeeder_42"));
        }break;
        case 43:
        {
            return !(GetGlobalNumber("302NAR_Airspeeder_43"));
        }break;
        case 44:
        {
            return (GetGlobalNumber("302NAR_Airspeeder_44") == 1);
        }break;
        case 45:
        {
            return(GetGlobalNumber("302NAR_Airspeeder_41") &&
                   GetGlobalNumber("302NAR_Airspeeder_42") &&
                   GetGlobalNumber("302NAR_Airspeeder_43") &&
                  (GetGlobalNumber("302NAR_Airspeeder_44") == 2));
        }break;
        case 46:
        {
            return !(GetGlobalNumber("302NAR_Airspeeder_41") &&
                     GetGlobalNumber("302NAR_Airspeeder_42") &&
                     GetGlobalNumber("302NAR_Airspeeder_43") &&
                    (GetGlobalNumber("302NAR_Airspeeder_44") == 2));
        }break;
    }
    return 0;
}
