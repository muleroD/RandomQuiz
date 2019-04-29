/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.randomquiz.model;

import java.util.ArrayList;

/**
 *
 * @author JOSE QUALITY
 */
public class Pontuacao {
     private Double pontuacao;
    private User User;
    public static ArrayList<Pontuacao> ranking = new ArrayList<Pontuacao>();

    public Double getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(Double score) {
        this.pontuacao = pontuacao;
    }

    public User getUser() {
        return User;
    }

    public void setUser(User user) {
        this.User = user;
    }

    public static ArrayList<Pontuacao> getRanking() {
        return ranking;
    }

    public static void setRanking(Pontuacao pontuacao) {
        ranking.add(pontuacao);
    }
    
    
}
    

