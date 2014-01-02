// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.sau.sausensor.server.domain;

import edu.sau.sausensor.server.domain.NodeHealthL;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect NodeHealthL_Roo_Finder {
    
    public static TypedQuery<NodeHealthL> NodeHealthL.findNodeHealthLsByNodeidEquals(Integer nodeid) {
        if (nodeid == null) throw new IllegalArgumentException("The nodeid argument is required");
        EntityManager em = NodeHealthL.entityManager();
        TypedQuery<NodeHealthL> q = em.createQuery("SELECT o FROM NodeHealthL AS o WHERE o.nodeid = :nodeid", NodeHealthL.class);
        q.setParameter("nodeid", nodeid);
        return q;
    }
    
}