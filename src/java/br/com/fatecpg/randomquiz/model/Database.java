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

    public static ArrayList<User> getUsers() {
        if (usuarios == null) {
            usuarios = new ArrayList<>();

            User u1 = new User();
            u1.setNome("Richard");
            usuarios.add(u1);
        }
        return usuarios;
    }

    public static ArrayList<Question> getQuiz() {
        ArrayList<Question> quiz = new ArrayList<>();
        quiz.add(new Question("1+1", "2", new String[]{"3", "1", "2"}));
        quiz.add(new Question("2+2", "4", new String[]{"4", "2", "1"}));
        quiz.add(new Question("2+1", "3", new String[]{"1", "3", "4"}));

        return quiz;
    }
}
