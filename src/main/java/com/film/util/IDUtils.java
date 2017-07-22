package com.film.util;

import java.util.Random;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/15.
 * 作用：电影主键生成
 */
public class IDUtils {
    public static int genItemId() {
        //取当前时间的长整形值包含毫秒
        int millis = (int)System.currentTimeMillis();
        //long millis = System.nanoTime();
        //如果不足两位前面补0
        return millis;
    }
}
