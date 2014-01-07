// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.sau.sausensor.server.domain;

import edu.sau.sausensor.server.controller.ApplicationConversionServiceFactoryBean;
import edu.sau.sausensor.server.domain.enumtyped.EMts400Results;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;

privileged aspect Mts400Results_Roo_Json {

    public String Mts400Results.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }

    public String Mts400Results.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").serialize(this);
    }
    public String Mts400Results.toEnumJson() {
        ApplicationConversionServiceFactoryBean applicationConversionServiceFactoryBean = new ApplicationConversionServiceFactoryBean();

        EMts400Results eMts400Results=  applicationConversionServiceFactoryBean.getMts400ResultsToEMts400ResultsConverter().convert(this);

        return new JSONSerializer().exclude("*.class").serialize(eMts400Results);
    }
    public static Mts400Results Mts400Results.fromJsonToMts400Results(String json) {
        return new JSONDeserializer<Mts400Results>().use(null, Mts400Results.class).deserialize(json);
    }

    public static String Mts400Results.toJsonArray(Collection<Mts400Results> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    public static String Mts400Results.toEnumJsonArray(Collection<Mts400Results> collection) {
        ApplicationConversionServiceFactoryBean applicationConversionServiceFactoryBean = new ApplicationConversionServiceFactoryBean();
        List list=(List)collection;
        ListIterator listIterator=list.listIterator();
        Collection<EMts400Results> collectionEnum=new ArrayList<EMts400Results>();
        while(listIterator.hasNext()){
            Mts400Results mts400Results=(Mts400Results)listIterator.next();
            EMts400Results eMts400Results=  applicationConversionServiceFactoryBean.getMts400ResultsToEMts400ResultsConverter().convert(mts400Results);
            collectionEnum.add(eMts400Results);
        }
        return new JSONSerializer().exclude("*.class").serialize(collectionEnum);

    }

    public static String Mts400Results.toJsonArray(Collection<Mts400Results> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").serialize(collection);
    }

    public static Collection<Mts400Results> Mts400Results.fromJsonArrayToMts400Resultses(String json) {
        return new JSONDeserializer<List<Mts400Results>>().use(null, ArrayList.class).use("values", Mts400Results.class).deserialize(json);
    }

}
