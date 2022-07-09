# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Regionch.create([
    {name: "I Tarapaca"},
    {name: "II Antofagasta"},
    {name: "III Atacama"},
    {name: "IV Coquimbo"},
    {name: "V Valparaíso"},
    {name: "VI Libertador General Bernardo O'Higgins"},
    {name: "VII Maule"},
    {name: "VIII Biobío"},
    {name: "IX La Araucanía"},
    {name: "X Los Lagos"},
    {name: "XI Aysén del General Carlos Ibañez del Campo"},
    {name: "XII Magallanes y Antártica Chilena"},
    {name: "XIII RM Metropolitana de Santiago"},
    {name: "XIV Los Ríos"},
    {name: "XV Arica y Parinacota"},
    {name: "XVI Ñuble"},
    ])
    
    
    ## https://www.bcn.cl/siit/nuestropais/regiones
    Genero.create([
    {name: "femenino"},
    {name: "masculino"},
    {name: "lesbico"},
    {name: "gay"},
    {name: "bisexual"},
    {name: "trans"},
    {name: "intersexual"},
    {name: "queer"},
    {name: "otro"},
    ])
    
    # en los requerimientos del caso
    Tipo.create([
    {name: "remoto"},
    {name: "mixto"},
    {name: "presencial"},
    ])
