/*  a_lock_door

    Locks and closes a door.
    sTag - The Tag of the door to close and lock
    iDelay  - Delay before closing and locking

    Created:    TDE 7/28/04
    Modified:   TDE 8/29/04 (Added delay parameter)
*/

void main()
{
    string sTag = GetScriptStringParameter();
    int iDelay = GetScriptParameter(1);

    object oDoor = GetObjectByTag(sTag);
    DelayCommand(IntToFloat(iDelay), AssignCommand(oDoor,ActionLockObject(oDoor)));
    DelayCommand(IntToFloat(iDelay), AssignCommand(oDoor,ActionCloseDoor(oDoor)));
}
