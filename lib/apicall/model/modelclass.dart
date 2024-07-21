// {
// "id": 1,
// "name": "Classic Margherita Pizza",
// "ingredients": [
// "Pizza dough",
// "Tomato sauce",
// "Fresh mozzarella cheese",
// "Fresh basil leaves",
// "Olive oil",
// "Salt and pepper to taste"
// ],
// "instructions": [
// "Preheat the oven to 475°F (245°C).",
// "Roll out the pizza dough and spread tomato sauce evenly.",
// "Top with slices of fresh mozzarella and fresh basil leaves.",
// "Drizzle with olive oil and season with salt and pepper.",
// "Bake in the preheated oven for 12-15 minutes or until the crust is golden brown.",
// "Slice and serve hot."
// ],
// "prepTimeMinutes": 20,
// "cookTimeMinutes": 15,
// "servings": 4,
// "difficulty": "Easy",
// "cuisine": "Italian",
// "caloriesPerServing": 300,
// "tags": [
// "Pizza",
// "Italian"
// ],
// "userId": 166,
// "image": "https://cdn.dummyjson.com/recipe-images/1.webp",
// "rating": 4.6,
// "reviewCount": 98,
// "mealType": [
// "Dinner"
// ]
// },

class Recipes {
  List<RecipeData>? recipe = [];

  Recipes({this.recipe});

  factory Recipes.fromJson(Map json) {
    return Recipes(
        recipe: (json['recipes'] as List)
            .map((e) => RecipeData.fromJson(e))
            .toList());
  }
}

class RecipeData {
  int? id,
      prepTimeMinutes,
      cookTimeMinutes,
      servings,
      caloriesPerServing,
      userId,
      reviewCount;
  dynamic rating;
  String? name, difficulty, cuisine, image;
  List? instructions = [];
  List? ingredients = [];

  RecipeData(
      {this.id,
        this.prepTimeMinutes,
        this.cookTimeMinutes,
        this.caloriesPerServing,
        this.servings,
        this.userId,
        this.cuisine,
        this.difficulty,
        this.image,
        this.name,
        this.rating,
        this.reviewCount,
        this.instructions,
        this.ingredients});

  factory RecipeData.fromJson(Map<String, dynamic> json) {
    return RecipeData(
        image: json['image'],
        caloriesPerServing: json['caloriesPerServing'],
        cookTimeMinutes: json['cookTimeMinutes'],
        cuisine: json['cuisine'],
        difficulty: json['difficulty'],
        id: json['id'],
        name: json['name'],
        prepTimeMinutes: json['prepTimeMinutes'],
        rating: json['rating'],
        reviewCount: json['reviewCount'],
        servings: json['servings'],
        userId: json['userId'],
        instructions: (json['instructions'] as List)
            .map(
              (e) => (e),
        )
            .toList(),
        ingredients: (json['ingredients'] as List)
            .map(
              (e) => (e),
        )
            .toList());
  }
}