package com.xu;

import com.util.XuShuangShuangJunit;
import com.util.AbstractXSJunit;

public class ConstanceDaoTest extends XuShuangShuangJunit
{
    public void test_删除存在的指定id的联系人()
    {
        DBServiceMock dbService = new DBServiceMock();
        ConstanceDao constance = new ConstanceDao(dbService);
        
        constance.deleteById(1L);

        assertEquals("DELETE FROM constance WHERE id=1", dbService.executeSQL);
    }
}
