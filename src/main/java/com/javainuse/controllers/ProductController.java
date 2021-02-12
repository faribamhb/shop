package com.javainuse.controllers;

import com.javainuse.dto.AddProductDto;
import com.javainuse.dto.ProductWithImage;
import com.javainuse.entity.Product;
import com.javainuse.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.annotation.MultipartConfig;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Map;

@Controller
public class ProductController {

	private final ProductService productService;

	public ProductController(ProductService productService) {
		this.productService = productService;
	}

	@RequestMapping("/")
	public String firstPage(Map<String, Object> model) {
		List<Product> products = productService.findAll();
		List<ProductWithImage> productWithImages=new ArrayList<>();
		for (Product product : products) {
			String image = new String(Base64.getEncoder().encode(product.getImage()));
			ProductWithImage productWithImage=ProductWithImage.builder()
					.id(product.getId())
					.name(product.getName())
					.description(product.getDescription())
					.image(image)
					.price(product.getPrice())
					.productCategory(product.getProductCategory())
					.build();
			productWithImages.add(productWithImage);

		}

		model.put("products",productWithImages);
		return "welcome";
	}

	@RequestMapping(value = "/deleteProduct",method = RequestMethod.GET)
	public String  deleteProduct(@RequestParam("id") Long id,Map<String, Object> model) {
	 productService.deleteProduct(id);
//		List<Product> products = productService.findAll();
//		model.put("products",products);
		return "home";

	}

	@RequestMapping(value = "/addProduct",method = RequestMethod.POST)
	public String  addProduct(@RequestParam("name") String name,
							  @RequestParam("description") String description,
							  @RequestParam("price")  String  price,
							  @RequestParam("categoryId")  Long categoryId,
							  @RequestParam("image") MultipartFile image
			) throws IOException {

		productService.addProduct(name,description,price,categoryId,image);



		return "home";

	}
}
