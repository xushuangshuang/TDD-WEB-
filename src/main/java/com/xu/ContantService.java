package com.xu;

import java.util.List;
import java.util.ArrayList;

public class ContantService
{
    ContantDao contantDao = new ContantDao();

    public List<Member> getAllContantList()
    {
        List<Member> contantList = contantDao.getAllContantList();

        return contantList;
    }
}
