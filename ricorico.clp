;################################################
;################################################
;############DEFINICIONS DE CLASSES##############
;################################################
;################################################

; Thu May 18 13:45:48 CEST 2017
; 
;+ (version "3.4.8")
;+ (build "Build 629")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
        (is-a USER)
        (role abstract)
        (single-slot postre
                (type INSTANCE)
;+              (allowed-classes Plato)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot tamano
                (type INTEGER)
                (range 1 5)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot de_cuchara
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot primero
                (type INSTANCE)
;+              (allowed-classes Plato)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot contiene_gluten
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot es_moderno
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot contiene_azucar
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot contiene_lactosa
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot complejidad
                (type INTEGER)
                (range 1 5)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (multislot ingrediente
                (type INSTANCE)
;+              (allowed-classes Ingrediente)
                (cardinality 1 8)
                (create-accessor read-write))
        (single-slot segundo
                (type INSTANCE)
;+              (allowed-classes Plato)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot producto_animal
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot precio
                (type FLOAT)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot contiene_alcohol
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (multislot tipo
                (type SYMBOL)
                (allowed-values primero segundo postre)
                (cardinality 1 3)
                (create-accessor read-write))
        (multislot disponibilidad
                (type SYMBOL)
                (allowed-values verano otono primavera invierno)
                (cardinality 1 4)
                (create-accessor read-write))
        (single-slot lugar_origen
                (type SYMBOL)
                (allowed-values Espana Japon Mexico Peru Francia)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot es_frio
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot nombre
                (type STRING)
;+              (cardinality 1 1)
                (create-accessor read-write)))

(defclass Ingrediente
        (is-a USER)
        (role concrete)
        (single-slot contiene_gluten
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot contiene_alcohol
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot contiene_azucar
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot nombre
                (type STRING)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot producto_animal
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot contiene_lactosa
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write)))

(defclass Menu
        (is-a USER)
        (role concrete)
        (single-slot primero
                (type INSTANCE)
;+              (allowed-classes Plato)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot segundo
                (type INSTANCE)
;+              (allowed-classes Plato)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot postre
                (type INSTANCE)
;+              (allowed-classes Plato)
;+              (cardinality 1 1)
                (create-accessor read-write)))

(defclass Bebida
        (is-a USER)
        (role concrete)
        (single-slot contiene_gluten
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot precio
                (type FLOAT)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot contiene_alcohol
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot contiene_azucar
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot nombre
                (type STRING)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot producto_animal
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot contiene_lactosa
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write)))

