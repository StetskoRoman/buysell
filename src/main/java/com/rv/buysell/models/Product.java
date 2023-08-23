package com.rv.buysell.models;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Product {

    Long ID;
    private String title;
    private String description;
    private int price;
    private String city;
    private String author;
}
