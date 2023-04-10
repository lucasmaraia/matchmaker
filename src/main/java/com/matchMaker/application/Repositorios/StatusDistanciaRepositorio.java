package com.matchMaker.application.Repositorios;


import com.matchMaker.application.Modelos.StatusDistancia;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StatusDistanciaRepositorio extends JpaRepository<StatusDistancia,Long> {
}
