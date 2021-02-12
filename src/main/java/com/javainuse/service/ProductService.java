package com.javainuse.service;


import com.javainuse.entity.Product;
import com.javainuse.entity.ProductCategory;
import com.javainuse.repository.ProductCategoryRepository;
import com.javainuse.repository.ProductRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Optional;

import org.apache.commons.io.IOUtils;

@Service
public class ProductService {
    private final ProductRepository productRepository;
    private final ProductCategoryRepository productCategoryRepository;

    public ProductService(ProductRepository productRepository, ProductCategoryRepository productCategoryRepository) {
        this.productRepository = productRepository;
        this.productCategoryRepository = productCategoryRepository;
    }

    public List<Product> findAll() {

      return productRepository.findAll();
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id);

    }

    public void addProduct(String name, String description, String price, Long categoryId, MultipartFile image) throws IOException {
        InputStream fileContent = image.getInputStream();
        byte[] imageFile = IOUtils.toByteArray(fileContent);
        Optional<ProductCategory> category = productCategoryRepository.findById(categoryId);
        Product product=Product.builder()
                .name(name)
                .description(description)
                .image(imageFile)
                .price(Long.valueOf(price))
                .productCategory(category.get())
                .build();
        productRepository.save(product);
    }
}
