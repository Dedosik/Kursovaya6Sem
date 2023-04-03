package com.boots.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;


@Entity
@Table(name = "kinofilms")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Kinofilm {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "description", columnDefinition = "text")
    private String description;
    @Column(name = "picture")
    private String picture;
    @Column(name = "type")
    private String type;
}
