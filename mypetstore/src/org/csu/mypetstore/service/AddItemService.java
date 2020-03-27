package org.csu.mypetstore.service;
import org.csu.mypetstore.domain.AddItem;
import org.csu.mypetstore.persistence.cartDAO;
import org.csu.mypetstore.persistence.impl.CartDAOimpl;

import java.util.List;

public class AddItemService {

    private cartDAO cartDAO;


    public AddItemService(){
        cartDAO = new CartDAOimpl();
    }

    public List<AddItem> getCartListByUsernamet(String username)
    {
        return cartDAO.getCartListByUsername(username);
    }
    public AddItem getMycart(String username) { return cartDAO.getcart(username); }
}
