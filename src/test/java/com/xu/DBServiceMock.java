package com.xu;

public class DBServiceMock implements AbstractureDBService
{
    String executeSQL;
    public void executeUpdate(String sql)
    {
        executeSQL = sql;
    }
}
