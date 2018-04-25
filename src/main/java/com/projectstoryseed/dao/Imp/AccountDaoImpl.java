package com.projectstoryseed.dao.Imp;

import com.projectstoryseed.dao.AccountDao;
import com.projectstoryseed.models.Account;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Repository
@Transactional
public class AccountDaoImpl implements AccountDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addAccount(Account Account){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(Account);
        session.flush();
    }

    public Account getAccountById(String id){
        Session session = sessionFactory.getCurrentSession();
        Account Account = (Account) session.get(Account.class, id);

        return Account;
    }

    public List<Account> getAccountList(){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Account");
        List<Account> Accounts = query.list();
        session.flush();

        return Accounts;
    }
    public void deleteAccount(String id){
        Session session = sessionFactory.getCurrentSession();
        session.delete(getAccountById(id));
        session.flush();

    }
}
