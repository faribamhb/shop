package com.javainuse.service;

import com.javainuse.entity.ProductCategory;
import com.javainuse.repository.ProductCategoryRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductCategoryService {
    private final ProductCategoryRepository productCategoryRepository;

    public ProductCategoryService(ProductCategoryRepository productCategoryRepository) {
        this.productCategoryRepository = productCategoryRepository;
    }

    public List<ProductCategory> findAll() {
      return   productCategoryRepository.findAll();
    }
}
