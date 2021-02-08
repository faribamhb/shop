package com.javainuse.entity;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "User1")
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
public class User {
    @Id
    @SequenceGenerator(name = "UserSeq", allocationSize = 1, sequenceName = "UserSeq")
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;
    private String name;
    private String family;
    private String username;
    private String password;
    private String mobileNumber;

}
