package com.mall.service.user;

public interface SignUpDao {
    //将获取到的信息存入数据库
    public void saveSignData(String yh_id,String yh_mch, String yh_mm, String yh_shjh);

}
