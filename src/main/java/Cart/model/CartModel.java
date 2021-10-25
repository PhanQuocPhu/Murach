package Cart.model;

import Cart.entity.Cart;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

import java.sql.SQLException;
import java.util.List;

public class CartModel {
    private static final Session session = HibernateUtil.openSession();

    //Lấy id cuối
    public static int getLastId() throws SQLException {
        String hql = "select max(id) from Cart";
        if (CartModel.getAll().size() != 0) {
            return session.createQuery(hql, Integer.class).uniqueResult();
        } else {
            return 0;
        }

    }

    //Lấy hết
    public static List<Cart> getAll() throws SQLException {

        String hql = "from Cart  order by id";
        return session.createQuery(hql, Cart.class).list();
    }

    //Lấy theo ID
    public static Cart getById(int id) throws SQLException {
        session.clear();
        return (Cart) session.get(Cart.class, id);
    }

    //Thêm
    public static void create(Cart entity) {
        session.clear();
        Transaction t = session.beginTransaction();
        try {
            session.save(entity);
            t.commit();
        } catch (Exception e) {
            t.rollback();
        }
    }
    //update
    public static void update(Cart entity) {
        session.clear();
        // TODO Auto-generated method stub
        Transaction t = session.beginTransaction();
        try {
            session.update(entity);
            t.commit();
        }catch(Exception e) {
            t.rollback();
        }
    }
    //Xóa
    public static void delete(Cart entity) {
        session.clear();
        Transaction t = session.beginTransaction();
        try {
            session.delete(entity);
            t.commit();
        }catch(Exception e) {
            t.rollback();
        }
    }
}
