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