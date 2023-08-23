package com.rv.buysell.services;

import com.rv.buysell.models.Product;
import com.rv.buysell.repositories.ProductRepo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepo productRepo;

    public List<Product> listProducts(String title) {
        if (title != null) {
            return productRepo.findByTitle(title);
        }
        return productRepo.findAll();
    }

    public void saveProduct(Product product) {
        log.info("Saving new {}", product);
        productRepo.save(product);
    }

    public void deleteProduct(Long id) {
        productRepo.deleteById(id);
    }

    public Product getProductById(Long id) {
        return productRepo.findById(id).orElse(null);
    }
}
