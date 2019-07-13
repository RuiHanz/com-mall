import com.mall.service.utils.JdbcUtils;

import java.sql.SQLException;

public class DBUtilsTest {
    public static void main(String[] args) throws SQLException {
        System.out.println(JdbcUtils.getDs().getConnection());
    }
}
