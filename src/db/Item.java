package db;

//    В базе данных вы создадите таблицу:
//    items (
//    id - int(11) auto increment primary key,
//    name - varchar(255)
//    description - text
//    price - double
//    )
public class Item {
    private Long id;
    private String name;
    private String description;
    private double price;
    public Item(){}
    public Item(Long id, String name, String description, Double price){
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
    }

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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

}
