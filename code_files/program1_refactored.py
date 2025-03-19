The provided code has a high cyclomatic complexity due to the nested `if` statements, which makes it difficult to read and maintain. To improve this, we can simplify the logic and reduce the cyclomatic complexity by using a more straightforward approach. 

Here’s a refactored version of the code that achieves the same goal but is easier to understand and maintain:

```python
motorcycles = [
    {"model": "Harley Davidson", "price": 10000, "year": 2010},
    {"model": "Honda", "price": 5000, "year": 2015},
    {"model": "Yamaha", "price": 7000, "year": 2012},
    {"model": "Suzuki", "price": 8000, "year": 2013},
    {"model": "Kawasaki", "price": 9000, "year": 2014}
]

def best_option(motorcycles):
    # Define criteria for the best motorcycle
    criteria = {
        "model": "Harley Davidson",
        "price": 10000,
        "year": 2010
    }
    
    # Filter motorcycles based on criteria
    for motorcycle in motorcycles:
        if (motorcycle["model"] == criteria["model"] and
            motorcycle["price"] == criteria["price"] and
            motorcycle["year"] == criteria["year"]):
            return motorcycle
    
    return None  # Return None if no motorcycle matches the criteria

best_motorcycle = best_option(motorcycles)
if best_motorcycle:
    print(best_motorcycle)
else:
    print("No suitable motorcycle found.")
```

### Key Improvements:
1. **Reduced Nesting**: The nested `if` statements have been replaced with a single conditional statement that checks all criteria at once.
2. **Clear Criteria**: The criteria for the best motorcycle are defined in a dictionary, making it easy to modify if needed.
3. **Return Value**: The function now returns `None` if no motorcycle matches the criteria, which is a more Pythonic way to handle the absence of a result.
4. **Readability**: The code is more readable and maintainable, making it easier for others (or yourself in the future) to understand the logic.

This approach significantly reduces cyclomatic complexity and enhances the overall quality of the code.