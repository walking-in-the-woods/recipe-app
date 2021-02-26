package as.recipeapp.services;

import as.recipeapp.domain.Recipe;

import java.util.Set;

public interface RecipeService {

    Set<Recipe> getRecipes();

    Recipe findBiId(Long id);
}
