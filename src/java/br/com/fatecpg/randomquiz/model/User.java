/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.randomquiz.model;

import java.util.ArrayList;

/**
 *
 * @author Mulero
 */
public class User {

    private String nome;
    public static ArrayList<User> users;

    public User() {

    }

    public static void setPlayers(User u) {
        users.add(u);
    }

    //métodos getters e setters
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
