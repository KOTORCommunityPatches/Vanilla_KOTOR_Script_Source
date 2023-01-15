//  k_con_obj_count
/*
    Counts the number of object in the area. By default it will get the OBJECT_TYPE of
    a given tag and count all instances of that object type in the area.  Returns true
    if the number of creatures is not greater than a given number.

    sTag    - The tag of the object to search (default OBJECT_SELF)
    iNum    - Returns true if the number of objects derived from sTag is less than iNum
    iName   - If set to 1, count all instances of objects that BEGIN with the string given in sTag
              If set to 2, count all instances that END in sTag
              If set to 3, count all instances that CONTAIN in sTag
    iOutput - If set to 12 to 28, the number of objects will be stored in that local number of
              the object specified in sTag.  If object is invalid, it will use OBJECT_SELF
*/
//  Created By:  Tony Evans 9/14/04

int StartingConditional()
{
    string sTag = GetScriptStringParameter();
    int iNum = GetScriptParameter(1);
    int iName = GetScriptParameter(2);
    int iOutput = GetScriptParameter(3);

    // This variable will contain the number of objects
    int iCount;

    object oObject;

    if (sTag == "") oObject = OBJECT_SELF;

    else oObject = GetObjectByTag(sTag);

    if (!GetIsObjectValid(oObject)) oObject = OBJECT_SELF;

    // Get OBJECT_TYPE of Object (This variable is not used unless iNum == 0)
    int iObjType = GetObjectType (oObject);

    object oTemp = GetFirstObjectInArea();

    if (iName == 1)
    {
        while(GetIsObjectValid(oTemp))
        {
            // If the beginning (left side) of the string contains sTag, increment iCount
            if(GetStringLeft(GetTag(oTemp),GetStringLength(sTag)) == sTag) iCount++;
            oTemp = GetNextObjectInArea();
        }
    }

    else if (iName == 2)
    {
        while(GetIsObjectValid(oTemp))
        {
            // If the end (right side) of the string contains sTag, increment iCount
            if(GetStringRight(GetTag(oTemp),GetStringLength(sTag)) == sTag) iCount++;
            oTemp = GetNextObjectInArea();
        }
    }

    else if (iName == 3)
    {
        while(GetIsObjectValid(oTemp))
        {
            // If sTag is anywhere within the string, increment iCount
            if(FindSubString(GetTag(oTemp),sTag) >= 0) iCount++;
            oTemp = GetNextObjectInArea();
        }
    }

    // assuming iName == 0
    else
    {
        while(GetIsObjectValid(oTemp))
        {
            if (GetObjectType(oTemp) == iObjType) iCount++;
            oTemp = GetNextObjectInArea();
        }
    }

    if (iOutput > 11 && iOutput < 29)
    {
        if (iName == 0) AurPostString("Number of object type " + IntToString(iObjType) + " = " + IntToString(iCount),5,10,5.0);

        else AurPostString("Number of " + sTag + " = " + IntToString(iCount),5,10,5.0);

        SetLocalNumber(oObject, iOutput, iCount);
    }

    if (iCount <= iNum) return TRUE;

    return FALSE;
}
