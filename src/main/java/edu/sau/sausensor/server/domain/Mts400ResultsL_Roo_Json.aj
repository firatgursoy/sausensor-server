// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.sau.sausensor.server.domain;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Mts400ResultsL_Roo_Json {

    public String Mts400ResultsL.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }

    public String Mts400ResultsL.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").serialize(this);
    }

    public static Mts400ResultsL Mts400ResultsL.fromJsonToMts400ResultsL(String json) {
        return new JSONDeserializer<Mts400ResultsL>().use(null, Mts400ResultsL.class).deserialize(json);
    }

    public static String Mts400ResultsL.toJsonArray(Collection<Mts400ResultsL> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }

    public static String Mts400ResultsL.toJsonArray(Collection<Mts400ResultsL> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").serialize(collection);
    }

    public static Collection<Mts400ResultsL> Mts400ResultsL.fromJsonArrayToMts400ResultsLs(String json) {
        return new JSONDeserializer<List<Mts400ResultsL>>().use(null, ArrayList.class).use("values", Mts400ResultsL.class).deserialize(json);
    }

}
