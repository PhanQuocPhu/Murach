package Cart.entity;

import javax.persistence.*;
import java.text.NumberFormat;

@Entity
public class Cart {
    private int id;
    private int quantity;
    private Product productByProductid;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "quantity")
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Cart cart = (Cart) o;

        if (id != cart.id) return false;
        if (quantity != cart.quantity) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + quantity;
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "productid", referencedColumnName = "id", nullable = false)
    public Product getProductByProductid() {
        return productByProductid;
    }

    public void setProductByProductid(Product productByProductid) {
        this.productByProductid = productByProductid;
    }

}
