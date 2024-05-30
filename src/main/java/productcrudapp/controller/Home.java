package productcrudapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;
import productcrudapp.dao.ProductDao;
import productcrudapp.model.Product;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class Home {
    @Autowired
    ProductDao productDao;
    @RequestMapping("/")
    public String home(Model m){
        List<Product> allProduct = productDao.getAllProduct();
        m.addAttribute("title","Home");
        m.addAttribute("products",allProduct);
        return "index";
    }


//    show add product form
    @RequestMapping("/add-product")
    public String addProduct(Model m){
        m.addAttribute("title", "Add Product");
        return "add_product_form";
    }


//    handle add-product form
    @RequestMapping(value="/handle-product", method= RequestMethod.POST)
    public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request){
        System.out.println(product);
        productDao.createProduct(product);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath()+"/");
//        redirectView.setUrl("home");
        return  redirectView;
    }

//    delete the product
    @RequestMapping("/delete-product/{id}")
    public RedirectView deleteProduct(@PathVariable int id, HttpServletRequest request){
        productDao.deleteProduct(id);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath()+"/");
        return redirectView;
    }
    @RequestMapping("/update-product/{id}")
    public String updateProduct(@PathVariable int id, Model m){
        Product product = productDao.getProduct(id);
        m.addAttribute("product",product);
        return "update_product";
    }
}


