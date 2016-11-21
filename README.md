# MvcCodeFluent
Example of integration between standard MVC with the (great) help of CodeFluentEntities.

## Authentication 

Code Fluent Entities is being used to replace EntityFramework thanks to the AspNetIdentity producer. See here: https://github.com/SoftFluent/CodeFluent-Entities/tree/master/Extensions/SoftFluent.AspNetIdentity


## Controller

We integrated CodeTemplates folder so that you can generate Controller using the standard scaffolding feature and be plugged with CFE straight away.

## View

View have been customized. Standard CFE properties have been taken into account while generating views (EntityState, RaisePropertyChangedEvents and RowVersion when needed)

## Build & Run

SQL Producer is defaulting to MSSql in localhost. 
Set up your web.config and the producer connection string accordingly to run the solution
