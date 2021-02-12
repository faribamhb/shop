package com.javainuse.entity;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Product")
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Product implements Serializable {
    @Id
    @SequenceGenerator(name = "ProductSeq", allocationSize = 1, sequenceName = "ProductSeq")
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;
    @Column(name = "name", columnDefinition = "varchar2(200)")
    private String name;
    @Column(name = "price")
    private Long price;
    @Column(name = "description", columnDefinition = "varchar2(200)")
    private String description;
    @Lob
    @Column(name = "image", nullable=false)
    private byte[] image;
    @OneToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinColumn(name="Category_Id")
    private ProductCategory productCategory;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public ProductCategory getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(ProductCategory productCategory) {
        this.productCategory = productCategory;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name=" + name +
                ", image=" + image +
                ", description=" + description +
                '}';
    }
}
