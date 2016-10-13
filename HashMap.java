/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.HashMap;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 *
 * @author JHDS
 */
public class Programa18 {

    public static void main(String[] args) {
        Map mapa = new HashMap();
        mapa.put(1, "telefone");
        mapa.put(2, "dvd");
        mapa.put(3, "computador");
        mapa.put(4, "celular");
        mapa.put(5, "tablet");
        mapa.put(6, "televisao");
        mapa.put(7, "carro");
        mapa.put(8, "Geladeira");
        System.out.println(mapa.get(2));
        System.out.println(mapa.get(null));
        mapa.remove(4);
        System.out.println(mapa.get(4));
        System.out.println(mapa.containsKey(8));
        System.out.println(mapa.containsValue("caderno"));
        System.out.println(mapa.size());
        Collection c = mapa.values();
                Iterator i = c.iterator();
        while (i.hasNext()) {
            System.out.println(i.next() + " ");
        }

    }
}
