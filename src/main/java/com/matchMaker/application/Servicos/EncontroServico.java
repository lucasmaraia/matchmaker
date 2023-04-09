package com.matchMaker.application.Servicos;

import com.matchMaker.application.Modelos.Encontro;
import com.matchMaker.application.Repositorios.EncontroRepositorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
public class EncontroServico {
    @Autowired
    EncontroRepositorio encontroRepositorio;

    public List<Encontro> listaEncontros(){

        List<Encontro> listaEncontros = new ArrayList<>();
        encontroRepositorio.findAll().forEach(encontro -> listaEncontros.add(encontro));
        return listaEncontros;
    }

    public Encontro encontroPorID(Long encontroID){
       return encontroRepositorio.findById(encontroID).get();

    }

    public void salvarEAtualizar(Encontro encontro){
        encontroRepositorio.save(encontro);
    }

    public void deletar(Encontro encontro){
        encontroRepositorio.delete(encontro);
    }

    public Encontro sorteiaEncontro(){
       List<Encontro> encontros = new ArrayList<Encontro>();
        encontroRepositorio.findAll().forEach(encontro -> encontros.add(encontro));
        Collections.shuffle(encontros);
        return encontros.get(0);


    }

}
