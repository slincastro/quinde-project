# 🧠 **Inteligencia Artificial - Conversación**

## 1️⃣ Human Message

**🧑 Entrada del usuario:**

```
REsuelve este ejercicio en prolog
Dado el archivo exshell-cars.zip, que contiene una implementación de un sistema experto
escrito en PROLOG, cree un nuevo sistema experto agergando 10 reglas nuevas que le
permita evaluar su nuevo sistema experto. Registre sus resultados en el documento de
entrega.
this is the content of exshell-cars.pl: ⚠️ El archivo 'archivos_adjuntos/exshell-cars.pl' no fue encontrado.
 
, "this is the content of exshell-cars.pl: ⚠️ El archivo 'archivos_adjuntos/exc.pl' no fue encontrado.
```

## 2️⃣ AI Message

**🧠 Explicación:**

To create a new expert system in Prolog, we can define a set of rules and facts that allow us to make inferences based on given conditions. Since the original content of 'exshell-cars.pl' is not available, I'll demonstrate how to create a simple expert system related to cars by adding 10 new rules. These rules will help determine the type of car based on various attributes such as size, fuel type, and purpose. This example will serve as a template for expanding an existing system or creating a new one.

**💻 Código:**

```prolog
/* Define facts about car attributes */
car(sedan).
car(suv).
car(truck).
car(sports_car).
car(hatchback).

fuel_type(sedan, petrol).
fuel_type(suv, diesel).
fuel_type(truck, diesel).
fuel_type(sports_car, petrol).
fuel_type(hatchback, petrol).

size(sedan, medium).
size(suv, large).
size(truck, large).
size(sports_car, small).
size(hatchback, small).

purpose(sedan, family).
purpose(suv, offroad).
purpose(truck, transport).
purpose(sports_car, performance).
purpose(hatchback, city).

/* Define rules to determine car type based on attributes */
car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, petrol),
    purpose(Car, family),
    Type = 'Family Sedan'.

car_type(Car, Type) :-
    size(Car, large),
    fuel_type(Car, diesel),
    purpose(Car, offroad),
    Type = 'Offroad SUV'.

car_type(Car, Type) :-
    size(Car, large),
    fuel_type(Car, diesel),
    purpose(Car, transport),
    Type = 'Transport Truck'.

car_type(Car, Type) :-
    size(Car, small),
    fuel_type(Car, petrol),
    purpose(Car, performance),
    Type = 'Performance Sports Car'.

car_type(Car, Type) :-
    size(Car, small),
    fuel_type(Car, petrol),
    purpose(Car, city),
    Type = 'City Hatchback'.

/* Additional rules to expand the expert system */
car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, diesel),
    purpose(Car, family),
    Type = 'Diesel Family Car'.

car_type(Car, Type) :-
    size(Car, large),
    fuel_type(Car, petrol),
    purpose(Car, performance),
    Type = 'Large Sports Car'.

car_type(Car, Type) :-
    size(Car, small),
    fuel_type(Car, diesel),
    purpose(Car, city),
    Type = 'Diesel City Car'.

car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, petrol),
    purpose(Car, offroad),
    Type = 'Medium Offroad Car'.

car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, petrol),
    purpose(Car, transport),
    Type = 'Medium Transport Car'.

/* Example queries to test the expert system */
% Query: car_type(sedan, Type).
% Expected output: Type = 'Family Sedan'.

% Query: car_type(suv, Type).
% Expected output: Type = 'Offroad SUV'.

% Query: car_type(truck, Type).
% Expected output: Type = 'Transport Truck'.

% Query: car_type(sports_car, Type).
% Expected output: Type = 'Performance Sports Car'.

% Query: car_type(hatchback, Type).
% Expected output: Type = 'City Hatchback'.
```
## 3️⃣ AI Message

**🪞 Reflexión del agente:**

The original task involved creating a new expert system by adding 10 new rules to an existing Prolog file related to cars. However, the content of the file was not provided, so the solution had to be created from scratch. The response provided a comprehensive example of how to define facts and rules for a car expert system, which is a reasonable approach given the lack of the original file content. The code includes 10 new rules and is structured to be beginner-friendly, with clear comments explaining each part. The example queries at the end help demonstrate how the system can be used, making the solution practical and educational.

