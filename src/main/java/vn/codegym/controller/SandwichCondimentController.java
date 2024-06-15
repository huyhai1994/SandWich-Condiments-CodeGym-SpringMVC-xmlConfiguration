package vn.codegym.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import vn.codegym.model.Condiment;
import vn.codegym.service.implement.CondimentServiceImplement;

@Controller
public class SandwichCondimentController {
    @Autowired
    private CondimentServiceImplement condimentServiceImplement;

    @GetMapping("index")
    public String index(Model model) {
        return "index";
    }

    @GetMapping("save")
    public String save(@RequestParam(name = "condiment") String[] name, Model model) {
        createNewCondimentAndSave(name);
        model.addAttribute("condiments", condimentServiceImplement.findAll());
        return "list";
    }

    private void createNewCondimentAndSave(String[] name) {
        int id = 1;
        for (String condimentName : name) {
            Condiment condiment = new Condiment(id, condimentName);
            condimentServiceImplement.save(condiment);
            id++;
        }

    }
}
