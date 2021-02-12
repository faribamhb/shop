package com.javainuse.dto;

import com.javainuse.entity.ProductCategory;
import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
public class ProductWithImage {
    private Long id;
    private String name;
    private Long price;
    private String  image;
    private String description;
    private ProductCategory productCategory;
}
