// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.sau.sausensor.server.domain;

import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

privileged aspect Mts400ResultsL_Roo_Jpa_ActiveRecord {

    @PersistenceContext
    transient EntityManager Mts400ResultsL.entityManager;

    public static final EntityManager Mts400ResultsL.entityManager() {
        EntityManager em = new Mts400ResultsL().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }

    public static long Mts400ResultsL.countMts400ResultsLs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Mts400ResultsL o", Long.class).getSingleResult();
    }

    public static List<Mts400ResultsL> Mts400ResultsL.findAllMts400ResultsLs() {
        return entityManager().createQuery("SELECT o FROM Mts400ResultsL o", Mts400ResultsL.class).getResultList();
    }

    public static Mts400ResultsL Mts400ResultsL.findMts400ResultsL(Integer id) {
        if (id == null) return null;
        return entityManager().find(Mts400ResultsL.class, id);
    }

    public static List<Mts400ResultsL> Mts400ResultsL.findMts400ResultsLEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Mts400ResultsL o", Mts400ResultsL.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }

    @Transactional
    public void Mts400ResultsL.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }

    @Transactional
    public void Mts400ResultsL.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Mts400ResultsL attached = Mts400ResultsL.findMts400ResultsL(this.id);
            this.entityManager.remove(attached);
        }
    }

    @Transactional
    public void Mts400ResultsL.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }

    @Transactional
    public void Mts400ResultsL.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }

    @Transactional
    public Mts400ResultsL Mts400ResultsL.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Mts400ResultsL merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }

}
