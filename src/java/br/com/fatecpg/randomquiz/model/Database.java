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

    private static ArrayList<User> usuarios = null;
    private static ArrayList<Ranking> ranks = null;

    public static ArrayList<User> getUsers() {
        if (usuarios == null) {
            usuarios = new ArrayList<>();

            User u1 = new User();
            u1.setNome("Richard");
            usuarios.add(u1);

            User u2 = new User();
            u2.setNome("Rodrigo");
            usuarios.add(u2);

            User u3 = new User();
            u3.setNome("Kleber");
            usuarios.add(u3);
        }

        return usuarios;
    }

    public static ArrayList<Ranking> getRanking() {
        if (ranks == null) {
            ranks = new ArrayList<>();
            ranks.add(new Ranking("Richard", 10.0, 0));
            ranks.add(new Ranking("Matheus", 4.0, 1));
            ranks.add(new Ranking("Rodrigo", 9.0, 2));
            ranks.add(new Ranking("Paulo", 6.0, 3));
        }

        return ranks;
    }

    public static ArrayList<Question> quiz;

    public static ArrayList<Question> getQuiz() {
        quiz = new ArrayList<>();

        quiz.add(new Question("Qual a velocidade da luz no vácuo em m/s ?", "299 792 458", new String[]{"301 458 678", "196 234 129", "396 128 987", "299 792 458"}));
        quiz.add(new Question("Segundo o Físico Isaac Newton, quais dessas grandezas fundamentais é diretamente proporcional à lei da Inércia ?", "Massa", new String[]{"Massa", "Comprimento", "Tempo", "Temperatura"}));
        quiz.add(new Question("Acreditava-se que nada era capaz de fugir das forças de atração de um buraco negro, até que 1974 Stephen Hawking provou que é possível extrair informações de dentro dele por meio de que meio ?", "Radiação", new String[]{"Radiação", "Luz", "Calor", "Gravidade"}));
        quiz.add(new Question("Força que se apresenta perpendicular a superfícei de contato, também conhecida como força de apoio", "Normal", new String[]{"Absoluta", "Normal", "Gravitacional", "Atrito"}));
        quiz.add(new Question("Semicondutor utilizado como componente eletrônico...", "Diodo", new String[]{"Pastilha eletrolitica", "Piezoelétrico", "Resistência", "Diodo"}));
        quiz.add(new Question("Elemento químico utilizado para medição da passagem de tempo...", "Carbono", new String[]{"Oxigênio", "Hidrogênio", "Carbono", "Nitrogênio"}));
        quiz.add(new Question("Lei da física relacionada à elasticidade de um corpo...", "!", new String[]{"Lei de Einsten", "Lei de Pascal", "lei de Hooke", "Lei da Gravidade"}));
        quiz.add(new Question("Quantos graus de latitude no globo terrestre se faz um fuso horário ?", "15º", new String[]{"15°", "30º", "45º", "60º"}));
        quiz.add(new Question("Qual a temperatura que precisamos atingir para obtermos o zero absoluto em Celsius ?", "-273", new String[]{"0", "-100", "-178", "-273"}));
        quiz.add(new Question("Material utilizado por Torricelli para determinar a pressão atmosférica...", "Mercúrio", new String[]{"Alumínio", "Bronze", "Mercúrio", "Prata"}));
        return quiz;
    }
}