(defclass Plato
        (is-a USER)
        (role concrete)
        (single-slot es_frio
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot es_moderno
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot tamano
                (type INTEGER)
                (range 1 5)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot precio
                (type FLOAT)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (multislot ingrediente
                (type INSTANCE)
;+              (allowed-classes Ingrediente)
                (cardinality 1 8)
                (create-accessor read-write))
        (single-slot de_cuchara
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot nombre
                (type STRING)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (multislot tipo
                (type SYMBOL)
                (allowed-values primero segundo postre)
                (cardinality 1 3)
                (create-accessor read-write))
        (single-slot complejidad
                (type INTEGER)
                (range 1 5)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (multislot disponibilidad
                (type SYMBOL)
                (allowed-values verano otono primavera invierno)
                (cardinality 1 4)
                (create-accessor read-write))
        (single-slot lugar_origen
                (type SYMBOL)
                (allowed-values Espana Japon Mexico Peru Francia)
;+              (cardinality 0 1)
                (create-accessor read-write)))

;################################################
;################################################
;##########DEFINICIONS DE INSTANCIES#############
;################################################
;################################################


(definstances instancies
; Thu May 18 13:45:48 CEST 2017
; 
;+ (version "3.4.8")
;+ (build "Build 629")

([ricorico_Class1] of  Plato

        (complejidad 2)
        (de_cuchara TRUE)
        (disponibilidad verano invierno primavera otono)
        (ingrediente
                [ricorico_Class40]
                [ricorico_Class2])
        (lugar_origen Espana)
        (nombre "Lentejas con Chorizo")
        (precio 6.0)
        (tamano 4)
        (tipo segundo))

([ricorico_Class10] of  Ingrediente

        (contiene_gluten TRUE)
        (nombre "Harina"))

([ricorico_Class10023] of  Plato

        (complejidad 3)
        (de_cuchara TRUE)
        (disponibilidad verano primavera otono invierno)
        (ingrediente
                [ricorico_Class37]
                [ricorico_Class40]
                [ricorico_Class21]
                [ricorico_Class20])
        (lugar_origen Espana)
        (nombre "Cocido Madrileno")
        (precio 7.0)
        (tamano 5)
        (tipo segundo))

([ricorico_Class10024] of  Plato

        (complejidad 2)
        (disponibilidad verano primavera otono invierno)
        (ingrediente
                [ricorico_Class40]
                [ricorico_Class5]
                [ricorico_Class10025])
        (lugar_origen Espana)
        (nombre "Patatas Revolconas")
        (precio 3.0)
        (tamano 4)
        (tipo primero))

([ricorico_Class10025] of  Ingrediente

        (nombre "Pimentón"))

([ricorico_Class10026] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class29]
                [ricorico_Class30]
                [ricorico_Class5]
                [ricorico_Class10025])
        (lugar_origen Espana)
        (nombre "Patatas Bravas")
        (precio 3.5)
        (tamano 5)
        (tipo primero))

([ricorico_Class10027] of  Ingrediente

        (nombre "Pollo")
        (producto_animal TRUE))

([ricorico_Class10028] of  Ingrediente

        (nombre "Conejo")
        (producto_animal TRUE))

([ricorico_Class10029] of  Plato

        (complejidad 3)
        (disponibilidad verano otono invierno primavera)
        (ingrediente
                [ricorico_Class29]
                [ricorico_Class32]
                [ricorico_Class10028]
                [ricorico_Class16]
                [ricorico_Class10027])
        (lugar_origen Espana)
        (nombre "Paella Valenciana")
        (precio 10.0)
        (tamano 4)
        (tipo segundo))

([ricorico_Class10030] of  Plato

        (complejidad 2)
        (disponibilidad verano)
        (es_frio TRUE)
        (ingrediente
                [ricorico_Class29]
                [ricorico_Class30]
                [ricorico_Class48])
        (lugar_origen Espana)
        (nombre "Gazpacho")
        (precio 4.5)
        (tamano 3)
        (tipo primero))

([ricorico_Class10031] of  Plato

        (complejidad 3)
        (disponibilidad verano)
        (es_frio TRUE)
        (ingrediente
                [ricorico_Class29]
                [ricorico_Class30]
                [ricorico_Class31]
                [ricorico_Class46])
        (lugar_origen Espana)
        (nombre "Ajoblanco")
        (precio 4.5)
        (tamano 3)
        (tipo primero))

([ricorico_Class10032] of  Plato

        (complejidad 4)
        (disponibilidad verano primavera otono invierno)
        (ingrediente
                [ricorico_Class30]
                [ricorico_Class15]
                [ricorico_Class10])
        (lugar_origen Espana)
        (nombre "Kokotxas de Bacalao en Salsa Verde")
        (precio 12.3)
        (tamano 3)
        (tipo segundo))

([ricorico_Class10033] of  Plato

        (complejidad 2)
        (disponibilidad otono invierno)
        (ingrediente
                [ricorico_Class39]
                [ricorico_Class10])
        (lugar_origen Espana)
        (nombre "Chocolate con Churros")
        (precio 6.0)
        (tamano 3)
        (tipo postre))

([ricorico_Class10034] of  Ingrediente

        (contiene_azucar TRUE)
        (nombre "Azucar"))

([ricorico_Class10035] of  Ingrediente

        (nombre "Mantequilla")
        (producto_animal TRUE))

([ricorico_Class10036] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class10034]
                [ricorico_Class10035]
                [ricorico_Class46])
        (lugar_origen Espana)
        (nombre "Sobaos Pasiegos")
        (precio 5.0)
        (tamano 4)
        (tipo postre))

([ricorico_Class10037] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class10034]
                [ricorico_Class4])
        (lugar_origen Espana)
        (nombre "Crema Catalana")
        (precio 5.5)
        (tamano 3)
        (tipo postre))

([ricorico_Class10038] of  Ingrediente

        (contiene_lactosa TRUE)
        (nombre "Leche")
        (producto_animal TRUE))

([ricorico_Class10039] of  Plato

        (complejidad 1)
        (disponibilidad verano otono primavera invierno)
        (es_frio FALSE)
        (ingrediente
                [ricorico_Class32]
                [ricorico_Class10034]
                [ricorico_Class10038])
        (nombre "Arroz con Leche")
        (precio 4.5)
        (tamano 3)
        (tipo postre))

([ricorico_Class10040] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class10027]
                [ricorico_Class19]
                [ricorico_Class10041])
        (lugar_origen Mexico)
        (nombre "Enchilada")
        (precio 4.5)
        (tamano 4)
        (tipo primero))

([ricorico_Class10041] of  Ingrediente

        (contiene_gluten TRUE)
        (nombre "Tortilla de Trigo"))

([ricorico_Class10042] of  Ingrediente

        (nombre "Tortilla de Maiz"))

([ricorico_Class10043] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class10027]
                [ricorico_Class19]
                [ricorico_Class44]
                [ricorico_Class10042])
        (lugar_origen Mexico)
        (nombre "Taco")
        (precio 4.5)
        (tamano 4)
        (tipo primero segundo))

([ricorico_Class10044] of  Ingrediente

        (nombre "Jalapeno"))

([ricorico_Class10045] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class10046]
                [ricorico_Class10044]
                [ricorico_Class19]
                [ricorico_Class48]
                [ricorico_Class10042])
        (lugar_origen Mexico)
        (nombre "Nachos con Queso y Guacamole")
        (precio 5.5)
        (tamano 5)
        (tipo primero))

([ricorico_Class10046] of  Ingrediente

        (nombre "Aguacate"))

([ricorico_Class10047] of  Ingrediente

        (nombre "Chile"))

([ricorico_Class10048] of  Ingrediente

        (nombre "Cilantro"))

