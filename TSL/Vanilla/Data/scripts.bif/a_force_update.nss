//  a_force_update
/*
    Sets the Always Update flag, which is needed for any object that
    will be viewed in a cutscene located more than 250m from the PC

    sTag        - The tag of the object to set the flag on
    iOn         - The flag for whether to set the flag TRUE ir FALSE (1 = TRUE)
    iDestroy    - If 1, destroy the object after setting it's flag to FALSE
*/
//  Created By:  Tony Evans 9/20/04

void main()
{
    string sTag     = GetScriptStringParameter();
    int iOn         = GetScriptParameter(1);
    int iDestroy    = GetScriptParameter(2);

    object oTemp;

    // If no tag specified, set to OBJECT_SELF
    if (sTag == "") oTemp = OBJECT_SELF;
    else oTemp = GetObjectByTag(sTag);

    SetForceAlwaysUpdate( oTemp, iOn );

    if (iOn == 0 && iDestroy == 1) DelayCommand(0.5, DestroyObject(oTemp));
}


