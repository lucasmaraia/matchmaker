package com.matchMaker.application.Controladores;

import com.matchMaker.application.Modelos.Encontro;
import com.matchMaker.application.Servicos.EncontroServico;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Date;

@Controller
public class EncontroControlador {
    @Autowired
    EncontroServico encontroServico;
    @GetMapping({"/","/listaEncontros"})
    public String listaEncontros(Model model, @ModelAttribute("mensagem") String mensagem){
       model.addAttribute("encontros",encontroServico.listaEncontros());
       model.addAttribute("mensagem",mensagem);

        return "ListaEncontros";
    }
    @GetMapping("/adicionaEncontro")

    public String adicionaEncontro(Model model,@ModelAttribute("mensagem") String mensagem){
        model.addAttribute("encontro", new Encontro());
        model.addAttribute("mensagem",mensagem);
        return "AdicionaEncontro";
    }
    @PostMapping("/salvaEncontro")
    public String adicionaEncontro(Encontro encontro, RedirectAttributes redirectAttributes){
        encontroServico.salvarEAtualizar(encontro);
        redirectAttributes.addFlashAttribute("mensagem","Encontro salvo com sucesso");
        return "redirect:/listaEncontros";
    }

    @GetMapping("/editaEncontro/{encontroID}")
    public String editaEncontro(@PathVariable Long encontroID,Model model){
       model.addAttribute("encontro",encontroServico.encontroPorID(encontroID));
       return "EditaEncontro";
    }
    @PostMapping("/editaEncontro")
    public String atualizaEncontro(Encontro encontro, Model model, RedirectAttributes redirectAttributes){
        encontro.setDataCadastro(new Date());
        encontroServico.salvarEAtualizar(encontro);
        redirectAttributes.addFlashAttribute("mensagem","Encontro editado com sucesso");
        return "redirect:/listaEncontros";

    }
    @GetMapping("/deletaEncontro/{encontroID}")
    public String deletaEncontro(@PathVariable Long encontroID, RedirectAttributes redirectAttributes){
        encontroServico.deletar(encontroServico.encontroPorID(encontroID));
        redirectAttributes.addFlashAttribute("mensagem","Encontro deletado com sucesso");
        return "redirect:/listaEncontros";

    }
    @GetMapping("/sorteiaEncontro")
    @ResponseBody
    public Encontro sorteiaEncontro(){
        return encontroServico.sorteiaEncontro();
    }



}
