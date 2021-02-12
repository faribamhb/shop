package com.javainuse.entity;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "ProductCategory")
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
public class ProductCategory {
    @Id
    @Column(name = "Category_Id")
    @SequenceGenerator(name = "ProductCategory_SEQ", sequenceName = "ProductCategory_SEQ", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ProductCategory_SEQ")
    private Long id;
    @Column(name = "name", columnDefinition = "varchar2(200)")
    private  String name;
    @Override
    public String toString() {
        return "ProductCategory{" +
                "id=" + id +
                ", name=" + name +
               '}';
    }
}
