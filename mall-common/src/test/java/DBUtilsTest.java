import com.mall.service.utils.JDBCUtils1;
import com.mall.service.utils.JdbcUtils;
import org.junit.Test;

import java.sql.SQLException;

public class DBUtilsTest {
    @Test
    public  void test1(){
        try {
            System.out.println(JdbcUtils.getDs().getConnection());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    @Test
    public void test2(){
        JDBCUtils1.getConnection();
    }
}
