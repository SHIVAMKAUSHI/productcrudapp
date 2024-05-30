package productcrudapp.dao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import productcrudapp.model.Product;


import javax.transaction.Transactional;
import java.util.List;

@Component
public class ProductDao {
    @Autowired
    private HibernateTemplate hibernateTemplate;
    @Transactional
    public void createProduct(Product product){

        this.hibernateTemplate.saveOrUpdate(product);
    }
    @Transactional
    public void deleteProduct(int id){

        this.hibernateTemplate.delete(this.hibernateTemplate.load(Product.class,id));

    }
    public Product getProduct(int id){

        return this.hibernateTemplate.get(Product.class,id);
    }
    public List<Product> getAllProduct(){

        return this.hibernateTemplate.loadAll(Product.class);
    }
}
