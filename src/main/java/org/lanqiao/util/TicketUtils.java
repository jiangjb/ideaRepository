package org.lanqiao.util;

/**
 * 
 * @ClassName TicketUtils
 * @Description 购票工具类
 * @author wangzhoucheng
 * @Date 2016年12月6日 下午12:59:27
 * @version 1.0.0
 */
public class TicketUtils {
    public static double getPriceByCode(String code){
        
        double price = 0;
        if(!"".equals(code)){
            if(code.contains("A")||code.contains("B")||
                    code.contains("C")||code.contains("D")){
                price=10;
            }
            if(code.contains("E")||code.contains("F")||
                    code.contains("G")||code.contains("I")){
                price=20;
            }
            if(code.contains("J")||code.contains("K")||
                    code.contains("L")){
                price=30;
            }
        }
        return price;
    }
    
    public static void main(String[] args) {
        System.out.println(getPriceByCode("J11"));
    }
}
