// c_have_any_co_cr: Returns true if Player possesses any u_l_colo_0[1-9]
// BMA-OEI 11/8/2004

int StartingConditional()
{
    int iResult = FALSE;

    object oPC = GetFirstPC();

    if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_01")))
    {
        iResult = TRUE;
    }
    else if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_02")))
    {
        iResult = TRUE;
    }
    else if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_03")))
    {
        iResult = TRUE;
    }
    else if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_04")))
    {
        iResult = TRUE;
    }
    else if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_05")))
    {
        iResult = TRUE;
    }
    else if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_06")))
    {
        iResult = TRUE;
    }
    else if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_07")))
    {
        iResult = TRUE;
    }
    else if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_08")))
    {
        iResult = TRUE;
    }
    else if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_09")))
    {
        iResult = TRUE;
    }

    return iResult;
}
