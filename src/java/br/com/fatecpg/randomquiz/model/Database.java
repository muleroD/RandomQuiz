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
public class Database {

    private static ArrayList<User> usuarios;

    public static ArrayList<User> getUsuarios() {
        if (usuarios == null) {
            usuarios = new ArrayList<>();
        }
        return usuarios;
    }

}
