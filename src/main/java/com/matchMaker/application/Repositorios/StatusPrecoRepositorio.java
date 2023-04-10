package com.matchMaker.application.Repositorios;

import com.matchMaker.application.Modelos.StatusPreco;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StatusPrecoRepositorio extends JpaRepository<StatusPreco,Long> {
}
