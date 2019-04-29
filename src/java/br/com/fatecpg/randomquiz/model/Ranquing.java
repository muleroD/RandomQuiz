/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.randomquiz.model;

import java.util.Comparator;

/**
 *
 * @author JOSE QUALITY
 */
public class Ranquing   implements Comparator<Pontuacao> {
    @Override
    public int compare(Pontuacao o1, Pontuacao o2) {
        return o2.getPontuacao().compareTo(o1.getPontuacao());
    }    
}
