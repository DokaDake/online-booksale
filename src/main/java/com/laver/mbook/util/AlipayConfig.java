package com.laver.mbook.util;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */
public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

        // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
        public static String app_id = "";

        // 商户私钥，您的PKCS8格式RSA2私钥
        public static String merchant_private_key = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCnB5WAhk5KhgJfFnzCSifJhR+Ir7dkVk5yrGYD5kDyUdfErqCpfynvQxv5XA/145GvYlFznxY86YunViH7HgCEp6wlQEsG7byM7xKfvezvFJRzmq6E/MWEs80toUaZeSBCLPsxw7vHYGLP4b0FX9MBkpX12m9xupvPtqeZn0sirhkTj/JrH4wjVKrXRQV2KvRcteLY21EAeQHyBfXbS6fC5NKH4JpKIEGb5e4qcfR3sO/SC8T+HVYy99GVSasyJywpFunpNlTNU8LBvQQ7fd+ZIbDxa3cR68eJP0XFdeON+9Jvi5tcxFD/RL1rt1MkBnBpiaRi3VAOPvM35wSCMaSDAgMBAAECggEBAIct7CEIkXRe4Kx0VqQnv+uogczt6U6bSwIj5KxjPUzgT/AuJHkJIbcyaQF3MLOgade3ipQ4vJavrQbQ/s9tiJ3T1c6QKiiBX4fwNPJzk74qubqWBYg7yt+LZRL441pyXVkxblroPqEtsMrttz0SQIOVTyiakHdKv69r9FiwQu7dBWPKUuYEGv9wH3+H6YQnUuy6qPeqOpwniNYvJLvYFk6WR8Bcr6LoQ6ceWYdIbsn1liYTcmogPymLBhA6M0hk0vEbmP59XiElSue4r4JC3uqMEijv+Pgj2eudja4dN79OPmdf5Sl3E6HLuUFCc0ZDAzNi96RkaLukXJNHE5Jk2wECgYEA8Ry7Rvc6OZoRt4OEz8jQp/8exyQNQYpqSrn0oeaODcXIkbaGwWL3PVA8kOE+RK3ynI5q15bqQWdvRH1SVvjbG/zP8+8VKQpmpH0BbQtHfZJ30ypN6HOST521LysCPiogwnNJy2jRFAu8Wwd87D95s07/tfRbZl10/1POWSxaoMsCgYEAsVfTjmohtQ7OgC/OOI2vwH31hs5GDoDvke4zy3JmjxFcFmOroNb7bCpx/btUoeBFn1n6PELkHNs88zUn4uwwDZiNpmMMGts8Sus2RAqrcy6wrZC9K+Lc+ONRSILsPihJWbU38btwln06Qb1xhLyYH016M5bqQeGIHhiXcHHBLCkCgYEAjp0b+MHK4r9Ks21LZUu2f2fbYJbmcFnavRB4rjqc03ClTerUkhZjfxSyfk98cUsiMY/bimFtdfokSjKGPYM8trU2m2ZS8c+BHtIBwenmA1RbI7/mDRQu+oCh5qBd1z872Ugv4ezBnkXCx2UKcwKojXKwtYMvfMDSryN27i/Z+zkCgYEAnrp/Lf6sQMQJ7A3dxBx87AtRUOEbLywUQUc0sKmqRe9BvwBiw0joLD4pXPLooyJ67k+4e2tbhMBt4zj2hFLmB6U9U2lfkkIbyuqP3YK3RhbKJ+9eggNByLqdLAuSq2efj111vzUHZoqbM+/9xNKQTaQo9jfjYCgejuFv2kLWpVECgYAIzME45sOx7b518qUhdC0bUMAFduc7mHzlhcnVeSwR+X4GpYCg39wZT+iKbcBZNQ78IMb5ub1loS9xlSpQ7GFcoTbDswJQ0BUNW0fIILK4dQ6/9vi9LWOuElkpLMAOeeqQ131pyDSPypeh626zx/r5rrdjRFaN2qsUE+zyQJRAjg==";

        // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
        public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAolbVvCSYbripYe7bRH7WLZSO7DYmeRPO6S4zj+CElD26z0ijjrg8Tml3ep/KuEeNyzw9t1I11l5Ra5kQ7rRNy8OrI6BC/HWqB8JhRNUNRQbKzWB+TnKUDOq36O+TnGLdeQS4dJb3TwKS1W++8IkBYL37pXjdfoo0qev4xf9boEjn36n27LVVvWPfJ8k5YA1TgkBl31an5THqSEmcpA7cGLeSHjnxwiVMU8CD5gtLJ1QNlsrBjzOs4i5azht15IL3RvivxBoAApDwJTZG2ob+4POQAlrFBCtFRE/F7N0kTfZlYdR/4hAJ0IluKlLYybeamOgTKtjj/QtNjOkuvl6sbQIDAQAB";

        // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
        public static String notify_url = "http://localhost:8080/pay/notify_url.jsp";

        // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
        public static String return_url = "http://localhost:8080/index.do";

        // 签名方式
        public static String sign_type = "RSA2";

        // 字符编码格式
        public static String charset = "utf-8";

        // 支付宝网关
        public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

        // 支付宝网关
        public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

        /**
         * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
         * @param sWord 要写入日志里的文本内容
         */
        public static void logResult(String sWord) {
            FileWriter writer = null;
            try {
                writer = new FileWriter(log_path + "支付日志_alipay_log_" + System.currentTimeMillis()+".txt");
                writer.write(sWord);
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (writer != null) {
                    try {
                        writer.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
}
