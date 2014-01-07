// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.sau.sausensor.server.domain;

import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

privileged aspect AccountRoles_Roo_Jpa_ActiveRecord {

    @PersistenceContext
    transient EntityManager AccountRoles.entityManager;

    public static final EntityManager AccountRoles.entityManager() {
        EntityManager em = new AccountRoles().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }

    public static long AccountRoles.countAccountRoleses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AccountRoles o", Long.class).getSingleResult();
    }

    public static List<AccountRoles> AccountRoles.findAllAccountRoleses() {
        return entityManager().createQuery("SELECT o FROM AccountRoles o", AccountRoles.class).getResultList();
    }

    public static AccountRoles AccountRoles.findAccountRoles(Long id) {
        if (id == null) return null;
        return entityManager().find(AccountRoles.class, id);
    }

    public static List<AccountRoles> AccountRoles.findAccountRolesEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AccountRoles o", AccountRoles.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }

    @Transactional
    public void AccountRoles.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }

    @Transactional
    public void AccountRoles.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AccountRoles attached = AccountRoles.findAccountRoles(this.id);
            this.entityManager.remove(attached);
        }
    }

    @Transactional
    public void AccountRoles.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }

    @Transactional
    public void AccountRoles.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }

    @Transactional
    public AccountRoles AccountRoles.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AccountRoles merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }

}
