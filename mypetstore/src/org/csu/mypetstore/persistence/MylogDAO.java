package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.Mylog;

import java.util.List;

public interface MylogDAO {
    List<Mylog> getMylogList(String username);

    Mylog getMylog(String username);

}
