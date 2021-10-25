package Cart.cart;

import Cart.entity.Product;
import Cart.data.ProductIO;
import Cart.model.ProductModel;
import util.ServletUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductsServlet", value = "/loadProducts")
public class ProductsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Product> listp = null;
        try {
            listp = ProductModel.getAll();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        session.setAttribute("products", listp);
        ServletUtil.forward("/Cart/index.jsp", request, response);
    }
}
