package com.matchMaker.application.Modelos;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class StatusPreco {
    @Id
    @GeneratedValue
    private Long statusPrecoId;
    private String descricao;

    public Long getStatusPrecoId() {
        return statusPrecoId;
    }

    public void setStatusPrecoId(Long statusPrecoId) {
        this.statusPrecoId = statusPrecoId;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