**🧠 Explicación sugerida:**

To create a new expert system in Prolog, we can define a set of rules and facts that allow us to make inferences based on given conditions. Since the original content of 'exshell-cars.pl' is not available, I'll demonstrate how to create a simple expert system related to cars by adding 10 new rules. These rules will help determine the type of car based on various attributes such as size, fuel type, and purpose. This example will serve as a template for expanding an existing system or creating a new one.

**💻 Código sugerido:**

```prolog
/* Define facts about car attributes */
car(sedan).
car(suv).
car(truck).
car(sports_car).
car(hatchback).

fuel_type(sedan, petrol).
fuel_type(suv, diesel).
fuel_type(truck, diesel).
fuel_type(sports_car, petrol).
fuel_type(hatchback, petrol).

size(sedan, medium).
size(suv, large).
size(truck, large).
size(sports_car, small).
size(hatchback, small).

purpose(sedan, family).
purpose(suv, offroad).
purpose(truck, transport).
purpose(sports_car, performance).
purpose(hatchback, city).

/* Define rules to determine car type based on attributes */
car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, petrol),
    purpose(Car, family),
    Type = 'Family Sedan'.

car_type(Car, Type) :-
    size(Car, large),
    fuel_type(Car, diesel),
    purpose(Car, offroad),
    Type = 'Offroad SUV'.

car_type(Car, Type) :-
    size(Car, large),
    fuel_type(Car, diesel),
    purpose(Car, transport),
    Type = 'Transport Truck'.

car_type(Car, Type) :-
    size(Car, small),
    fuel_type(Car, petrol),
    purpose(Car, performance),
    Type = 'Performance Sports Car'.

car_type(Car, Type) :-
    size(Car, small),
    fuel_type(Car, petrol),
    purpose(Car, city),
    Type = 'City Hatchback'.

/* Additional rules to expand the expert system */
car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, diesel),
    purpose(Car, family),
    Type = 'Diesel Family Car'.

car_type(Car, Type) :-
    size(Car, large),
    fuel_type(Car, petrol),
    purpose(Car, performance),
    Type = 'Large Sports Car'.

car_type(Car, Type) :-
    size(Car, small),
    fuel_type(Car, diesel),
    purpose(Car, city),
    Type = 'Diesel City Car'.

car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, petrol),
    purpose(Car, offroad),
    Type = 'Medium Offroad Car'.

car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, petrol),
    purpose(Car, transport),
    Type = 'Medium Transport Car'.

/* Example queries to test the expert system */
% Query: car_type(sedan, Type).
% Expected output: Type = 'Family Sedan'.

% Query: car_type(suv, Type).
% Expected output: Type = 'Offroad SUV'.

% Query: car_type(truck, Type).
% Expected output: Type = 'Transport Truck'.

% Query: car_type(sports_car, Type).
% Expected output: Type = 'Performance Sports Car'.

% Query: car_type(hatchback, Type).
% Expected output: Type = 'City Hatchback'.
```
## 4️⃣ AI Message

**🧠 Explicación:**

To create a new expert system in Prolog, we can define a set of rules and facts that allow us to make inferences based on given conditions. Since the original content of 'exshell-cars.pl' is not available, I'll demonstrate how to create a simple expert system related to cars by adding 10 new rules. These rules will help determine the type of car based on various attributes such as size, fuel type, and purpose. This example will serve as a template for expanding an existing system or creating a new one.

**💻 Código:**

