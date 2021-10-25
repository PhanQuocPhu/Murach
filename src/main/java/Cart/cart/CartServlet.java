package Cart.cart;

import Cart.entity.Cart;
import Cart.entity.Product;
import Cart.model.CartModel;
import Cart.model.ProductModel;
import util.ServletUtil;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "CartServlet", value = "/cart/*")
public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/add":
            case "/update":
            case "/delete":
                try {
                    manageCart(request, response, path);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }

        }
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "cart";  // default action
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/listproduct";
        }
        switch (path) {
            case "/listproduct":
                List<Product> listp = null;
                try {
                    listp = ProductModel.getAll();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                request.setAttribute("products", listp);
                ServletUtil.forward("/Cart/index.jsp", request, response);
                break;
            case "/detail":
                HttpSession session = request.getSession();
                List<Cart> listc = null;
                try {
                    listc = CartModel.getAll();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                session.setAttribute("cart", listc);
                ServletUtil.forward("/Cart/cart.jsp", request, response);
                break;
            case "/checkout":
                ServletUtil.forward("/Cart/checkout.jsp", request, response);

        }

        // perform action and set URL to appropriate page
    }
    private void manageCart(HttpServletRequest request, HttpServletResponse response, String path) throws IOException, SQLException {
        HttpSession session = request.getSession();
        int id = 0;
        int proid = 0;
        if (request.getParameter("proid") != null)
            proid = Integer.parseInt(request.getParameter("proid"));
        int cartid = 0;
        if (request.getParameter("cartid") != null)
            cartid = Integer.parseInt(request.getParameter("cartid"));
        int quantity = 0;
        if (request.getParameter("quantity") != null)
            quantity = Integer.parseInt(request.getParameter("quantity"));
        Product product = ProductModel.getById(proid);
        Cart cart = new Cart();
        Cart cartUp = CartModel.getById(cartid);
        System.out.println(cartid);
        switch (path) {
            case "/add":
                id = CartModel.getLastId() + 1;
                cart.setId(id);
                cart.setProductByProductid(product);
                cart.setQuantity(quantity);
                CartModel.create(cart);
                response.sendRedirect("/cart/detail");
                break;
            case "/update":
                cartUp.setQuantity(quantity);
                CartModel.update(cartUp);
                response.sendRedirect("/cart/detail");
                break;
            case "/delete":
                CartModel.delete(cartUp);
                response.sendRedirect("/cart/detail");
                break;
        }
    }
}
