package com.pipihao;


import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;
import org.junit.Test;

import java.util.UUID;

public class UtilsTest {

    /**
     * 测试加密
     */
    @Test
    public void testSha1(){
        Long s = System.currentTimeMillis();
        String uuid = UUID.randomUUID().toString().replace("-","").substring(0,20);
        System.out.println("uuid:"+uuid);
        System.out.println("pswd:"+DigestUtils.sha1Hex("123456"+uuid));
        System.out.println("耗时"+(System.currentTimeMillis()-s)+"s");
    }


//7c4a8d09ca3762af61e59520943dc26494f8941b

}
