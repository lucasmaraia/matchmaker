package com.matchMaker.application.Modelos;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class StatusDistancia {
    @Id
    @GeneratedValue
    private Long statusDistanciaId;
    private String descricao;

    public Long getStatusDistanciaId() {
        return statusDistanciaId;
    }

    public void setStatusDistanciaId(Long statusDistanciaId) {
        this.statusDistanciaId = statusDistanciaId;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
