package as.recipeapp.controllers;

import as.recipeapp.services.RecipeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecipeController {

    private final RecipeService recipeService;

    public RecipeController(RecipeService recipeService) {
        this.recipeService = recipeService;
    }

    @RequestMapping("/recipe/show/{id}")
    public String showBiId(@PathVariable String id, Model model) {
        model.addAttribute("recipe", recipeService.findBiId(Long.valueOf(id)));
        return "recipe/show";
    }
}
