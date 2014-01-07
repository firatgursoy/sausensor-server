// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.sau.sausensor.server.domain;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Sensor_Roo_Finder {
    
    public static TypedQuery<Sensor> Sensor.findSensorsByArea(Area area) {
        if (area == null) throw new IllegalArgumentException("The area argument is required");
        EntityManager em = Sensor.entityManager();
        TypedQuery<Sensor> q = em.createQuery("SELECT o FROM Sensor AS o WHERE o.area = :area", Sensor.class);
        q.setParameter("area", area);
        return q;
    }
    
    public static TypedQuery<Sensor> Sensor.findSensorsByNodeid(Mts400ResultsL nodeid) {
        if (nodeid == null) throw new IllegalArgumentException("The nodeid argument is required");
        EntityManager em = Sensor.entityManager();
        TypedQuery<Sensor> q = em.createQuery("SELECT o FROM Sensor AS o WHERE o.nodeid = :nodeid", Sensor.class);
        q.setParameter("nodeid", nodeid);
        return q;
    }
    
    public static TypedQuery<Sensor> Sensor.findSensorsByPerson(Person person) {
        if (person == null) throw new IllegalArgumentException("The person argument is required");
        EntityManager em = Sensor.entityManager();
        TypedQuery<Sensor> q = em.createQuery("SELECT o FROM Sensor AS o WHERE o.person = :person", Sensor.class);
        q.setParameter("person", person);
        return q;
    }
    
}
