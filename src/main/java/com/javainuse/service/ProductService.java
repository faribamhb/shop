package com.javainuse.service;


import com.javainuse.entity.Product;
import com.javainuse.repository.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<Product> findAll() {

      return productRepository.findAll();
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id);

    }
}
