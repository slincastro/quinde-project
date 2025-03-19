
#"I want to determine would be the best option to buy a motorcycle"

motorcycle = [{"model": "Harley Davidson", "price": 10000, "year": 2010},
              {"model": "Honda", "price": 5000, "year": 2015},
              {"model": "Yamaha", "price": 7000, "year": 2012}
              ,{"model": "Suzuki", "price": 8000, "year": 2013},
              {"model": "Kawasaki", "price": 9000, "year": 2014}]


def best_option(motorcycle):

    for m in motorcycle:
        if m["model"] == "Harley Davidson" :
            if m["price"] == 10000 :
                if m["year"] == 2010:
                    if m["model"] != "Honda":
                        if m["price"] != 5000:
                            if m["year"] != 2015:
                                best = m
            break
    return best

print(best_option(motorcycle))