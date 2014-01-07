// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.sau.sausensor.server.domain;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect NodeHealthL_Roo_Json {

    public String NodeHealthL.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }

    public String NodeHealthL.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").serialize(this);
    }

    public static NodeHealthL NodeHealthL.fromJsonToNodeHealthL(String json) {
        return new JSONDeserializer<NodeHealthL>().use(null, NodeHealthL.class).deserialize(json);
    }

    public static String NodeHealthL.toJsonArray(Collection<NodeHealthL> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }

    public static String NodeHealthL.toJsonArray(Collection<NodeHealthL> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").serialize(collection);
    }

    public static Collection<NodeHealthL> NodeHealthL.fromJsonArrayToNodeHealthLs(String json) {
        return new JSONDeserializer<List<NodeHealthL>>().use(null, ArrayList.class).use("values", NodeHealthL.class).deserialize(json);
    }

}
