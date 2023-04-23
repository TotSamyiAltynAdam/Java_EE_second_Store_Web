package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBConnection {
    private static Connection connection;

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/store_bd",
                    "root",
                    "ec2-hTS-BMm-fUT");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static ArrayList<Item> getItems() {
        ArrayList<Item> items = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM items"
            );
            ResultSet resultset = statement.executeQuery();
            while(resultset.next()){
                Item item = new Item();
                item.setId(resultset.getLong("id"));
                item.setName(resultset.getString("name"));
                item.setDescription(resultset.getString("description"));
                item.setPrice(resultset.getDouble("price"));
                items.add(item);
            }
            statement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return items;
    }
    public static ArrayList<User> getUsers(){
        ArrayList<User> users = new ArrayList<>();
        try{
            PreparedStatement statement = connection.prepareStatement(
             "SELECT * FROM users"
            );
            ResultSet resultSet = statement.executeQuery();
            while(resultSet.next()){
                User user = new User();
                user.setId(resultSet.getLong("id"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                user.setFullName(resultSet.getString("full_name"));

                users.add(user);
            }
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return users;
    }
    public static User getUser(String email){
        User user = null;
        try{
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * " +
                            "FROM users " +
                            "WHERE email LIKE ?"
            );
            statement.setString(1,email);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                user = new User();
                user.setId(resultSet.getLong("id"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                user.setFullName(resultSet.getString("full_name"));
            }
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }
}
