package util;

import Cart.entity.Cart;
import Cart.entity.Product;
import Cart.model.CartModel;
import Cart.model.ProductModel;

import java.sql.SQLException;
import java.util.List;

public class testUtil {
    public static void main(String[] args) throws SQLException {
        /*List<Product> listp = ProductModel.getAll();
        System.out.println("success");
        for (Product pro : listp) {
            System.out.println("Id: " + pro.getId() + " || " + "Name: " + pro.getDescription() + " || " + pro.getPrice());
        }*/
        /*List<Cart> listc = CartModel.getAll();
        System.out.println(listc.size());*/
        /*int id = CartModel.getLastId();
        System.out.println(id);*/
        Cart cartUp = CartModel.getById(1);
        System.out.println(cartUp.getId());
    }
}
