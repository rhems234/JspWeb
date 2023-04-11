package dao;

import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> ListOfProudcts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		Product phone = new Product("p1237", "Sliver Ring", 29000);
		phone.setDescription("Make your own color with Shoveoff");
		phone.setCategory("Ring");
		phone.setManufacturer("SHOVEOFF");
		phone.setUnitsInStock(100);
		phone.setCondition("New");
		phone.setFilename("P1237.png");
		
		Product notebook = new Product("p1238", "3106 RING", 25000);
		notebook.setDescription("It shows QUARQOR's own  TEXTURE experiment like a vintage style-that has more value over time.");
		notebook.setCategory("RING");
		notebook.setManufacturer("QUARQOR");
		notebook.setUnitsInStock(50);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1238.png");
		
		Product tablet = new Product("p1239", "oval wood", 138000);
		tablet.setDescription("oval wood ring This is a ring with a wooden engraving on the side of an oval natural stone.");
		tablet.setCategory("RING");
		tablet.setManufacturer("SHOVEOFF");
		tablet.setUnitsInStock(30);
		tablet.setCondition("Old");
		tablet.setFilename("P1239.png");
		
		ListOfProudcts.add(phone);
		ListOfProudcts.add(notebook);
		ListOfProudcts.add(tablet);
	}
	
	public ArrayList<Product> getAllProducts() {
		return ListOfProudcts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i = 0; i < ListOfProudcts.size(); i++) {
			Product product = ListOfProudcts.get(i);
			if(product != null && product.getProductId() != null 
					&& product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(Product product) {
		ListOfProudcts.add(product);
	}
}
