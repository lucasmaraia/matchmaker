package com.matchMaker.application.Modelos;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Encontro {
    @Id
    @GeneratedValue
    private Long encontroId;
    private String nome;
    private String endereco;
    private String observacao;
    @ManyToOne
    @JoinColumn
    private StatusPreco statusPreco;

    @ManyToOne
    @JoinColumn
    private StatusDistancia statusDistancia;

    private Date dataCadastro = new Date();

    private String urlImagem;

    public Long getEncontroId() {
        return encontroId;
    }

    public void setEncontroId(Long encontroId) {
        this.encontroId = encontroId;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }

    public String getUrlImagem() {
        return urlImagem;
    }

    public void setUrlImagem(String urlImagem) {
        this.urlImagem = urlImagem;
    }

    public Date getDataCadastro() {
        return dataCadastro;
    }

    public void setDataCadastro(Date dataCadastro) {
        this.dataCadastro = dataCadastro;
    }

    public StatusPreco getStatusPreco() {
        return statusPreco;
    }

    public void setStatusPreco(StatusPreco statusPreco) {
        this.statusPreco = statusPreco;
    }

    public StatusDistancia getStatusDistancia() {
        return statusDistancia;
    }

    public void setStatusDistancia(StatusDistancia statusDistancia) {
        this.statusDistancia = statusDistancia;
    }
}