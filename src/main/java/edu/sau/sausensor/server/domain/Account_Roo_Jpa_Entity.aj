// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.sau.sausensor.server.domain;

import javax.persistence.*;

privileged aspect Account_Roo_Jpa_Entity {

    declare @type: Account: @Entity;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Account.id;

    @Version
    @Column(name = "version")
    private Integer Account.version;

    public Long Account.getId() {
        return this.id;
    }

    public void Account.setId(Long id) {
        this.id = id;
    }

    public Integer Account.getVersion() {
        return this.version;
    }

    public void Account.setVersion(Integer version) {
        this.version = version;
    }

}
