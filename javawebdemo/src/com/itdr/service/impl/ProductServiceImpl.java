package com.itdr.service.impl;

import com.itdr.common.ResponseCode;
import com.itdr.dao.ProductDao;
import com.itdr.pojo.Product;
import com.itdr.service.ProductService;
import com.mysql.jdbc.StringUtils;

import java.util.List;

public class ProductServiceImpl implements ProductService {
    private ProductDao productDao = new ProductDao();
    @Override
    public ResponseCode getAllProduct() {
        List<Product> product = productDao.selectAll();
        return ResponseCode.toSuccess(product);
    }
//商品下架
    @Override
    public ResponseCode toType(String id) {
        //非空判断
        if (id == null || "".equals(id)){
            return ResponseCode.toDefeated("非法参数！");
        }
        int i = Integer.parseInt(id);
//查找所有商品
        Product p = productDao.selectById(i);
        if (p == null){
            return ResponseCode.toDefeated("商品不存在！");
        }
        //修改商品信息
        int i2 = productDao.updateById(i);
        if (i2 < 0 ){
return ResponseCode.toDefeated("商品下架失败!");
        }
        return ResponseCode.toSuccess(i2);
    }

    @Override
    public ResponseCode fuzzyquery(String key) {
        if (StringUtils.isNullOrEmpty(key)){
            return ResponseCode.toDefeated("非法参数！");
        }
        String keyWord = "%"+key+"%";
        List<Product> list = productDao.selectByPname(keyWord);
        return ResponseCode.toSuccess(list);
    }
}
