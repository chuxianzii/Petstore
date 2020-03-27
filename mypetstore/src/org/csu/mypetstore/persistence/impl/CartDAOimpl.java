package org.csu.mypetstore.persistence.impl;

import org.csu.mypetstore.domain.AddItem;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.persistence.cartDAO;
import org.csu.mypetstore.persistence.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CartDAOimpl implements cartDAO{

    private static final String getProductListByCategoryString = "SELECT ITEMID, PRODUCTID, DESCRIPTION,STOCK,QUANTITY,LISTPRICE,TOTALCOST,USERNAME FROM CART USERNAME=? ";
    private static final String getcartbyusername= "SELECT ITEMID, PRODUCTID, DESCRIPTION,STOCK,QUANTITY,LISTPRICE,TOTALCOST,USERNAME FROM CART USERNAME=? ";
    private static final String getProductString = "SELECT PRODUCTID,NAME,DESCN as description,CATEGORY as categoryId from product WHERE PRODUCTID = ?";
    @Override
    public List<AddItem> getCartListByUsername(String username) {
        List<AddItem> products = new ArrayList<AddItem>();
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(getProductListByCategoryString);
            ResultSet resultSet = pStatement.executeQuery();
            while (resultSet.next()) {
                AddItem addItem = new AddItem();
                addItem.setItemID(resultSet.getString(1));
                addItem.setProductID(resultSet.getString(2));
                addItem.setDescription(resultSet.getString(3));
                addItem.setStock(resultSet.getString(4));
                addItem.setQuantity(resultSet.getString(5));
                addItem.setListprice(resultSet.getInt(6));
                addItem.setTotalcost(resultSet.getInt(7));
                products.add(addItem);
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(pStatement);
            DBUtil.closeConnection(connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    @Override
    public boolean insertItem(AddItem cart) {
        return false;
    }

    @Override
    public AddItem getcart(String username) {
        AddItem addItem = null;
        try{
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(getcartbyusername);
            preparedStatement.setString(1,username);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                addItem=new AddItem();
                addItem.setItemID(resultSet.getString(1));
                addItem.setProductID(resultSet.getString(2));
                addItem.setDescription(resultSet.getString(3));
                addItem.setStock(resultSet.getString(4));
                addItem.setQuantity(resultSet.getString(5));
                addItem.setListprice(resultSet.getInt(6));
                addItem.setTotalcost(resultSet.getInt(7));
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println(addItem);
        return addItem;
    }
}
