import com.film.util.JedisPoolUtil;
import org.junit.Test;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/8/7.
 * 作用：
 */
public class RedisTest {
    @Test
    public void testJedis(){
        // 创建一个jedis对象
        Jedis jedis = new Jedis("59.110.220.169", 6379);
        // 权限认证
        jedis.auth("123456");
        // 直接调用jedis对象的方法, 方法名称与jedis的命令一致
        jedis.set("key", "jedisTest");
        String key = jedis.get("key");
        System.out.println(key);
        // 关闭jedis
        jedis.close();
    }

    @Test
    public void testJedisPool1(){
        // 创建连接池
        JedisPool jedisPool = new JedisPool("59.110.220.169", 6379);

        // 获取连接
        Jedis jedis = jedisPool.getResource();

        // 权限认证
        jedis.auth("123456");

        // 进行操作
        String key = jedis.get("key");
        System.out.println(key);

        // 关闭连接
        jedis.close();
    }

    // 测试Jedis连接池工具类
    @Test
    public void testJedisPool2(){
        JedisPool jedisPool = null;
        Jedis jedis = null;
        try {
            // 获取连接
            jedisPool = JedisPoolUtil.getJedisPool();
            // 获取Jedis
            jedis = jedisPool.getResource();
            // 获取数据
            System.out.println(jedis.get("key"));
        } catch (Exception e){
            e.printStackTrace();
        } finally {
            JedisPoolUtil.returnJedisSource(jedisPool, jedis);
        }
    }
}
