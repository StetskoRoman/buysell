package com.rv.buysell.controllers;

import com.rv.buysell.models.Product;
import com.rv.buysell.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;


    @GetMapping("/")
    public String products() {
        return "products"; //что получить надо- страницу в templates
    }

}
