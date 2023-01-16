// Sets sTag's orientation lock to Param1.
// kds 09/13/04

void main()
{

    int nBool = GetScriptParameter(1);
    string sString = GetScriptStringParameter();

    object oObject = GetObjectByTag(sString);

    if(sString == "pc") oObject = GetFirstPC();

    SetLockOrientationInDialog(oObject, nBool);

}