([ricorico_Class10049] of  Ingrediente

        (nombre "Camaron")
        (producto_animal TRUE))

([ricorico_Class10050] of  Plato

        (complejidad 2)
        (disponibilidad verano)
        (ingrediente
                [ricorico_Class10049]
                [ricorico_Class10047]
                [ricorico_Class10048])
        (lugar_origen Mexico)
        (nombre "Camarón en aguachile")
        (precio 6.5)
        (tamano 3)
        (tipo primero))

([ricorico_Class10051] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class10027]
                [ricorico_Class19]
                [ricorico_Class10042]
                [ricorico_Class10052])
        (lugar_origen Mexico)
        (nombre "Huarache de Pollo")
        (precio 6.5)
        (tamano 5)
        (tipo segundo))

([ricorico_Class10052] of  Ingrediente

        (nombre "Frijoles"))

([ricorico_Class10053] of  Plato

        (complejidad 2)
        (disponibilidad verano otono invierno primavera)
        (ingrediente
                [ricorico_Class10047]
                [ricorico_Class10027])
        (lugar_origen Mexico)
        (nombre "Pollo con salsa pipian")
        (precio 7.5)
        (tamano 4)
        (tipo segundo))

([ricorico_Class10054] of  Plato

        (complejidad 2)
        (disponibilidad verano otono invierno primavera)
        (ingrediente
                [ricorico_Class10047]
                [ricorico_Class10027])
        (lugar_origen Mexico)
        (nombre "Tamales yucatecos")
        (precio 4.5)
        (tamano 4)
        (tipo primero))

([ricorico_Class10056] of  Ingrediente

        (nombre "Mamey"))

([ricorico_Class10057] of  Plato

        (complejidad 1)
        (disponibilidad verano otono invierno primavera)
        (ingrediente
                [ricorico_Class10034]
                [ricorico_Class10056])
        (nombre "Ate de Mamey")
        (precio 3.5)
        (tamano 3)
        (tipo postre))

([ricorico_Class10058] of  Ingrediente

        (nombre "Coco"))

([ricorico_Class10059] of  Ingrediente

        (contiene_azucar TRUE)
        (contiene_lactosa TRUE)
        (nombre "Leche condensada")
        (producto_animal TRUE))

([ricorico_Class10060] of  Plato

        (complejidad 3)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class10058]
                [ricorico_Class10059])
        (lugar_origen Mexico)
        (nombre "Besos de Coco")
        (precio 4.0)
        (tamano 4)
        (tipo postre))

([ricorico_Class10061] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (ingrediente [ricorico_Class10034])
        (lugar_origen Mexico)
        (nombre "Dulce de alfeñique")
        (precio 3.5)
        (tamano 3)
        (tipo postre))

([ricorico_Class10063] of  Plato

        (complejidad 1)
        (disponibilidad verano otono primavera invierno)
        (ingrediente [ricorico_Class10034])
        (lugar_origen Mexico)
        (nombre "Mueganos")
        (precio 3.0)
        (tamano 2)
        (tipo postre))

([ricorico_Class10064] of  Plato

        (complejidad 1)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class10038]
                [ricorico_Class10067])
        (nombre "Cafe con Leche")
        (precio 1.5)
        (tamano 2)
        (tipo postre))

([ricorico_Class10065] of  Plato

        (complejidad 1)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class10066]
                [ricorico_Class10067])
        (nombre "Cafe con Leche de Soja")
        (precio 1.5)
        (tamano 2)
        (tipo postre))

([ricorico_Class10066] of  Ingrediente

        (nombre "Leche de Soja"))

([ricorico_Class10067] of  Ingrediente

        (nombre "Cafe"))

([ricorico_Class10069] of  Plato

        (complejidad 1)
        (disponibilidad verano otono primavera invierno)
        (ingrediente [ricorico_Class10067])
        (nombre "Cafe Solo")
        (precio 1.0)
        (tamano 1)
        (tipo postre))

([ricorico_Class10070] of  Ingrediente

        (nombre "Calabacin"))

([ricorico_Class10071] of  Ingrediente

        (nombre "Berenjena"))

([ricorico_Class10072] of  Plato

        (complejidad 3)
        (disponibilidad verano primavera)
        (ingrediente
                [ricorico_Class29]
                [ricorico_Class30]
                [ricorico_Class10070]
                [ricorico_Class35]
                [ricorico_Class16]
                [ricorico_Class48])
        (lugar_origen Francia)
        (nombre "Ratatouille")
        (precio 7.5)
        (tamano 3)
        (tipo primero segundo))

([ricorico_Class10073] of  Plato

        (complejidad 4)
        (disponibilidad verano otono primavera invierno)
        (ingrediente [ricorico_Class10027])
        (lugar_origen Francia)
        (nombre "Coq au vin")
        (precio 12.0)
        (tamano 3)
        (tipo segundo))

([ricorico_Class10074] of  Ingrediente

        (nombre "Pato")
        (producto_animal TRUE))

([ricorico_Class10075] of  Plato

        (complejidad 4)
        (disponibilidad verano otono primavera invierno)
        (ingrediente [ricorico_Class10074])
        (lugar_origen Francia)
        (nombre "Magret de canard")
        (precio 12.0)
        (tamano 3)
        (tipo segundo))