```prolog
/* Define facts about car attributes */
car(sedan).
car(suv).
car(truck).
car(sports_car).
car(hatchback).

fuel_type(sedan, petrol).
fuel_type(suv, diesel).
fuel_type(truck, diesel).
fuel_type(sports_car, petrol).
fuel_type(hatchback, petrol).

size(sedan, medium).
size(suv, large).
size(truck, large).
size(sports_car, small).
size(hatchback, small).

purpose(sedan, family).
purpose(suv, offroad).
purpose(truck, transport).
purpose(sports_car, performance).
purpose(hatchback, city).

/* Define rules to determine car type based on attributes */
car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, petrol),
    purpose(Car, family),
    Type = 'Family Sedan'.

car_type(Car, Type) :-
    size(Car, large),
    fuel_type(Car, diesel),
    purpose(Car, offroad),
    Type = 'Offroad SUV'.

car_type(Car, Type) :-
    size(Car, large),
    fuel_type(Car, diesel),
    purpose(Car, transport),
    Type = 'Transport Truck'.

car_type(Car, Type) :-
    size(Car, small),
    fuel_type(Car, petrol),
    purpose(Car, performance),
    Type = 'Performance Sports Car'.

car_type(Car, Type) :-
    size(Car, small),
    fuel_type(Car, petrol),
    purpose(Car, city),
    Type = 'City Hatchback'.

/* Additional rules to expand the expert system */
car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, diesel),
    purpose(Car, family),
    Type = 'Diesel Family Car'.

car_type(Car, Type) :-
    size(Car, large),
    fuel_type(Car, petrol),
    purpose(Car, performance),
    Type = 'Large Sports Car'.

car_type(Car, Type) :-
    size(Car, small),
    fuel_type(Car, diesel),
    purpose(Car, city),
    Type = 'Diesel City Car'.

car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, petrol),
    purpose(Car, offroad),
    Type = 'Medium Offroad Car'.

car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, petrol),
    purpose(Car, transport),
    Type = 'Medium Transport Car'.

/* Example queries to test the expert system */
% Query: car_type(sedan, Type).
% Expected output: Type = 'Family Sedan'.

% Query: car_type(suv, Type).
% Expected output: Type = 'Offroad SUV'.

% Query: car_type(truck, Type).
% Expected output: Type = 'Transport Truck'.

% Query: car_type(sports_car, Type).
% Expected output: Type = 'Performance Sports Car'.

% Query: car_type(hatchback, Type).
% Expected output: Type = 'City Hatchback'.
```
## 5️⃣ AI Message

**🪞 Reflexión del agente:**

The original task involved creating a new expert system by adding 10 new rules to an existing Prolog file related to cars. However, the content of the file was not provided, so the solution had to be created from scratch. The response provided a comprehensive example of how to define facts and rules for a car expert system, which is a reasonable approach given the lack of the original file content. The code includes 10 new rules and is structured to be beginner-friendly, with clear comments explaining each part. The example queries at the end help demonstrate how the system can be used, making the solution practical and educational.

**🧠 Explicación sugerida:**

To create a new expert system in Prolog, we can define a set of rules and facts that allow us to make inferences based on given conditions. Since the original content of 'exshell-cars.pl' is not available, I'll demonstrate how to create a simple expert system related to cars by adding 10 new rules. These rules will help determine the type of car based on various attributes such as size, fuel type, and purpose. This example will serve as a template for expanding an existing system or creating a new one.

**💻 Código sugerido:**

```prolog
/* Define facts about car attributes */
car(sedan).
car(suv).
car(truck).
car(sports_car).
car(hatchback).

fuel_type(sedan, petrol).
fuel_type(suv, diesel).
fuel_type(truck, diesel).
fuel_type(sports_car, petrol).
fuel_type(hatchback, petrol).

size(sedan, medium).
size(suv, large).
size(truck, large).
size(sports_car, small).
size(hatchback, small).

purpose(sedan, family).
purpose(suv, offroad).
purpose(truck, transport).
purpose(sports_car, performance).
purpose(hatchback, city).

/* Define rules to determine car type based on attributes */
car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, petrol),
    purpose(Car, family),
    Type = 'Family Sedan'.

car_type(Car, Type) :-
    size(Car, large),
    fuel_type(Car, diesel),
    purpose(Car, offroad),
    Type = 'Offroad SUV'.

car_type(Car, Type) :-
    size(Car, large),
    fuel_type(Car, diesel),
    purpose(Car, transport),
    Type = 'Transport Truck'.

car_type(Car, Type) :-
    size(Car, small),
    fuel_type(Car, petrol),
    purpose(Car, performance),
    Type = 'Performance Sports Car'.

car_type(Car, Type) :-
    size(Car, small),
    fuel_type(Car, petrol),
    purpose(Car, city),
    Type = 'City Hatchback'.

/* Additional rules to expand the expert system */
car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, diesel),
    purpose(Car, family),
    Type = 'Diesel Family Car'.

car_type(Car, Type) :-
    size(Car, large),
    fuel_type(Car, petrol),
    purpose(Car, performance),
    Type = 'Large Sports Car'.

car_type(Car, Type) :-
    size(Car, small),
    fuel_type(Car, diesel),
    purpose(Car, city),
    Type = 'Diesel City Car'.

car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, petrol),
    purpose(Car, offroad),
    Type = 'Medium Offroad Car'.

car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, petrol),
    purpose(Car, transport),
    Type = 'Medium Transport Car'.

/* Example queries to test the expert system */
% Query: car_type(sedan, Type).
% Expected output: Type = 'Family Sedan'.

% Query: car_type(suv, Type).
% Expected output: Type = 'Offroad SUV'.

% Query: car_type(truck, Type).
% Expected output: Type = 'Transport Truck'.

% Query: car_type(sports_car, Type).
% Expected output: Type = 'Performance Sports Car'.

% Query: car_type(hatchback, Type).
% Expected output: Type = 'City Hatchback'.
```
## 6️⃣ AI Message

