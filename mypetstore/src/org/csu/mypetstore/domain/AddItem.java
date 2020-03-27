package org.csu.mypetstore.domain;
import java.io.Serializable;
public class AddItem implements Serializable{
    private  String itemID;
    private  String productID;
    private  String description;
    private  String stock;
    private  String quantity;
    private  int listprice;
    private  int totalcost;

    public String getItemID() {
        return itemID;
    }

    public void setItemID(String itemID) {
        this.itemID = itemID;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStock() {
        return stock;
    }

    public void setStock(String stock) {
        this.stock = stock;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public int getListprice() {
        return listprice;
    }

    public void setListprice(int listprice) {
        this.listprice = listprice;
    }

    public int getTotalcost() {
        return totalcost;
    }

    public void setTotalcost(int totalcost) {
        this.totalcost = totalcost;
    }
}
