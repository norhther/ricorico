; Sun May 07 12:23:46 CEST 2017
; 
;+ (version "3.5")
;+ (build "Build 663")


;########################
;+DEFINICIONS DE CLASSES#
;########################

(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
  (is-a USER)
  (role abstract)
  (single-slot postre
    (type SYMBOL)
;+    (allowed-parents Plato)
;+    (cardinality 1 1)
    (create-accessor read-write))
  (single-slot tamano
;+    (comment "Entero entre [1..5] donde 1 es la ración más pequeña y 5 la más grande.")
    (type INTEGER)
    (range 1 5)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot primero
    (type SYMBOL)
;+    (allowed-parents Plato)
;+    (cardinality 1 1)
    (create-accessor read-write))
  (single-slot contiene_gluten
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot es_moderno
;+    (comment "if (!es_moderno) -> es_tradicional")
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot contiene_azucar
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot contiene_lactosa
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot complejidad
;+    (comment "Entero del [1..5], donde 1 es la mínima complejidad y 5 la máxima.")
    (type INTEGER)
    (range 1 5)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (multislot ingrediente
    (type INSTANCE)
;+    (allowed-classes)
    (cardinality 1 ?VARIABLE)
    (create-accessor read-write))
  (single-slot segundo
    (type SYMBOL)
;+    (allowed-parents Plato)
;+    (cardinality 1 1)
    (create-accessor read-write))
  (multislot IngredientesPrincipales
    (type SYMBOL)
;+    (allowed-parents)
    (cardinality 1 5)
    (create-accessor read-write))
  (single-slot lugarOrigen
    (type STRING)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot producto_animal
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot precio
    (type FLOAT)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot contiene_alcohol
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (multislot tipo
;+    (comment "tipo: {primero,segundo,postre)")
    (type STRING)
    (cardinality 1 3)
    (create-accessor read-write))
  (multislot disponibilidad
;+    (comment "Valores posibles:\nverano\notono\nprimavera\ninvierno")
    (type STRING)
    (cardinality 1 4)
    (create-accessor read-write))
  (multislot ingredientesPrincipales
    (type STRING)
    (cardinality 1 5)
    (create-accessor read-write))
  (single-slot es_frio
;+    (comment "if (!es_frio) -> es_caliente")
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot nombre
    (type STRING)
;+    (cardinality 0 1)
    (create-accessor read-write)))

(defclass Plato
  (is-a USER)
  (role concrete)
  (single-slot lugarOrigen
    (type STRING)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot es_frio
;+    (comment "if (!es_frio) -> es_caliente")
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot tamano
;+    (comment "Entero entre [1..5] donde 1 es la ración más pequeña y 5 la más grande.")
    (type INTEGER)
    (range 1 5)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot es_moderno
;+    (comment "if (!es_moderno) -> es_tradicional")
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot precio
    (type FLOAT)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (multislot ingrediente
    (type INSTANCE)
;+    (allowed-classes)
    (cardinality 1 ?VARIABLE)
    (create-accessor read-write))
  (single-slot nombre
    (type STRING)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (multislot tipo
;+    (comment "tipo: {primero,segundo,postre)")
    (type STRING)
    (cardinality 1 3)
    (create-accessor read-write))
  (single-slot complejidad
;+    (comment "Entero del [1..5], donde 1 es la mínima complejidad y 5 la máxima.")
    (type INTEGER)
    (range 1 5)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (multislot disponibilidad
;+    (comment "Valores posibles:\nverano\notono\nprimavera\ninvierno")
    (type STRING)
    (cardinality 1 4)
    (create-accessor read-write)))

(defclass Menu
  (is-a USER)
  (role concrete)
  (single-slot primero
    (type SYMBOL)
;+    (allowed-parents Plato)
;+    (cardinality 1 1)
    (create-accessor read-write))
  (single-slot segundo
    (type SYMBOL)
;+    (allowed-parents Plato)
;+    (cardinality 1 1)
    (create-accessor read-write))
  (single-slot postre
    (type SYMBOL)
;+    (allowed-parents Plato)
;+    (cardinality 1 1)
    (create-accessor read-write)))

(defclass Ingrediente
  (is-a USER)
  (role concrete)
  (single-slot contiene_gluten
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot contiene_azucar
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot contiene_alcohol
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot nombre
    (type STRING)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot producto_animal
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot contiene_lactosa
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write)))

(defclass Bebida
  (is-a USER)
  (role concrete)
  (single-slot contiene_gluten
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot precio
    (type FLOAT)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot contiene_alcohol
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot contiene_azucar
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot nombre
    (type STRING)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot producto_animal
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write))
  (single-slot contiene_lactosa
    (type SYMBOL)
    (allowed-values FALSE TRUE)
;+    (cardinality 0 1)
    (create-accessor read-write)))


;+AQUESTES DEFINICIONS PODEN ESTAR MALAMENT, PERO SI NO CLIPS ES QUEIXA


(defclass %3ASTANDARD-CLASS
 (is-a USER)
  (role concrete))

 (defclass %3APAL-CONSTRAINT
 (is-a USER)
  (role concrete))


;##########################
;###INSTANCE DEFINITIONS###
;##########################


(definstances instancies
; Sun May 07 13:04:27 CEST 2017
; 
;+ (version "3.4.8")
;+ (build "Build 629")


([Ingrediente] of  %3ASTANDARD-CLASS

  (%3ASLOT-CONSTRAINTS [ricorico_Class0]))

([ricorico_Class0] of  %3APAL-CONSTRAINT
)

([ricorico_Class10] of  Bebida

  (contiene_gluten TRUE)
  (nombre "Estrella Galicia sin Alcohol")
  (precio 2.0))

([ricorico_Class10003] of  Ingrediente

  (nombre "Merluza")
  (producto_animal TRUE))

([ricorico_Class10004] of  Ingrediente

  (contiene_gluten TRUE)
  (nombre "Tallarines"))

([ricorico_Class10005] of  Ingrediente

  (nombre "Cerdo")
  (producto_animal TRUE))

([ricorico_Class10006] of  Ingrediente

  (nombre "Atun")
  (producto_animal TRUE))

([ricorico_Class10007] of  Ingrediente

  (nombre "Brotes de soja"))

([ricorico_Class10008] of  Ingrediente

  (contiene_gluten TRUE)
  (nombre "Salsa de soja"))

([ricorico_Class10010] of  Ingrediente

  (nombre "Tomate"))

([ricorico_Class10011] of  Ingrediente

  (nombre "Jamon serrano")
  (producto_animal TRUE))

([ricorico_Class10012] of  Ingrediente

  (nombre "Pimientos del padrón"))

([ricorico_Class10013] of  Plato

  (complejidad 5)
  (disponibilidad verano otono primavera invierno)
  (es_moderno TRUE)
  (ingrediente
    [ricorico_Class10012]
    [ricorico_Class10011])
  (lugarOrigen Espana)
  (nombre "Ruleta rusa de pimiento spicy xplosion con speck de nuestra tierra")
  (precio 25.0)
  (tamano 3)
  (tipo "primero"))

([ricorico_Class10014] of  Ingrediente

  (nombre "Cebolla"))

([ricorico_Class10015] of  Ingrediente

  (nombre "Ajo"))

([ricorico_Class10016] of  Ingrediente

  (nombre "Aceite"))

([ricorico_Class10017] of  Ingrediente

  (nombre "Patata"))

([ricorico_Class10018] of  Plato

  (complejidad 2)
  (disponibilidad primavera verano otono invierno)
  (ingrediente
    [ricorico_Class10014]
    [ricorico_Class7]
    [ricorico_Class10017])
  (lugarOrigen Espana)
  (nombre "Tortilla de patatas")
  (precio 6.0)
  (tamano 5)
  (tipo
    "primero"
    "segundo"))

([ricorico_Class10019] of  Ingrediente

  (nombre "Jengibre"))

([ricorico_Class10020] of  Plato

  (complejidad 3)
  (disponibilidad verano primavera otono invierno)
  (es_frio TRUE)
  (ingrediente
    [ricorico_Class10006]
    [ricorico_Class10019]
    [ricorico_Class10008])
  (lugarOrigen Japon)
  (nombre "Tataki de atun")
  (precio 15.0)
  (tamano 3)
  (tipo "segundo"))

([ricorico_Class10021] of  Ingrediente

  (nombre "Arroz"))

([ricorico_Class10022] of  Plato

  (complejidad 2)
  (disponibilidad verano primavera otono invierno)
  (ingrediente
    [ricorico_Class10021]
    [ricorico_Class7]
    [ricorico_Class10010])
  (lugarOrigen Espana)
  (nombre "Arroz a la cubana")
  (precio 5.0)
  (tamano 5)
  (tipo "segundo"))

([ricorico_Class10023] of  Ingrediente

  (nombre "Cereza"))

([ricorico_Class10024] of  Ingrediente

  (nombre "Cebolla tierna"))

([ricorico_Class10025] of  Ingrediente

  (nombre "Almendra"))

([ricorico_Class10026] of  Plato

  (complejidad 3)
  (disponibilidad primavera)
  (es_frio TRUE)
  (ingrediente
    [ricorico_Class10025]
    [ricorico_Class10024]
    [ricorico_Class10023]
    [ricorico_Class10010])
  (nombre "Sopa de cereza")
  (precio 7.0)
  (tamano 3)
  (tipo "primero"))

([ricorico_Class10027] of  Plato

  (complejidad 5)
  (disponibilidad verano)
  (es_moderno TRUE)
  (ingrediente
    [ricorico_Class10011]
    [ricorico_Class10028])
  (lugarOrigen Espana)
  (nombre "Edamame de nuestra tierra con crujiente de ibérico")
  (precio 18.0)
  (tamano 2)
  (tipo
    "primero"
    "segundo"))

([ricorico_Class10028] of  Ingrediente

  (nombre "Judia"))

([ricorico_Class10029] of  Ingrediente

  (contiene_azucar TRUE)
  (nombre "Chocolate"))

([ricorico_Class10030] of  Plato

  (complejidad 5)
  (disponibilidad primavera verano otono invierno)
  (es_frio TRUE)
  (es_moderno TRUE)
  (ingrediente
    [ricorico_Class10031]
    [ricorico_Class10029])
  (lugarOrigen Espana)
  (nombre "Bollicao handmade al estilo de la abuela")
  (precio 20.0)
  (tamano 2)
  (tipo "postre"))

([ricorico_Class10031] of  Ingrediente

  (contiene_gluten TRUE)
  (nombre "Pan"))

([ricorico_Class10032] of  Plato

  (complejidad 5)
  (disponibilidad primavera verano otono invierno)
  (es_moderno TRUE)
  (ingrediente
    [ricorico_Class10033]
    [ricorico_Class10031])
  (lugarOrigen Espana)
  (nombre "Bombón de bechamel envuelto de pan hidrolizado")
  (precio 12.0)
  (tamano 2)
  (tipo "primero"))

([ricorico_Class10033] of  Ingrediente

  (contiene_lactosa TRUE)
  (nombre "Leche"))

([ricorico_Class10034] of  Plato

  (complejidad 2)
  (disponibilidad primavera verano otono invierno)
  (ingrediente
    [ricorico_Class10035]
    [ricorico_Class10010])
  (lugarOrigen Italia)
  (nombre "Pizza")
  (precio 8.0)
  (tamano 4)
  (tipo
    "primero"
    "segundo"))

([ricorico_Class10035] of  Ingrediente

  (contiene_gluten TRUE)
  (nombre "Harina"))

([ricorico_Class10036] of  Ingrediente

  (nombre "Fresas"))

([ricorico_Class10037] of  Ingrediente

  (contiene_azucar TRUE)
  (nombre "Nata montada"))

([ricorico_Class10038] of  Plato

  (complejidad 1)
  (disponibilidad primavera verano)
  (es_frio TRUE)
  (ingrediente
    [ricorico_Class10036]
    [ricorico_Class10037])
  (nombre "Fresas con nata")
  (precio 3.0)
  (tamano 2)
  (tipo "postre"))

([ricorico_Class10039] of  Ingrediente

  (contiene_gluten TRUE)
  (nombre "Tortilla de maiz"))

([ricorico_Class10040] of  Ingrediente

  (nombre "Jalapeno"))

([ricorico_Class10041] of  Plato

  (complejidad 2)
  (disponibilidad primavera verano otono invierno)
  (ingrediente
    [ricorico_Class10015]
    [ricorico_Class10014]
    [ricorico_Class10040]
    [ricorico_Class8]
    [ricorico_Class10010]
    [ricorico_Class10039])
  (lugarOrigen Mexico)
  (nombre "Tacos de ternera")
  (precio 6.0)
  (tamano 4)
  (tipo
    "primero"
    "segundo"))

([ricorico_Class10042] of  Plato

  (complejidad 2)
  (disponibilidad primavera verano otono invierno)
  (ingrediente [ricorico_Class10003])
  (nombre "Sopa de merluza")
  (precio 7.0)
  (tamano 3)
  (tipo "primero"))

([ricorico_Class10043] of  Ingrediente

  (nombre "Lenteja"))

([ricorico_Class10044] of  Ingrediente

  (nombre "Chorizo")
  (producto_animal TRUE))

([ricorico_Class10045] of  Plato

  (complejidad 2)
  (disponibilidad primavera otono invierno)
  (ingrediente
    [ricorico_Class10044]
    [ricorico_Class10043]
    [ricorico_Class10017])
  (lugarOrigen Espana)
  (nombre "Lentejas con chorizo")
  (precio 6.0)
  (tamano 5)
  (tipo "segundo"))

([ricorico_Class10046] of  Ingrediente

  (contiene_gluten FALSE)
  (nombre "Shiitake"))

([ricorico_Class10047] of  Plato

  (complejidad 3)
  (disponibilidad otono)
  (ingrediente
    [ricorico_Class10046]
    [ricorico_Class10004])
  (nombre "Tallarines con salsa de shiitake")
  (precio 10.0)
  (tamano 3)
  (tipo
    "primero"
    "segundo"))

([ricorico_Class10048] of  Ingrediente

  (contiene_gluten TRUE)
  (nombre "Fideos de trigo"))

([ricorico_Class10049] of  Ingrediente

  (nombre "Lomo")
  (producto_animal TRUE))

([ricorico_Class10050] of  Plato

  (complejidad 2)
  (disponibilidad otono invierno)
  (ingrediente
    [ricorico_Class10048]
    [ricorico_Class10049]
    [ricorico_Class10008]
    [ricorico_Class10046])
  (lugarOrigen Japon)
  (nombre "Ramen")
  (precio 8.0)
  (tamano 3)
  (tipo "segundo"))

([ricorico_Class11] of  Bebida

  (contiene_lactosa TRUE)
  (nombre "Café con Leche")
  (precio 1.8)
  (producto_animal TRUE))

([ricorico_Class2] of  Bebida

  (contiene_alcohol FALSE)
  (contiene_azucar FALSE)
  (nombre "Botella de Agua")
  (precio 2.0))

([ricorico_Class3] of  Bebida

  (contiene_azucar TRUE)
  (nombre "Coca Cola")
  (precio 1.5))

([ricorico_Class4] of  Bebida

  (contiene_azucar TRUE)
  (nombre "Fanta de Naranja")
  (precio 1.8))

([ricorico_Class5] of  Bebida

  (contiene_alcohol TRUE)
  (contiene_azucar TRUE)
  (nombre "Gin Tonic")
  (precio 8.0))

([ricorico_Class6] of  Bebida

  (contiene_alcohol TRUE)
  (nombre "Vino Albariño")
  (precio 10.0)
  (producto_animal FALSE))

([ricorico_Class7] of  Ingrediente

  (nombre "Huevo")
  (producto_animal TRUE))

([ricorico_Class8] of  Ingrediente

  (nombre "Ternera")
  (producto_animal TRUE))

([ricorico_Class9] of  Bebida

  (contiene_alcohol TRUE)
  (contiene_gluten TRUE)
  (nombre "Estrella Galicia")
  (precio 2.0))

)

