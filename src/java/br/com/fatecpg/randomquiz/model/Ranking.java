/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.randomquiz.model;

import java.util.ArrayList;
import java.util.Collections;

/**
 *
 * @author Rodrigo
 */
public class Ranking {

    private String user;
    private double result;
    private int id;

    public Ranking(String user, double result, int id) {
        this.user = user;
        this.result = result;
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public double getResult() {
        return result;
    }

    public void setResult(double result) {
        this.result = result;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public static ArrayList<Ranking> orderByResult(ArrayList<Ranking> rankings) {
        Collections.sort(rankings, (Ranking r1, Ranking r2) -> {
            if (r1.getResult() > r2.getResult()) {
                return -1;
            } else if (r1.getResult() == r2.getResult()) {
                return 0;
            } else {
                return 1;
            }
        });
        return rankings;
    }

    public static ArrayList<Ranking> orderById(ArrayList<Ranking> rankings) {
        Collections.sort(rankings, (Ranking r1, Ranking r2) -> {
            if (r1.getId() < r2.getId()) {
                return 1;
            } else {
                return -1;
            }
        });
        return rankings;
    }

}
