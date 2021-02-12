package com.javainuse.dto;

import lombok.*;

import java.io.Serializable;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
public class AddProductDto implements Serializable {
    private String name;
    private Long price;
    private Long categoryId;
    private byte[] image;
    private String description;
}
