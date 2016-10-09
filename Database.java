/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.crud;

import java.util.ArrayList;

/**
 *
 * @author aluno
 */
public class Database {

    private static ArrayList<Pessoa> pessoas = new ArrayList<>();

    public static ArrayList<Pessoa> getPessoasList() {
        return pessoas;
    }

}