([ricorico_Class10076] of  Ingrediente

        (nombre "Chalota"))

([ricorico_Class10077] of  Plato

        (complejidad 4)
        (disponibilidad verano primavera otono invierno)
        (ingrediente
                [ricorico_Class10076]
                [ricorico_Class10035]
                [ricorico_Class56])
        (lugar_origen Francia)
        (nombre "Merluza al beurre blanc")
        (precio 11.0)
        (tamano 3)
        (tipo segundo))

([ricorico_Class10078] of  Plato

        (complejidad 2)
        (disponibilidad verano primavera)
        (es_frio TRUE)
        (ingrediente
                [ricorico_Class35]
                [ricorico_Class10038]
                [ricorico_Class5])
        (lugar_origen Francia)
        (nombre "Vichyssoise")
        (precio 12.0)
        (tamano 3)
        (tipo primero))

([ricorico_Class10079] of  Plato

        (complejidad 4)
        (disponibilidad verano otono primavera invierno)
        (es_moderno TRUE)
        (ingrediente
                [ricorico_Class43]
                [ricorico_Class10074])
        (lugar_origen Francia)
        (nombre "Foie Grass con Reduccion de Fresa")
        (precio 3.0)
        (tamano 3)
        (tipo primero))

([ricorico_Class10080] of  Plato

        (complejidad 3)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class35]
                [ricorico_Class37]
                [ricorico_Class5]
                [ricorico_Class19])
        (lugar_origen Francia)
        (nombre "Tartiflette")
        (precio 8.0)
        (tamano 3)
        (tipo primero))

([ricorico_Class10081] of  Plato

        (complejidad 4)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class10034]
                [ricorico_Class38]
                [ricorico_Class4])
        (lugar_origen Francia)
        (nombre "Clafoutis de Cereza")
        (precio 9.0)
        (tamano 3)
        (tipo postre))

([ricorico_Class10083] of  Ingrediente

        (nombre "Manzana"))

([ricorico_Class10084] of  Plato

        (complejidad 4)
        (disponibilidad verano otono invierno primavera)
        (ingrediente
                [ricorico_Class10034]
                [ricorico_Class10]
                [ricorico_Class10035]
                [ricorico_Class10083])
        (lugar_origen Francia)
        (nombre "Tarta Tatin de Manzana")
        (precio 8.5)
        (tamano 3)
        (tipo postre))

([ricorico_Class10086] of  Plato

        (complejidad 3)
        (disponibilidad verano otono invierno primavera)
        (ingrediente
                [ricorico_Class10034]
                [ricorico_Class39]
                [ricorico_Class10035])
        (lugar_origen Francia)
        (nombre "Coulant")
        (precio 6.0)
        (tamano 3)
        (tipo postre))

([ricorico_Class10087] of  Ingrediente

        (nombre "Salmon")
        (producto_animal TRUE))

([ricorico_Class10088] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (ingrediente [ricorico_Class33])
        (nombre "Sashimi de Atun")
        (precio 7.0)
        (tamano 2)
        (tipo primero))

([ricorico_Class10089] of  Ingrediente

        (nombre "Pulpo")
        (producto_animal TRUE))

([ricorico_Class10090] of  Ingrediente

        (nombre "Harina de Trigo"))

([ricorico_Class10091] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class10090]
                [ricorico_Class10089])
        (nombre "Takoyaki")
        (precio 7.5)
        (tamano 3)
        (tipo primero segundo))

([ricorico_Class10093] of  Plato

        (complejidad 3)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class32]
                [ricorico_Class10034]
                [ricorico_Class10094])
        (lugar_origen Japon)
        (nombre "Daifuku")
        (precio 4.5)
        (tamano 2))

([ricorico_Class10094] of  Ingrediente

        (nombre "Judias"))

([ricorico_Class10095] of  Plato

        (complejidad 1)
        (disponibilidad primavera otono verano invierno)
        (ingrediente [ricorico_Class10096])
        (nombre "Te Verde")
        (precio 2.0)
        (tamano 2)
        (tipo postre))

([ricorico_Class10096] of  Ingrediente

        (nombre "Te verde"))

([ricorico_Class10097] of  Ingrediente

        (nombre "Ostra"))

([ricorico_Class10098] of  Plato

        (complejidad 3)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class10090]
                [ricorico_Class4]
                [ricorico_Class10097])
        (lugar_origen Japon)
        (nombre "Kaki furai")
        (precio 10.0)
        (tamano 3)
        (tipo primero segundo))

([ricorico_Class11] of  Plato

        (complejidad 1)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class29]
                [ricorico_Class37])
        (lugar_origen Espana)
        (nombre "Torreznos")
        (precio 4.0)
        (tamano 4)
        (tipo primero))

([ricorico_Class12] of  Plato

        (complejidad 3)
        (disponibilidad verano primavera otono invierno)
        (ingrediente
                [ricorico_Class29]
                [ricorico_Class4]
                [ricorico_Class5])
        (lugar_origen Espana)
        (nombre "Tortilla de Patatas")
        (precio 4.0)
        (tamano 5)
        (tipo primero segundo))

