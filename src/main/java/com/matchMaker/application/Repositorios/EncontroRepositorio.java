package com.matchMaker.application.Repositorios;

import com.matchMaker.application.Modelos.Encontro;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EncontroRepositorio extends JpaRepository<Encontro,Long> {
}