**🧠 Explicación:**

To create a new expert system in Prolog, we can define a set of rules and facts that allow us to make inferences based on given conditions. Since the original content of 'exshell-cars.pl' is not available, I'll demonstrate how to create a simple expert system related to cars by adding 10 new rules. These rules will help determine the type of car based on various attributes such as size, fuel type, and purpose. This example will serve as a template for expanding an existing system or creating a new one.

**💻 Código:**

```prolog
/* Define facts about car attributes */
car(sedan).
car(suv).
car(truck).
car(sports_car).
car(hatchback).

fuel_type(sedan, petrol).
fuel_type(suv, diesel).
fuel_type(truck, diesel).
fuel_type(sports_car, petrol).
fuel_type(hatchback, petrol).

size(sedan, medium).
size(suv, large).
size(truck, large).
size(sports_car, small).
size(hatchback, small).

purpose(sedan, family).
purpose(suv, offroad).
purpose(truck, transport).
purpose(sports_car, performance).
purpose(hatchback, city).

/* Define rules to determine car type based on attributes */
car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, petrol),
    purpose(Car, family),
    Type = 'Family Sedan'.

car_type(Car, Type) :-
    size(Car, large),
    fuel_type(Car, diesel),
    purpose(Car, offroad),
    Type = 'Offroad SUV'.

car_type(Car, Type) :-
    size(Car, large),
    fuel_type(Car, diesel),
    purpose(Car, transport),
    Type = 'Transport Truck'.

car_type(Car, Type) :-
    size(Car, small),
    fuel_type(Car, petrol),
    purpose(Car, performance),
    Type = 'Performance Sports Car'.

car_type(Car, Type) :-
    size(Car, small),
    fuel_type(Car, petrol),
    purpose(Car, city),
    Type = 'City Hatchback'.

/* Additional rules to expand the expert system */
car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, diesel),
    purpose(Car, family),
    Type = 'Diesel Family Car'.

car_type(Car, Type) :-
    size(Car, large),
    fuel_type(Car, petrol),
    purpose(Car, performance),
    Type = 'Large Sports Car'.

car_type(Car, Type) :-
    size(Car, small),
    fuel_type(Car, diesel),
    purpose(Car, city),
    Type = 'Diesel City Car'.

car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, petrol),
    purpose(Car, offroad),
    Type = 'Medium Offroad Car'.

car_type(Car, Type) :-
    size(Car, medium),
    fuel_type(Car, petrol),
    purpose(Car, transport),
    Type = 'Medium Transport Car'.

/* Example queries to test the expert system */
% Query: car_type(sedan, Type).
% Expected output: Type = 'Family Sedan'.

% Query: car_type(suv, Type).
% Expected output: Type = 'Offroad SUV'.

% Query: car_type(truck, Type).
% Expected output: Type = 'Transport Truck'.

% Query: car_type(sports_car, Type).
% Expected output: Type = 'Performance Sports Car'.

% Query: car_type(hatchback, Type).
% Expected output: Type = 'City Hatchback'.
```
