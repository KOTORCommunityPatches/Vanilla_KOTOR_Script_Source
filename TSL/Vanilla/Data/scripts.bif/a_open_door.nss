/*  a_open_door

    Unlocks and opens a door.
    sTag    - The Tag of the door to open
    iDelay  - Delay before opening

    Created:    TDE 7/28/04
    Modified:   TDE 8/29/04 (Added delay parameter)
*/

void main()
{
    string sTag = GetScriptStringParameter();
    int iDelay = GetScriptParameter(1);

    object oDoor = GetObjectByTag(sTag);
    DelayCommand(IntToFloat(iDelay), AssignCommand(oDoor,ActionUnlockObject(oDoor)));
    DelayCommand(IntToFloat(iDelay), AssignCommand(oDoor,ActionOpenDoor(oDoor)));
}
