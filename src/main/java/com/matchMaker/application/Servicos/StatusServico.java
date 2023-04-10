package com.matchMaker.application.Servicos;

import com.matchMaker.application.Modelos.Encontro;
import com.matchMaker.application.Modelos.StatusDistancia;
import com.matchMaker.application.Modelos.StatusPreco;
import com.matchMaker.application.Repositorios.StatusDistanciaRepositorio;
import com.matchMaker.application.Repositorios.StatusPrecoRepositorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StatusServico {

    @Autowired
    StatusPrecoRepositorio statusPrecoRepositorio;

    @Autowired
    StatusDistanciaRepositorio statusDistanciaRepositorio;

    public StatusPreco statusPrecoPorID(Long encontroID){
        return statusPrecoRepositorio.findById(encontroID).get();

    }

    public StatusDistancia statusDistanciaPorID(Long encontroID){
        return statusDistanciaRepositorio.findById(encontroID).get();

    }

}
