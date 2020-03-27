package org.csu.mypetstore.persistence;
import org.csu.mypetstore.domain.AddItem;

import java.io.Serializable;
import java.util.List;

public interface cartDAO {
    List<AddItem> getCartListByUsername(String username);
    boolean insertItem(AddItem cart);
    AddItem getcart( String username);
}
