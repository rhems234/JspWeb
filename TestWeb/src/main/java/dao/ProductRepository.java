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
		Product phone = new Product("p1234", "iPhone 6s", 8900);
		phone.setDescription("4.7-inch, 13334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Ring");
		phone.setManufacturer("KOR");
		phone.setUnitsInStock(100);
		phone.setCondition("New");
		phone.setFilename("P1234.png");
		
		Product notebook = new Product("p1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.png");
		
		Product tablet = new Product("p1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, 0cta-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");
		
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
