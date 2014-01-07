// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.sau.sausensor.server.domain;

import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

privileged aspect NodeHealth_Roo_Jpa_ActiveRecord {

    @PersistenceContext
    transient EntityManager NodeHealth.entityManager;

    public static final EntityManager NodeHealth.entityManager() {
        EntityManager em = new NodeHealth().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }

    public static long NodeHealth.countNodeHealths() {
        return entityManager().createQuery("SELECT COUNT(o) FROM NodeHealth o", Long.class).getSingleResult();
    }

    public static List<NodeHealth> NodeHealth.findAllNodeHealths() {
        return entityManager().createQuery("SELECT o FROM NodeHealth o", NodeHealth.class).getResultList();
    }

    public static NodeHealth NodeHealth.findNodeHealth(Integer id) {
        if (id == null) return null;
        return entityManager().find(NodeHealth.class, id);
    }

    public static List<NodeHealth> NodeHealth.findNodeHealthEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM NodeHealth o", NodeHealth.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }

    @Transactional
    public void NodeHealth.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }

    @Transactional
    public void NodeHealth.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            NodeHealth attached = NodeHealth.findNodeHealth(this.id);
            this.entityManager.remove(attached);
        }
    }

    @Transactional
    public void NodeHealth.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }

    @Transactional
    public void NodeHealth.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }

    @Transactional
    public NodeHealth NodeHealth.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        NodeHealth merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }

}
