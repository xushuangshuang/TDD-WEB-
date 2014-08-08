package com.xu;

import java.sql.ResultSet;
import java.util.List;
import java.sql.SQLException;
import java.util.ArrayList;

public class ContantDao
{
    public List<Member> getAllContantList()
    {
        DBService dbService = DBService.newInstance();

        String listSql = "SELECT contant_name,contant_email FROM contant";
       
        try
        { 
            ResultSet rs = dbService.executeQuery(listSql);
            System.out.println(rs);
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }

        return new ArrayList<Member>();
    }
}
