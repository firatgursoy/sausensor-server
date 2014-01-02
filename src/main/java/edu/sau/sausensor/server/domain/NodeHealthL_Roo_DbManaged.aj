// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.sau.sausensor.server.domain;

import edu.sau.sausensor.server.domain.NodeHealthL;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect NodeHealthL_Roo_DbManaged {
    
    @Column(name = "battery")
    private Integer NodeHealthL.battery;
    
    @Column(name = "board_id")
    private Integer NodeHealthL.boardId;
    
    @Column(name = "dropped")
    private Integer NodeHealthL.dropped;
    
    @Column(name = "epoch")
    private Integer NodeHealthL.epoch;
    
    @Column(name = "forwarded")
    private Integer NodeHealthL.forwarded;
    
    @Column(name = "health_pkts")
    private Integer NodeHealthL.healthPkts;
    
    @Column(name = "node_pkts")
    private Integer NodeHealthL.nodePkts;
    
    @Column(name = "nodeid")
    private Integer NodeHealthL.nodeid;
    
    @Column(name = "parent")
    private Integer NodeHealthL.parent;
    
    @Column(name = "parent_rssi")
    private Integer NodeHealthL.parentRssi;
    
    @Column(name = "path_cost")
    private Integer NodeHealthL.pathCost;
    
    @Column(name = "power_sum")
    private Integer NodeHealthL.powerSum;
    
    @Column(name = "quality_rx")
    private Integer NodeHealthL.qualityRx;
    
    @Column(name = "quality_tx")
    private Integer NodeHealthL.qualityTx;
    
    @Column(name = "result_time")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar NodeHealthL.resultTime;
    
    @Column(name = "retries")
    private Integer NodeHealthL.retries;
    
    public Integer NodeHealthL.getBattery() {
        return battery;
    }
    
    public void NodeHealthL.setBattery(Integer battery) {
        this.battery = battery;
    }
    
    public Integer NodeHealthL.getBoardId() {
        return boardId;
    }
    
    public void NodeHealthL.setBoardId(Integer boardId) {
        this.boardId = boardId;
    }
    
    public Integer NodeHealthL.getDropped() {
        return dropped;
    }
    
    public void NodeHealthL.setDropped(Integer dropped) {
        this.dropped = dropped;
    }
    
    public Integer NodeHealthL.getEpoch() {
        return epoch;
    }
    
    public void NodeHealthL.setEpoch(Integer epoch) {
        this.epoch = epoch;
    }
    
    public Integer NodeHealthL.getForwarded() {
        return forwarded;
    }
    
    public void NodeHealthL.setForwarded(Integer forwarded) {
        this.forwarded = forwarded;
    }
    
    public Integer NodeHealthL.getHealthPkts() {
        return healthPkts;
    }
    
    public void NodeHealthL.setHealthPkts(Integer healthPkts) {
        this.healthPkts = healthPkts;
    }
    
    public Integer NodeHealthL.getNodePkts() {
        return nodePkts;
    }
    
    public void NodeHealthL.setNodePkts(Integer nodePkts) {
        this.nodePkts = nodePkts;
    }
    
    public Integer NodeHealthL.getNodeid() {
        return nodeid;
    }
    
    public void NodeHealthL.setNodeid(Integer nodeid) {
        this.nodeid = nodeid;
    }
    
    public Integer NodeHealthL.getParent() {
        return parent;
    }
    
    public void NodeHealthL.setParent(Integer parent) {
        this.parent = parent;
    }
    
    public Integer NodeHealthL.getParentRssi() {
        return parentRssi;
    }
    
    public void NodeHealthL.setParentRssi(Integer parentRssi) {
        this.parentRssi = parentRssi;
    }
    
    public Integer NodeHealthL.getPathCost() {
        return pathCost;
    }
    
    public void NodeHealthL.setPathCost(Integer pathCost) {
        this.pathCost = pathCost;
    }
    
    public Integer NodeHealthL.getPowerSum() {
        return powerSum;
    }
    
    public void NodeHealthL.setPowerSum(Integer powerSum) {
        this.powerSum = powerSum;
    }
    
    public Integer NodeHealthL.getQualityRx() {
        return qualityRx;
    }
    
    public void NodeHealthL.setQualityRx(Integer qualityRx) {
        this.qualityRx = qualityRx;
    }
    
    public Integer NodeHealthL.getQualityTx() {
        return qualityTx;
    }
    
    public void NodeHealthL.setQualityTx(Integer qualityTx) {
        this.qualityTx = qualityTx;
    }
    
    public Calendar NodeHealthL.getResultTime() {
        return resultTime;
    }
    
    public void NodeHealthL.setResultTime(Calendar resultTime) {
        this.resultTime = resultTime;
    }
    
    public Integer NodeHealthL.getRetries() {
        return retries;
    }
    
    public void NodeHealthL.setRetries(Integer retries) {
        this.retries = retries;
    }
    
}