([ricorico_Class13] of  Ingrediente

        (contiene_azucar TRUE)
        (nombre "Uva"))

([ricorico_Class14] of  Plato

        (complejidad 2)
        (de_cuchara TRUE)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class30]
                [ricorico_Class40]
                [ricorico_Class46]
                [ricorico_Class13])
        (lugar_origen Espana)
        (nombre "Migas del Pastor con Uvas")
        (precio 6.0)
        (tamano 5)
        (tipo segundo))

([ricorico_Class15] of  Ingrediente

        (nombre "Bacalao")
        (producto_animal TRUE))

([ricorico_Class16] of  Ingrediente

        (nombre "Pimiento"))

([ricorico_Class17] of  Plato

        (complejidad 3)
        (disponibilidad verano otono invierno primavera)
        (ingrediente
                [ricorico_Class15]
                [ricorico_Class16])
        (lugar_origen Espana)
        (nombre "Pimientos del Piquillo Rellenos de Bacalao")
        (precio 8.0)
        (tamano 3)
        (tipo primero))

([ricorico_Class18] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class46]
                [ricorico_Class19]
                [ricorico_Class44])
        (lugar_origen Espana)
        (nombre "Doble con Queso")
        (precio 3.5)
        (tamano 5)
        (tipo segundo))

([ricorico_Class19] of  Ingrediente

        (contiene_lactosa TRUE)
        (nombre "Queso")
        (producto_animal TRUE))

([ricorico_Class2] of  Ingrediente

        (nombre "Lentejas"))

([ricorico_Class20] of  Ingrediente

        (nombre "Morcilla")
        (producto_animal TRUE))

([ricorico_Class21] of  Ingrediente

        (nombre "Garbanzos"))

([ricorico_Class22] of  Bebida

        (contiene_alcohol FALSE)
        (contiene_azucar FALSE)
        (contiene_gluten FALSE)
        (contiene_lactosa FALSE)
        (nombre "Botella de agua")
        (precio 2.0)
        (producto_animal FALSE))

([ricorico_Class24] of  Bebida

        (contiene_azucar TRUE)
        (nombre "Coca cola")
        (precio 2.0))

([ricorico_Class25] of  Bebida

        (contiene_alcohol TRUE)
        (contiene_gluten TRUE)
        (nombre "Estrella Galicia")
        (precio 2.2))

([ricorico_Class26] of  Bebida

        (contiene_gluten TRUE)
        (nombre "Estrella Galicia sin alcohol")
        (precio 2.2))

([ricorico_Class27] of  Bebida

        (contiene_azucar TRUE)
        (nombre "Fanta de naranja")
        (precio 1.8))

([ricorico_Class28] of  Bebida

        (contiene_alcohol TRUE)
        (contiene_azucar TRUE)
        (nombre "Gin Tonic")
        (precio 8.0))

([ricorico_Class29] of  Ingrediente

        (nombre "Aceite"))

([ricorico_Class30] of  Ingrediente

        (nombre "Ajo"))

([ricorico_Class31] of  Ingrediente

        (nombre "Almendra"))

([ricorico_Class32] of  Ingrediente

        (nombre "Arroz"))

([ricorico_Class33] of  Ingrediente

        (nombre "Atun")
        (producto_animal TRUE))

([ricorico_Class34] of  Ingrediente

        (nombre "Brotes de soja"))

([ricorico_Class35] of  Ingrediente

        (nombre "Cebolla"))

([ricorico_Class36] of  Ingrediente

        (nombre "Cebolla tierna"))

([ricorico_Class37] of  Ingrediente

        (nombre "Cerdo")
        (producto_animal TRUE))

([ricorico_Class38] of  Ingrediente

        (nombre "Cereza"))

([ricorico_Class39] of  Ingrediente

        (contiene_azucar TRUE)
        (nombre "Chocolate"))

([ricorico_Class4] of  Ingrediente

        (nombre "Huevo")
        (producto_animal TRUE))

([ricorico_Class40] of  Ingrediente

        (nombre "Chorizo")
        (producto_animal TRUE))

([ricorico_Class42] of  Ingrediente

        (nombre "Fideos de trigo"))

([ricorico_Class43] of  Ingrediente

        (nombre "Fresas"))

([ricorico_Class44] of  Ingrediente

        (nombre "Ternera")
        (producto_animal TRUE))

([ricorico_Class46] of  Ingrediente

        (contiene_gluten TRUE)
        (nombre "Pan"))

([ricorico_Class47] of  Plato

        (complejidad 1)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class32]
                [ricorico_Class48])
        (lugar_origen Espana)
        (nombre "Arroz a la Cubana")
        (precio 6.0)
        (tamano 5)
        (tipo primero segundo))

([ricorico_Class48] of  Ingrediente

        (nombre "Tomate"))

([ricorico_Class49] of  Ingrediente

        (contiene_azucar TRUE)
        (nombre "Nata montada"))

([ricorico_Class5] of  Ingrediente

        (nombre "Patata"))

