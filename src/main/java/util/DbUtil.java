package util;

import org.sql2o.Connection;
import org.sql2o.Sql2o;

public class DbUtil {
    static private final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static private final String HOST_NAME = "localhost";
    static private final String DB_NAME = "pconlineweb";
    static private final String PORT = ":3306/";

    static private final String USER = "root";
    static private final String PASS = "";

    static private final String DB_URL = "jdbc:mysql://" + HOST_NAME + PORT + DB_NAME;


    static final Sql2o sql2o = new Sql2o(DB_URL, USER, PASS);

    public static Connection openConn() { return sql2o.open(); }

    public static Connection openTran() { return sql2o.beginTransaction(); }

}
