package com.projectstoryseed.dao;

import com.projectstoryseed.models.Account;

import java.util.List;


public interface AccountDao {
    void addAccount(Account account);

    Account getAccountById(String id);

    List<Account> getAccountList();

    void deleteAccount(String id);
}