([ricorico_Class50] of  Plato

        (complejidad 1)
        (disponibilidad verano otono primavera invierno)
        (es_frio TRUE)
        (ingrediente
                [ricorico_Class43]
                [ricorico_Class49])
        (nombre "Fresas con Nata")
        (precio 4.0)
        (tamano 3)
        (tipo postre))

([ricorico_Class51] of  Plato

        (complejidad 2)
        (disponibilidad primavera)
        (es_frio TRUE)
        (ingrediente
                [ricorico_Class29]
                [ricorico_Class31]
                [ricorico_Class38]
                [ricorico_Class48])
        (nombre "Sopa de Cereza")
        (precio 4.0)
        (tamano 2)
        (tipo primero segundo))

([ricorico_Class52] of  Ingrediente

        (contiene_gluten TRUE)
        (nombre "Salsa de soja"))

([ricorico_Class53] of  Ingrediente

        (nombre "Jengibre"))

([ricorico_Class54] of  Plato

        (complejidad 3)
        (disponibilidad verano otono primavera invierno)
        (es_frio FALSE)
        (ingrediente
                [ricorico_Class33]
                [ricorico_Class53]
                [ricorico_Class52])
        (lugar_origen Japon)
        (nombre "Tataki de Atun")
        (precio 12.0)
        (tamano 3)
        (tipo primero segundo))

([ricorico_Class56] of  Ingrediente

        (nombre "Merluza")
        (producto_animal TRUE))

([ricorico_Class57] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (ingrediente [ricorico_Class56])
        (nombre "Sopa de Merluza")
        (precio 8.0)
        (tamano 4)
        (tipo primero segundo))

([ricorico_Class59] of  Plato

        (complejidad 5)
        (de_cuchara FALSE)
        (disponibilidad verano otono primavera invierno)
        (es_moderno TRUE)
        (ingrediente
                [ricorico_Class39]
                [ricorico_Class46])
        (lugar_origen Espana)
        (nombre "Bollicao Handmade al estilo de la abuela")
        (precio 19.0)
        (tamano 2)
        (tipo postre))

([ricorico_Class6] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class29]
                [ricorico_Class40]
                [ricorico_Class4]
                [ricorico_Class5])
        (lugar_origen Espana)
        (nombre "Huevos Rotos")
        (precio 5.0)
        (tamano 4)
        (tipo primero segundo))

([ricorico_Class8] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class9]
                [ricorico_Class10]
                [ricorico_Class46])
        (lugar_origen Espana)
        (nombre "Bocata de Calamares")
        (precio 4.0)
        (tamano 4)
        (tipo segundo))

([ricorico_Class9] of  Ingrediente

        (nombre "Calamar")
        (producto_animal TRUE))


)


;################################################
;################################################
;###########DEFINICIONS DE FUNCIONS##############
;################################################
;################################################

