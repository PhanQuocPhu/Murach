package Cart.model;

import Cart.entity.Product;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

import java.sql.SQLException;
import java.util.List;

public class ProductModel {
    private static final Session session = HibernateUtil.openSession();
    //Lấy hết
    public static List<Product> getAll() throws SQLException {
        String hql = "from Product  order by id";
        return session.createQuery(hql, Product.class).list();
    }
    //Lấy theo ID
    public static Product getById(int id) throws SQLException {
        session.clear();
        return (Product) session.get(Product.class, id);
    }
    //Thêm
    public static void create(Product entity){
        session.clear();
        Transaction t = session.beginTransaction();
        try {
            session.save(entity);
            t.commit();
        } catch (Exception e) {
            t.rollback();
        }
    }
}
