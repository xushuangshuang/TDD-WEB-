package com.xu;

import java.util.List;

public class Contant
{
    public void list()
    {
        ContantService contantService = new ContantService();

        List<Member> contantList = contantService.getAllContantList();
    }
}