(deffunction pregunta-multivaluada (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (if (lexemep ?answer) 
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
      (if (lexemep ?answer) 
          then (bind ?answer (lowcase ?answer))))
   ?answer)

(deffunction si-o-no-p (?question)
   (bind ?response (pregunta-multivaluada ?question si no s n))
   (if (or (eq ?response si) (eq ?response s))
       then TRUE 
       else FALSE))

(deffunction pregunta-general (?pregunta)
    (format t "%s " ?pregunta)
  (bind ?respuesta (read))
  (while (not (lexemep ?respuesta)) do
    (format t "%s " ?pregunta)
    (bind ?respuesta (read))
    )
  ?respuesta
)

(deffunction pregunta-general-integer (?pregunta)
    (format t "%s " ?pregunta)
  (bind ?respuesta (read))
  (while (not (and (integerp ?respuesta) (> ?respuesta 0) )) do
    (format t "%s " ?pregunta)
    (bind ?respuesta (read))
    )
  ?respuesta
)

(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
  (format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
  (bind ?respuesta (read))
  (while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
    (format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
    (bind ?respuesta (read))
  )
  ?respuesta
)

(deffunction pregunta-llista (?pregunta)
 (format t "%s?" ?pregunta)
 (bind ?resposta (readline))
 (bind ?res (str-explode ?resposta))
 (bind ?list (create$ "abstemio" "vegano" "lactosa" "diabetico" "celiaco"))
 (bind ?list_resultat (create$ -1))
 (progn$ (?var ?res) 
        (if (not (eq (nth$ (integer ?var) ?list) nil)) then (insert$ ?list_resultat 1 (nth$ (integer ?var) ?list))
        )
 )

 (progn$ (?var2 ?list_resultat)
        (printout t ?var2 crlf)
 )

 ?list_resultat
)

;################################################
;################################################
;##############CLASSES AUXILIARS#################
;################################################
;################################################

;+ Estructura para guardar la puntuacion de los platos

(defclass Recomendacion 
  (is-a USER)
  (role concrete)
  (slot contenido
    (type INSTANCE)
    (create-accessor read-write))
  (slot puntuacion
    (type INTEGER)
    (create-accessor read-write))
  (multislot justificaciones
    (type STRING)
    (create-accessor read-write))
  (slot marcado
        (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
)

(defclass AlimentoProhibido
   (is-a USER)
   (role concrete)
   (slot contenido
        (type INSTANCE)
        (create-accessor read-write)
   )
)

(deftemplate Contexto
  (slot nomusuari (type STRING))
  (slot epoca (type SYMBOL) (default IDK))
  (slot comensales (type INTEGER) (default -1))
  (slot es_vegano (type SYMBOL) (allowed-values FALSE TRUE IDK) (default IDK))
  (slot es_celiaco (type SYMBOL) (allowed-values FALSE TRUE IDK) (default IDK))
  (slot es_diabetico (type SYMBOL) (allowed-values FALSE TRUE IDK) (default IDK))
  (slot es_lactosa (type SYMBOL) (allowed-values FALSE TRUE IDK) (default IDK))
  (slot es_abstemio (type SYMBOL) (allowed-values FALSE TRUE IDK) (default IDK))
  (slot preciomin (type FLOAT) (default -1.0))
  (slot preciomax (type FLOAT) (default -1.0))
)

;################################################
;################################################
;##################QUERY RULES###################
;################################################
;################################################

(defrule bienvenido
 (not (Contexto))
  =>
        (printout t "
       .--,--.            
       `.  ,.'                    
        |___|       
        :o o:   o                ___  _   _  ____  ___  _____  ____  ____     ____  ____  _____  ____  ____  
       _`~^~'_  |               / __)( )_( )(_  _)/ __)(  _  )(_  _)( ___)   (  _  (  _  (  _  )(_  _)(  _   
     /'   ^   `\=               ( (__  ) _ (  _)(_( (__  )(_)(   )(   )__)     )(_) ))   / )(_)(  _)(_  )(_) )
   .'  _______ '~                \___)(_) (_)(____) \___)(_____) (__) (____)   (____/(_) _)(_____)(____)(____/
   ` <=|     |= /'
       |     |
       |_____|  
~~~~~~~ ===== ~~~~~~~~ ")
)

; no hacer mas de un modify de un mismo fact en una misma
; rule, se crea mas de una.

(defrule pregunta-inicial
  (not (Contexto))
  =>
  (bind ?nombre (pregunta-general "Cual es tu nombre?"))
  (assert (Contexto (nomusuari ?nombre)))
  (assert (inirecomendaciones nope))
)

(defrule definir-epoca
  ?c <- (Contexto (epoca ?ep) (preciomax ?p))
  (test (eq ?ep IDK))
  =>
  (bind ?e (pregunta-multivaluada "En que estacion se celebrara el evento? (primavera, verano, otono o invierno) " primavera verano otono invierno))
  (modify ?c (epoca ?e))
)

(defrule definir-comensales
  ?c <- (Contexto (comensales ?come))
  (test (eq ?come -1))
  =>
  (bind ?aux (pregunta-general-integer "Cuantos comensales seran?"))
  (modify ?c (comensales ?aux) )
)

(defrule definir-precio-min
  ?c <- (Contexto (preciomin ?pmi) (preciomax ?pma))
  (test (and (< ?pmi 0.0) (< ?pma 0.0) ))
  =>
  (bind ?pmin (pregunta-numerica "Cual sera el precio minimo por comensal?" 0 100))
  (modify ?c (preciomin ?pmin) )
)

(defrule definir-precio-max
  ?c <- (Contexto (preciomin ?pmi) (preciomax ?pma))
  (test (and (< ?pma 0.0) (>= ?pmi 0.0)) )
  =>
  (bind ?pmax (pregunta-numerica "Cual sera el precio maximo por comensal?" ?pmi 300))
  (modify ?c (preciomax ?pmax))
)

;NO FUNCIONA
;(defrule definir-restricciones
;  ?c <- (Contexto (restricciones $?r))
;  (test (eq (length$ $?r) 0))
;  =>
;  (printout t "Tiene algun tipo de restriccion alimentaria? Marque con numeros las opciones:" crlf)
;  (modify ?c (restricciones (pregunta-llista "1:abstemio   2:vegano   3:lactosa    4:diabetico   5:celiaco") ))
;)


(defrule definir-vegano
  ?c <- (Contexto (es_vegano ?veg))
  (test (eq ?veg IDK))
  =>
  (bind ?test(si-o-no-p "El menu tiene que ser apto para veganos? (s/n) "))
  (modify ?c (es_vegano ?test))
)

(defrule definir-celiaco
  ?c <- (Contexto (es_celiaco ?cel))
  (test (eq ?cel IDK))
  =>
  (bind ?test(si-o-no-p "El menu tiene que ser apto para celiacos? (s/n) "))
  (modify ?c (es_celiaco ?test))
)

(defrule definir-lactosa
  ?c <- (Contexto (es_lactosa ?lac))
  (test (eq ?lac IDK))
  =>
  (bind ?test(si-o-no-p "El menu tiene que ser apto para intolerantes a la lactosa? (s/n) "))
  (modify ?c (es_lactosa ?test))
)

(defrule definir-abstemio
  ?c <- (Contexto (es_abstemio ?abs))
  (test (eq ?abs IDK))
  =>
  (bind ?test(si-o-no-p "El menu tiene que ser apto para abstemios? (s/n) "))
  (modify ?c (es_abstemio ?test))
)

(defrule definir-diabetico
  ?c <- (Contexto (es_diabetico ?dia))
  (test (eq ?dia IDK))
  =>
  (bind ?test(si-o-no-p "El menu tiene que ser apto para diabeticos? (s/n) "))
  (modify ?c (es_diabetico ?test))
)

;#############################PENDENT DE REVISIO###########################


(defrule cargar-platos
        ?hecho <- (inirecomendaciones nope)
        =>
        (retract ?hecho)
        (assert (inirecomendaciones fet)) 
        (bind $?r (find-all-instances ((?instancia Plato)) TRUE))
        (printout t "he entrar a cargar-platos")
        (progn$ (?var ?r)
            (make-instance (gensym) of Recomendacion (contenido ?var))
        )

        (bind $?i (find-all-instances ((?instancia Ingrediente)) TRUE))
        (progn$ (?var ?i)
            (make-instance (gensym) of AlimentoProhibido (contenido ?var))
        )
)

(defrule filtrar-epoca
        (Contexto  (epoca ?epoca))
        (test (not (eq ?epoca IDK)))
        =>
        (bind ?llista_instancies (find-all-instances ((?instancia Recomendacion)) TRUE))
        (progn$ (?var ?llista_instancies)
                (bind ?varaux (send ?var get-contenido))
                (bind ?varaux2 (send ?varaux get-disponibilidad))
                (if  (not (member$ ?epoca ?varaux2)) then (send ?var delete))
        )
)


(defrule filtrar-alimentos-prohibidos
        ?c <- (Contexto  (es_celiaco ?celiaco) (es_diabetico ?diabetico) (es_abstemio ?abstemio) (es_lactosa ?lactosa)
                (es_vegano ?vegano)) 
        ?hecho <- (inirecomendaciones fet)
        (test (and (not (eq ?celiaco IDK)) (not (eq ?diabetico IDK)) (not (eq ?abstemio IDK)) 
                (not (eq ?lactosa IDK)) (not (eq ?vegano IDK)) ) )
        =>
        (retract ?hecho)
        (assert (inirecomendaciones fetdefinitiu)) ;asegura que no vuelva a entrar
        (bind $?i (find-all-instances ((?instancia AlimentoProhibido)) TRUE))
        (progn$ (?var ?i)
                (bind ?ingredient (send ?var get-contenido))
                (bind ?cel (send ?ingredient get-contiene_gluten))
                (bind ?dia (send ?ingredient get-contiene_azucar))
                (bind ?abs (send ?ingredient get-contiene_alcohol))
                (bind ?lac (send ?ingredient get-contiene_lactosa))
                (bind ?veg (send ?ingredient get-producto_animal))

                (if (not (or (and (eq ?cel TRUE) (eq ?celiaco TRUE))
                 (and (eq ?dia TRUE) (eq ?diabetico TRUE))
                 (and (eq ?abs TRUE) (eq ?abstemio TRUE))
                 (and (eq ?lac TRUE) (eq ?lactosa TRUE))
                 (and (eq ?veg TRUE) (eq ?vegano TRUE))))
                  then (send ?var delete)
                )
        )
)


(defrule filtrar-alimentos-platos
        ?c <- (object (is-a Recomendacion))
        ?hecho <- (inirecomendaciones fetdefinitiu)
        =>

        (bind ?plat_rec (send ?c get-contenido))
        (bind $?llista_ing (send ?plat_rec get-ingrediente))
        (bind $?a (find-all-instances ((?instancia AlimentoProhibido)) TRUE))

        (progn$ (?aliment_prohibit ?a)
                (bind ?nom_prohibit (send ?aliment_prohibit get-contenido))
                (if (member$ ?nom_prohibit ?llista_ing) then (send ?c put-marcado TRUE))
        )

)

(defrule eliminar-recomendaciones
        ?hecho <- (inirecomendaciones fetdefinitiu)
        =>
        (retract ?hecho)
        (assert (inirecomendaciones fetdefinitiuv2))
        (bind $?rec (find-all-instances ((?instancia Recomendacion)) TRUE))
        (progn$ (?i ?rec)
                (if (eq (send ?i get-marcado) TRUE) then (send ?i delete))
        )
)


;(defrule otorga-puntuacion-plato-complejidad
;        ?c <- (object (is-a Recomendacion))
;        =>
        ;(send ?c put-puntuacion 34)
        ;(send ?c put-justificaciones "molamazoxDs")
;)



(defrule retorna_instancies
        (declare (salience -34))
        =>
        (bind ?llista_instancies (find-all-instances ((?instancia Recomendacion)) TRUE))
        (printout t "---------------------------" crlf)
        (printout t "PLATOS QUE HAN SOBREVIVIDO" crlf)
        (printout t "---------------------------" crlf)
        (progn$ (?var ?llista_instancies)
                (bind ?t (send ?var get-contenido))
                (printout t (send ?t get-nombre) crlf)
        )
)




;#RULE DE PROVA
;(defrule retorna_instancies
;        (not (retorna_instancies ok))
;        =>
;        (bind ?llista_instancies (find-all-instances ((?instancia Plato)) TRUE))
;        (assert (retorna_instancies ok))
;        (progn$ (?var ?llista_instancies)
;                (printout t (send ?var get-nombre) crlf)
;        )
;)