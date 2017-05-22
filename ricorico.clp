;################################################
;################################################
;############DEFINICIONS DE CLASSES##############
;################################################
;################################################

; Thu May 18 13:45:48 CEST 2017
; 
;+ (version "3.4.8")
;+ (build "Build 629")
; Sat May 20 18:19:50 CEST 2017
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
        (single-slot va_bien_pescado
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
        (single-slot va_bien_carne
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
        (single-slot es_carne
                (type SYMBOL)
                (allowed-values FALSE TRUE)
                (default FALSE)
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
                (allowed-values Espana Japon Mexico Francia Italia)
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
                (create-accessor read-write))
        (single-slot es_pescado
                (type SYMBOL)
                (allowed-values FALSE TRUE)
                (default FALSE)
;+              (cardinality 0 1)
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
        (single-slot va_bien_pescado
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot producto_animal
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot va_bien_carne
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot contiene_lactosa
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot lugar_origen
                (type SYMBOL)
                (allowed-values Espana Japon Mexico Francia Italia)
;+              (cardinality 0 1)
                (create-accessor read-write)))

(defclass Plato
        (is-a USER)
        (role concrete)
        (single-slot es_moderno
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot precio
                (type FLOAT)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot es_carne
                (type SYMBOL)
                (allowed-values FALSE TRUE)
                (default FALSE)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (multislot ingrediente
                (type INSTANCE)
;+              (allowed-classes Ingrediente)
                (cardinality 1 8)
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
                (allowed-values Espana Japon Mexico Francia Italia)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot es_frio
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 0 1)
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
        (single-slot nombre
                (type STRING)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot complejidad
                (type INTEGER)
                (range 1 5)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot es_pescado
                (type SYMBOL)
                (allowed-values FALSE TRUE)
                (default FALSE)
;+              (cardinality 0 1)
                (create-accessor read-write)))






(defclass CombinacionEntrada
   (is-a USER)
   (role concrete)
   (slot contenido-plat
                (type INSTANCE)
                (create-accessor read-write)
   )
   (slot contenido-bebida
                (type INSTANCE)
                (create-accessor read-write)
   )
   (slot puntuacion
                (type INTEGER)
                (create-accessor read-write)
   )
   (multislot justificaciones
                (type STRING)
                (create-accessor read-write)
   )

    (slot precio 
                (type INTEGER)
                (create-accessor read-write)
   )
)

(defclass CombinacionSegundo
   (is-a USER)
   (role concrete)
   (slot contenido-plat
                (type INSTANCE)
                (create-accessor read-write)
   )
   (slot contenido-bebida
                (type INSTANCE)
                (create-accessor read-write)
   )
   (slot puntuacion
                (type INTEGER)
                (create-accessor read-write)
   )
   (multislot justificaciones
                (type STRING)
                (create-accessor read-write)
   )

    (slot precio 
                (type INTEGER)
                (create-accessor read-write)
   )
)

(defclass CombinacionPostre
   (is-a USER)
   (role concrete)
   (slot contenido-plat
                (type INSTANCE)
                (create-accessor read-write)
   )
   (slot contenido-bebida
                (type INSTANCE)
                (create-accessor read-write)
   )
   (slot puntuacion
                (type INTEGER)
                (create-accessor read-write)
   )
   (multislot justificaciones
                (type STRING)
                (create-accessor read-write)
   )
    (slot precio 
                (type INTEGER)
                (create-accessor read-write)
   )
)

(defclass Menu
        (is-a USER)
        (role concrete)
        (slot entrada
                (type INSTANCE)
                (create-accessor read-write)
        )
        (slot segundo
                (type INSTANCE)
                (create-accessor read-write)
        )
        (slot postre
                (type INSTANCE)
                (create-accessor read-write)
        )       
        (slot bebida
                (type INSTANCE)
                (create-accessor read-write)
        )
        (slot puntuacion
                (type INSTANCE)
                (create-accessor read-write)
        )
        (multislot justificaciones
                (type INSTANCE)
                (create-accessor read-write)
        )
        (slot precio 
                (type INTEGER)
                (create-accessor read-write)
   )
)


;################################################
;################################################
;##########DEFINICIONS DE INSTANCIES#############
;################################################
;################################################


(definstances instancies
; Sat May 20 18:19:50 CEST 2017
; 
;+ (version "3.4.8")
;+ (build "Build 629")
; Mon May 22 11:25:08 CEST 2017
; 
;+ (version "3.5")
;+ (build "Build 663")

([ricorico_Class0] of  Ingrediente

        (nombre "Curry"))

([ricorico_Class1] of  Plato

        (complejidad 2)
        (de_cuchara TRUE)
        (disponibilidad verano invierno primavera otono)
        (es_carne FALSE)
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

([ricorico_Class10000] of  Bebida

        (contiene_alcohol TRUE)
        (lugar_origen Espana)
        (nombre "Barbuntin 2015 Quinta Couselo (Albarino)")
        (precio 4.0)
        (va_bien_pescado TRUE))

([ricorico_Class10001] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class32]
                [ricorico_Class35]
                [ricorico_Class0])
        (lugar_origen Japon)
        (nombre "Kareraisu")
        (precio 5.0)
        (tamano 3)
        (tipo segundo))

([ricorico_Class10002] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class32]
                [ricorico_Class10004]
                [ricorico_Class10003])
        (lugar_origen Japon)
        (nombre "Kaisengomachazuke")
        (precio 4.0)
        (tamano 3)
        (tipo segundo))

([ricorico_Class10003] of  Ingrediente

        (nombre "Te Verde"))

([ricorico_Class10004] of  Ingrediente

        (nombre "Caldo")
        (producto_animal TRUE))

([ricorico_Class10005] of  Ingrediente

        (nombre "Encurtidos"))

([ricorico_Class10006] of  Plato

        (complejidad 1)
        (disponibilidad verano otono invierno primavera)
        (ingrediente [ricorico_Class10005])
        (lugar_origen Japon)
        (nombre "Tsukemono")
        (precio 3.0)
        (tamano 2)
        (tipo primero))

([ricorico_Class10007] of  Plato

        (complejidad 3)
        (disponibilidad verano otono primavera invierno)
        (es_carne TRUE)
        (ingrediente [ricorico_Class44])
        (lugar_origen Japon)
        (nombre "Wagyu")
        (precio 30.0)
        (tamano 3)
        (tipo segundo))

([ricorico_Class10008] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (ingrediente
                [ricorico_Class32]
                [ricorico_Class37]
                [ricorico_Class10])
        (lugar_origen Japon)
        (nombre "Tonkatsu")
        (precio 6.0)
        (tamano 4)
        (tipo segundo))

([ricorico_Class10009] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (es_frio TRUE)
        (es_pescado TRUE)
        (ingrediente [ricorico_Class33])
        (nombre "Sashimi de Atun")
        (precio 5.0)
        (tamano 2)
        (tipo primero))

([ricorico_Class10010] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (es_frio TRUE)
        (ingrediente [ricorico_Class10087])
        (lugar_origen Japon)
        (nombre "Sashimi de Salmon")
        (precio 5.0)
        (tamano 2)
        (tipo primero))

([ricorico_Class10011] of  Bebida

        (contiene_alcohol TRUE)
        (lugar_origen Japon)
        (nombre "Sake")
        (precio 5.0))

([ricorico_Class10016] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (es_carne FALSE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class30]
                [ricorico_Class10017])
        (lugar_origen Japon)
        (nombre "Revuelto de Shiitake con Ajos Tiernos")
        (precio 4.0)
        (tamano 3)
        (tipo primero))

([ricorico_Class10017] of  Ingrediente

        (nombre "Shiitake"))

([ricorico_Class10018] of  Ingrediente

        (contiene_gluten TRUE)
        (nombre "Miso"))

([ricorico_Class10019] of  Plato

        (complejidad 2)
        (de_cuchara TRUE)
        (disponibilidad otono invierno)
        (es_carne FALSE)
        (es_pescado FALSE)
        (ingrediente [ricorico_Class10018])
        (lugar_origen Japon)
        (nombre "Sopa de Miso")
        (precio 4.6)
        (tamano 4)
        (tipo primero segundo))

([ricorico_Class10020] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (es_carne FALSE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class10]
                [ricorico_Class19]
                [ricorico_Class29]
                [ricorico_Class48])
        (lugar_origen Italia)
        (nombre "Pizza Margarita")
        (precio 8.0)
        (tamano 4)
        (tipo segundo))

([ricorico_Class10022] of  Ingrediente

        (nombre "Almeja")
        (producto_animal TRUE))

([ricorico_Class10023] of  Plato

        (complejidad 3)
        (de_cuchara TRUE)
        (disponibilidad verano primavera otono invierno)
        (es_carne TRUE)
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
        (es_pescado TRUE)
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
        (es_carne TRUE)
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
        (es_pescado TRUE)
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
        (es_carne TRUE)
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
        (es_carne TRUE)
        (ingrediente
                [ricorico_Class10047]
                [ricorico_Class10027])
        (lugar_origen Mexico)
        (nombre "Pollo con Salsa Pipian")
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
        (nombre "Tamales Yucatecos")
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
        (es_carne TRUE)
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
        (es_carne TRUE)
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
        (es_pescado TRUE)
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
        (es_carne TRUE)
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
        (lugar_origen Japon)
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
        (tamano 2)
        (tipo postre))

([ricorico_Class10094] of  Ingrediente

        (nombre "Judia"))

([ricorico_Class10095] of  Plato

        (complejidad 1)
        (disponibilidad primavera otono verano invierno)
        (ingrediente [ricorico_Class10003])
        (nombre "Te Verde")
        (precio 2.0)
        (tamano 2)
        (tipo postre))

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
        (es_carne TRUE)
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
        (es_carne TRUE)
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

([ricorico_Class20001] of  Bebida

        (contiene_alcohol TRUE)
        (lugar_origen Francia)
        (nombre "Cabernet Sauvignon 2010")
        (precio 4.5)
        (va_bien_carne TRUE))

([ricorico_Class20002] of  Bebida

        (lugar_origen Mexico)
        (nombre "Agua de Jamaica")
        (precio 2.5))

([ricorico_Class20003] of  Bebida

        (lugar_origen Mexico)
        (nombre "Agua de Tamarindo")
        (precio 2.5))

([ricorico_Class20004] of  Bebida

        (lugar_origen Francia)
        (nombre "Sirop a l'Eau")
        (precio 2.5))

([ricorico_Class20023] of  Plato

        (complejidad 3)
        (disponibilidad verano otono primavera invierno)
        (es_carne FALSE)
        (es_pescado TRUE)
        (ingrediente
                [ricorico_Class10022]
                [ricorico_Class20024])
        (lugar_origen Italia)
        (nombre "Spaghetti Frutti di Mare")
        (precio 9.5)
        (tamano 3)
        (tipo segundo))

([ricorico_Class20024] of  Ingrediente

        (contiene_gluten TRUE)
        (nombre "Spaghetti"))

([ricorico_Class20025] of  Plato

        (complejidad 2)
        (disponibilidad verano primavera otono invierno)
        (es_carne FALSE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class29]
                [ricorico_Class30]
                [ricorico_Class10071]
                [ricorico_Class35]
                [ricorico_Class16])
        (lugar_origen Italia)
        (nombre "Caponata Siciliana")
        (precio 5.0)
        (tamano 2)
        (tipo primero))

([ricorico_Class20026] of  Plato

        (complejidad 2)
        (disponibilidad verano otono primavera invierno)
        (es_carne FALSE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class32]
                [ricorico_Class10004]
                [ricorico_Class10]
                [ricorico_Class19])
        (lugar_origen Italia)
        (nombre "Arancine Sicilianas")
        (precio 7.5)
        (tamano 3)
        (tipo primero))

([ricorico_Class20027] of  Plato

        (complejidad 1)
        (disponibilidad verano primavera)
        (es_carne FALSE)
        (es_frio TRUE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class5]
                [ricorico_Class10005])
        (lugar_origen Italia)
        (nombre "Ensalada Piamontesa")
        (precio 5.0)
        (tamano 3)
        (tipo primero))

([ricorico_Class20028] of  Plato

        (complejidad 2)
        (de_cuchara TRUE)
        (disponibilidad invierno otono)
        (es_carne FALSE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class30]
                [ricorico_Class10094]
                [ricorico_Class5]
                [ricorico_Class20029])
        (lugar_origen Italia)
        (nombre "Sopa Minestrone")
        (precio 8.0)
        (tamano 4)
        (tipo primero))

([ricorico_Class20029] of  Ingrediente

        (nombre "Zanahoria"))

([ricorico_Class20030] of  Ingrediente

        (nombre "Seta"))

([ricorico_Class20033] of  Ingrediente

        (contiene_gluten TRUE)
        (nombre "Hojas de Pasta"))

([ricorico_Class20034] of  Plato

        (complejidad 3)
        (disponibilidad verano otono primavera invierno)
        (es_carne TRUE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class20033]
                [ricorico_Class44]
                [ricorico_Class48])
        (lugar_origen Italia)
        (nombre "Lasana de Carne")
        (precio 8.0)
        (tamano 4)
        (tipo segundo))

([ricorico_Class20035] of  Plato

        (complejidad 3)
        (disponibilidad verano otono primavera invierno)
        (es_carne FALSE)
        (es_frio TRUE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class10034]
                [ricorico_Class10067]
                [ricorico_Class4]
                [ricorico_Class19])
        (lugar_origen Italia)
        (nombre "Tiramisu")
        (precio 7.5)
        (tamano 4)
        (tipo postre))

([ricorico_Class20036] of  Plato

        (complejidad 3)
        (disponibilidad verano primavera otono invierno)
        (es_carne FALSE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class31]
                [ricorico_Class10034]
                [ricorico_Class10]
                [ricorico_Class4])
        (lugar_origen Italia)
        (nombre "Biscotti de Almendras")
        (precio 5.0)
        (tamano 2)
        (tipo postre))

([ricorico_Class20037] of  Ingrediente

        (nombre "Nata"))

([ricorico_Class20038] of  Plato

        (complejidad 2)
        (disponibilidad verano primavera otono invierno)
        (es_carne FALSE)
        (es_frio TRUE)
        (es_pescado FALSE)
        (ingrediente [ricorico_Class20037])
        (lugar_origen Italia)
        (nombre "Pannacotta")
        (precio 5.5)
        (tamano 3)
        (tipo postre))

([ricorico_Class20039] of  Plato

        (complejidad 4)
        (disponibilidad verano otono primavera invierno)
        (es_carne FALSE)
        (es_moderno TRUE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class29]
                [ricorico_Class35]
                [ricorico_Class4]
                [ricorico_Class5])
        (lugar_origen Espana)
        (nombre "Semicuajo de Campero con Secreto de Cebolla y Patata Pochada")
        (precio 18.0)
        (tamano 2)
        (tipo primero segundo))

([ricorico_Class20040] of  Plato

        (complejidad 4)
        (disponibilidad verano otono primavera invierno)
        (es_carne TRUE)
        (es_moderno TRUE)
        (es_pescado FALSE)
        (ingrediente [ricorico_Class37])
        (lugar_origen Espana)
        (nombre "Bienmesabe de Cerdo en Brocheta")
        (precio 16.0)
        (tamano 1)
        (tipo primero))

([ricorico_Class20041] of  Plato

        (complejidad 4)
        (disponibilidad verano otono invierno primavera)
        (es_carne FALSE)
        (es_moderno TRUE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class29]
                [ricorico_Class30]
                [ricorico_Class10071]
                [ricorico_Class10070]
                [ricorico_Class48])
        (nombre "Hermandad de Hortalizas en un Abrazo de Tomate")
        (precio 13.0)
        (tamano 2)
        (tipo primero segundo))

([ricorico_Class20042] of  Plato

        (complejidad 5)
        (disponibilidad verano otono primavera invierno)
        (es_carne FALSE)
        (es_moderno TRUE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class46]
                [ricorico_Class10038]
                [ricorico_Class10])
        (nombre "Bombon de Bechamel Envuelto en Tempura de Pan Hidrolizado")
        (precio 19.0)
        (tamano 2)
        (tipo primero))

([ricorico_Class20043] of  Plato

        (complejidad 5)
        (de_cuchara TRUE)
        (disponibilidad otono invierno primavera verano)
        (es_carne FALSE)
        (es_moderno TRUE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class37]
                [ricorico_Class21])
        (nombre "Deconstrucción de Cocido Sofrita con su Carne Desmechada")
        (precio 20.0)
        (tamano 3)
        (tipo segundo))

([ricorico_Class20044] of  Plato

        (complejidad 4)
        (de_cuchara TRUE)
        (disponibilidad invierno otono)
        (es_carne FALSE)
        (es_moderno TRUE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class21]
                [ricorico_Class40]
                [ricorico_Class20029]
                [ricorico_Class35]
                [ricorico_Class5])
        (lugar_origen Espana)
        (nombre "Ramen Castizo en Tres Actos")
        (precio 19.0)
        (tamano 2)
        (tipo segundo))

([ricorico_Class20045] of  Plato

        (complejidad 5)
        (disponibilidad verano otono primavera invierno)
        (es_carne FALSE)
        (es_moderno TRUE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class33]
                [ricorico_Class10]
                [ricorico_Class48])
        (lugar_origen Espana)
        (nombre "Dim Sum Castellano al Horno de Piedra con Conserva de Atun")
        (precio 22.0)
        (tamano 1)
        (tipo postre))

([ricorico_Class20046] of  Plato

        (complejidad 5)
        (disponibilidad verano otono primavera invierno)
        (es_carne FALSE)
        (es_frio TRUE)
        (es_moderno TRUE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class20047]
                [ricorico_Class38])
        (nombre "Frutos Rojos con Aire Verde")
        (precio 22.0)
        (tamano 2)
        (tipo postre))

([ricorico_Class20047] of  Ingrediente

        (nombre "Albahaca"))

([ricorico_Class20048] of  Plato

        (complejidad 5)
        (disponibilidad verano otono primavera invierno)
        (es_carne FALSE)
        (es_moderno TRUE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class39]
                [ricorico_Class10058])
        (nombre "Esfera de Chocolate con Lágrimas del Caribe")
        (precio 15.0)
        (tamano 2)
        (tipo postre))

([ricorico_Class20050] of  Plato

        (complejidad 5)
        (disponibilidad verano otono primavera invierno)
        (es_carne FALSE)
        (es_moderno TRUE)
        (es_pescado FALSE)
        (ingrediente
                [ricorico_Class39]
                [ricorico_Class10067]
                [ricorico_Class10])
        (nombre "Levedad de chocolate.")
        (precio 16.0)
        (tamano 2)
        (tipo postre))

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
        (lugar_origen Espana)
        (nombre "Estrella Galicia")
        (precio 2.2))

([ricorico_Class26] of  Bebida

        (contiene_gluten TRUE)
        (lugar_origen Espana)
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
        (es_pescado TRUE)
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
        (es_pescado TRUE)
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

(defclass RecomendacionBebida
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
  (multislot regiones (type SYMBOL) (allowed-values Espana Mexico Japon Francia Italia))
  (slot sibarita (type INTEGER) (default -1) (allowed-values -1 0 1 2 3 4 5 6 7 8 9 10))
  (slot acombebida (type SYMBOL) (default UNDEFINED) (allowed-values UNDEFINED plato menu))
)

(deftemplate listas-sin-orden
        (multislot entradas)
        (multislot segundos)
        (multislot postres)
        (multislot bebidas)
)

(deftemplate listas-con-orden
        (multislot entradas)
        (multislot segundos)
        (multislot postres)
        (multislot bebidas)
)

;#########################################

(deftemplate combinaciones-sin-orden
        (multislot entradas)
        (multislot segundos)
        (multislot postres)
)


(deftemplate combinaciones-con-orden
        (multislot entradas)
        (multislot segundos)
        (multislot postres)
)

(deftemplate menus-sin-orden
        (multislot menus)
)

(deftemplate menus-con-orden
        (multislot menus)
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

(defrule preguntar-region
        ?c <- (Contexto (regiones))
        (not (preguntarregion fet))
        =>
        ;(bind $?respuesta (create$ ))
        (assert (preguntarregion fet))
        (bind $?lista (create$ Espana Mexico Japon Francia Italia ))
        (bind $?respuesta (create$ ))
        (progn$ (?r ?lista)
                (if (eq (si-o-no-p (str-cat "Tiene preferencia por la comida de " ?r "? (s/n)")) TRUE)
                        then (bind ?respuesta (insert$ ?respuesta (+ 1 (length$ ?respuesta)) ?r))
                )
        )
       (modify ?c (regiones ?respuesta))

)

(defrule preguntar-sibarita
        ?c <- (Contexto (sibarita ?s))
        (test (eq ?s -1))
        =>
        (bind ?index (pregunta-numerica "Que tan sibarita desea que sea el menu?" 0 10))
        (modify ?c (sibarita ?index))
)

(defrule pregunta-acombebida
        ?c <- (Contexto (acombebida ?a))
        (test (eq ?a UNDEFINED))
        =>
        (bind ?respuesta (pregunta-multivaluada "Desea que la bebida se empareje por plato o por menu?" plato menu))
        (modify ?c (acombebida ?respuesta))
        
)

;#############################PENDENT DE REVISIO###########################


(defrule cargar-platos-bebidas
        ?hecho <- (inirecomendaciones nope)
        =>
        (retract ?hecho)
        (assert (inirecomendaciones fet)) 
        (bind $?r (find-all-instances ((?instancia Plato)) TRUE))
        ;(printout t "he entrar a cargar-platos")
        (progn$ (?var ?r)
            (make-instance (gensym) of Recomendacion (contenido ?var))
        )

        (bind $?i (find-all-instances ((?instancia Ingrediente)) TRUE))
        (progn$ (?var ?i)
            (make-instance (gensym) of AlimentoProhibido (contenido ?var))
        )
                
                (bind $?b (find-all-instances ((?instancia Bebida)) TRUE))
                ;(printout t "he entrat a cargar-bebidas")
                (progn$ (?var ?b)
                        (make-instance (gensym) of RecomendacionBebida (contenido ?var))
                )
)

(defrule filtrar-epoca
        (declare (salience -10))
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

(defrule filtrar-alimentos-bebidas
        ?c <- (object (is-a RecomendacionBebida))
        ?hecho <- (inirecomendaciones fetdefinitiu)
                ?con <- (Contexto  (es_celiaco ?celiaco) (es_diabetico ?diabetico) (es_abstemio ?abstemio) (es_lactosa ?lactosa)
                (es_vegano ?vegano)) 
        =>

        (bind ?beb_rec (send ?c get-contenido))
                (bind ?cel (send ?beb_rec get-contiene_gluten))
                (bind ?dia (send ?beb_rec get-contiene_azucar))
                (bind ?abs (send ?beb_rec get-contiene_alcohol))
                (bind ?lac (send ?beb_rec get-contiene_lactosa))
                (bind ?veg (send ?beb_rec get-producto_animal))
                (if ( or (and (eq ?cel TRUE) (eq ?celiaco   TRUE))
                     (and (eq ?dia TRUE) (eq ?diabetico TRUE))
                     (and (eq ?abs TRUE) (eq ?abstemio  TRUE))
                     (and (eq ?lac TRUE) (eq ?lactosa   TRUE))
                     (and (eq ?veg TRUE) (eq ?vegano    TRUE)))
                then
                (send ?c put-marcado TRUE)
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
                
        (bind $?rec (find-all-instances ((?instancia RecomendacionBebida)) TRUE))
        (progn$ (?i ?rec)
                (if (eq (send ?i get-marcado) TRUE) then (send ?i delete))
        )
)

(defrule otorga-puntuacion-plato-complejidad
        ;?c <- (object (is-a Recomendacion) (puntuacion ?p) (justificaciones $?j))
                ?hecho <- (inirecomendaciones fetdefinitiuv2)
                ?c <- (Contexto  (comensales ?comensales))
        =>
                (bind ?llista_instancies (find-all-instances ((?instancia Recomendacion)) TRUE))
                (progn$ (?var ?llista_instancies)
                        
                        (bind ?p (send ?var get-puntuacion))
                        (bind ?contenido (send ?var get-contenido))
                        (bind ?co (send ?contenido get-complejidad))

                        (bind ?p (+ ?p (/ 500 (* ?co ?comensales 2))))
                        
                        (bind $?j (send ?var get-justificaciones))
                        (bind $?j (insert$ $?j (+ (length$ $?j) 1) (str-cat "Se agrega " (/ 1000 (* ?co ?comensales 2))" por el factor complejidad en numero de comensales")))
                        (send ?var put-puntuacion ?p)
                        (send ?var put-justificaciones $?j)
                
                )
                (retract ?hecho)
                (assert (inirecomendaciones fetdefinitiuv3))

)

(defrule otorga-puntuacion-plato-region
                ?hecho <- (inirecomendaciones fetdefinitiuv3)
                (preguntarregion fet)
                ?c <- (Contexto (regiones $?reg))
                =>
                (bind ?llista_instancies (find-all-instances ((?instancia Recomendacion)) TRUE))
                (bind ?llista_instancies2 (find-all-instances ((?instancia RecomendacionBebida)) TRUE))

                (progn$ (?var ?llista_instancies)
                
                        (bind ?p (send ?var get-puntuacion))
                        (bind $?j (send ?var get-justificaciones))
                        (bind ?cont (send ?var get-contenido))

                        (bind ?nomb (send ?cont get-nombre))
                        (bind ?r (send ?cont get-lugar_origen))
                        (if (member ?r $?reg) then 
                                (bind ?p (+ ?p 30))
                                (bind $?j (insert$ $?j (+ (length$ $?j) 1) (str-cat ?nomb " obtiene puntuacion de 30 porque le gusta la comida de " ?r) ))                 
                        )
                        (send ?var put-puntuacion ?p)
                        (send ?var put-justificaciones $?j)
                
                )


                (progn$ (?var ?llista_instancies2)
                        (bind ?p (send ?var get-puntuacion))
                        (bind $?j (send ?var get-justificaciones))
                        (bind ?cont (send ?var get-contenido))
                        (bind ?nomb (send ?cont get-nombre))
                        (bind ?r (send ?cont get-lugar_origen))
                        (if (member ?r $?reg) then 
                                (bind ?p (+ ?p 30))
                                (bind $?j (insert$ $?j (+ (length$ $?j) 1) (str-cat ?nomb " obtiene  de 30 porque le gusta la comida de "?r) ))                 
                        )
                        (send ?var put-puntuacion ?p)
                        (send ?var put-justificaciones $?j)
                
                )
                (retract ?hecho)
                (assert (inirecomendaciones fetdefinitiuv4))

)

(defrule otorga-puntuacion-plato-temperatura-primavera
                ?hecho <- (inirecomendaciones fetdefinitiuv4)
                ?c <- (Contexto (epoca primavera))
        =>
                 (bind ?llista_instancies (find-all-instances ((?instancia Recomendacion)) TRUE))
                (progn$ (?var ?llista_instancies)
                
                        (bind ?p (send ?var get-puntuacion))
                        (bind $?j (send ?var get-justificaciones))
                        (bind ?cont (send ?var get-contenido))
                        (bind ?t (send ?cont get-es_frio))
                        (if (eq ?t TRUE) 
                                        then    
                                        (bind ?p (+ ?p 25))
                                        (bind $?j (insert$ $?j (+ (length$ $?j) 1) (str-cat "El evento es en Primavera y el plato es frio -> + 25 puntos") ))
                                        (send ?var put-puntuacion ?p)
                                        (send ?var put-justificaciones $?j)                                             
                        )
                )
                (retract ?hecho)
                (assert (inirecomendaciones fetdefinitiuv5))

)

(defrule otorga-puntuacion-plato-temperatura-verano
                ?hecho <- (inirecomendaciones fetdefinitiuv4)
                ?c <- (Contexto (epoca verano))
        =>
                 (bind ?llista_instancies (find-all-instances ((?instancia Recomendacion)) TRUE))
                (progn$ (?var ?llista_instancies)
                
                        (bind ?p (send ?var get-puntuacion))
                        (bind $?j (send ?var get-justificaciones))
                        (bind ?cont (send ?var get-contenido))
                        (bind ?t (send ?cont get-es_frio))
                        (if (eq ?t TRUE)
                                        then
                                        (bind ?p (+ ?p 40))
                                        (bind $?j (insert$ $?j (+ (length$ $?j) 1) (str-cat ""El evento es en Verano y el plato es frio -> + 25 puntos"") ))
                                        (send ?var put-puntuacion ?p)
                                        (send ?var put-justificaciones $?j)                                                     
                        )
                )
                (retract ?hecho)
                (assert (inirecomendaciones fetdefinitiuv5))

)

(defrule otorga-puntuacion-plato-temperatura-otono
                ?hecho <- (inirecomendaciones fetdefinitiuv4)
                ?c <- (Contexto (epoca otono))
        =>
                 (bind ?llista_instancies (find-all-instances ((?instancia Recomendacion)) TRUE))
                (progn$ (?var ?llista_instancies)
                
                        (bind ?p (send ?var get-puntuacion))
                        (bind $?j (send ?var get-justificaciones))
                        (bind ?cont (send ?var get-contenido))
                        (bind ?t (send ?cont get-es_frio))
                        (if (eq ?t FALSE) 
                                        then
                                        (bind ?p (+ ?p 25))
                                        (bind $?j (insert$ $?j (+ (length$ $?j) 1) (str-cat "El evento es en Otono y el plato es caliente -> + 25 puntos") ))
                                        (send ?var put-puntuacion ?p)
                                        (send ?var put-justificaciones $?j)             
                        )               
                )
                (retract ?hecho)
                (assert (inirecomendaciones fetdefinitiuv5))

)

(defrule otorga-puntuacion-plato-temperatura-invierno
                ?hecho <- (inirecomendaciones fetdefinitiuv4)
                ?c <- (Contexto (epoca invierno))
        =>
                 (bind ?llista_instancies (find-all-instances ((?instancia Recomendacion)) TRUE))
                (progn$ (?var ?llista_instancies)
                
                        (bind ?p (send ?var get-puntuacion))
                        (bind $?j (send ?var get-justificaciones))
                        (bind ?cont (send ?var get-contenido))
                        (bind ?t (send ?cont get-es_frio))
                        (if (eq ?t FALSE)
                                        then
                                        (bind ?p (+ ?p 40))
                                        (bind $?j (insert$ $?j (+ (length$ $?j) 1) (str-cat "El evento es en Invierno y el plato es caliente -> + 40 puntos") ))
                                        (send ?var put-puntuacion ?p)
                                        (send ?var put-justificaciones $?j)                                     
                        )
                )
                (retract ?hecho)
                (assert (inirecomendaciones fetdefinitiuv5))

)

(defrule otorga-puntuacion-plato-sibarita
        ?c <- (Contexto (sibarita ?x))
        (not (puntuado final))
        =>
        (assert (puntuado final))
            (bind ?llista_instancies (find-all-instances ((?instancia Recomendacion)) TRUE))
                (progn$ (?var ?llista_instancies)
                        (bind ?p (send ?var get-puntuacion))
                        (bind $?j (send ?var get-justificaciones))
                        (bind ?cont (send ?var get-contenido))
                        (bind ?precio (send ?cont get-precio))
                        (bind ?comp (send ?cont get-complejidad))
                        (bind ?tam (send ?cont get-tamano))
                        
                        ;(bind ?aux (/ (* (** ?comp 2) ?precio ?x) (** ?tam 2)))
                        (bind ?aux (/ (* ?comp  ?precio ?x 0.01) ?tam ))

                        (bind ?p (+ ?p ?aux))
                        (bind $?j (insert$ $?j (+ (length$ $?j) 1) (str-cat "indice de sibarita de " ?aux)))

                        (send ?var put-puntuacion ?p)
                        (send ?var put-justificaciones $?j)                             
                )

)

(defrule crear-listas-desordenadas
        (declare (salience -10))
        (puntuado final)
        (not (listas-sin-orden))
        =>
        (assert (listas-sin-orden))
)

(defrule anyadir-lista
        ?hecho <- (listas-sin-orden (entradas $?ent) (segundos $?seg) (postres $?pos) (bebidas $?beb))
        (not (listas-estado desorden))
        =>
        (assert (listas-estado desorden))
        (bind ?llista_instancies (find-all-instances ((?instancia Recomendacion)) TRUE))
        (bind $?auxp (create$ ))
        (bind $?auxs (create$ ))
        (bind $?auxt (create$ ))
        (progn$ (?var ?llista_instancies)
                (bind ?cont (send ?var get-contenido))
                (bind ?type (send ?cont get-tipo))
                (if (member primero ?type)
                        then
                        (bind $?auxp (insert$ $?auxp (+ (length$ $?auxp) 1) ?var))
                )
                (if (member segundo ?type)
                        then
                        (bind $?auxs (insert$ $?auxs (+ (length$ $?auxs) 1) ?var))
                )
                (if (member postre ?type)
                        then
                        (bind $?auxt (insert$ $?auxt (+ (length$ $?auxt) 1) ?var))
                )
        )
        (bind $?auxb (find-all-instances ((?instancia RecomendacionBebida)) TRUE))
        (modify ?hecho (entradas $?auxp) (segundos $?auxs) (postres $?auxt) (bebidas $?auxb))
)


;(defrule retorna_instancies
 ;       (declare (salience -34))
  ;      =>
   ;     (bind ?llista_instancies (find-all-instances ((?instancia Recomendacion)) TRUE))
    ;    (printout t "---------------------------" crlf)
     ;   (printout t "PLATOS QUE HAN SOBREVIVIDO" crlf)
      ;  (printout t "---------------------------" crlf)
       ; (progn$ (?var ?llista_instancies)
        ;        (bind ?t (send ?var get-contenido))
         ;       (printout t (send ?t get-nombre) crlf)
          ;                      (printout t (send ?var get-puntuacion) crlf)
                  ;              (printout t (send ?var get-justificaciones) crlf)
        ;)
;)



(deffunction maximo-puntuacion ($?lista)
        (bind ?maximo -1)
        (bind ?elemento nil)
        (progn$ (?curr-rec $?lista)
               ; (bind ?curr-cont (send ?curr-rec get-contenido))
                (bind ?curr-punt (send ?curr-rec get-puntuacion))
                (if (> ?curr-punt ?maximo)
                        then 
                        (bind ?maximo ?curr-punt)
                        (bind ?elemento ?curr-rec)
                )
        )
        ?elemento
)

(deffunction maximo-puntuacion-menu ($?lista)
        (bind ?maximo -1)
        (bind ?elemento nil)
        (progn$ (?curr-rec $?lista)
                (bind ?curr-punt (send ?curr-rec get-puntuacion))
                (if (> ?curr-punt ?maximo)
                        then 
                        (bind ?maximo ?curr-punt)
                        (bind ?elemento ?curr-rec)
                )
        )
        ?elemento
)


(deffunction maximo-precio-menu ($?lista)
        (bind ?maximo -1)
        (bind ?elemento nil)
        (progn$ (?curr-rec $?lista)
                (bind ?curr-punt (send ?curr-rec get-precio))
                (if (> ?curr-punt ?maximo)
                        then 
                        (bind ?maximo ?curr-punt)
                        (bind ?elemento ?curr-rec)
                )
        )
        ?elemento
)


(defrule crear-listas-ordenada "Ordenando Recomendaciones..."
        ?hecho <- (listas-sin-orden (entradas $?ent) (segundos $?seg) (postres $?pos) (bebidas $?beb))
        (not(listas-con-orden))
        =>
        (bind $?resultadoentrada (create$ ))
        (while (and (not (eq (length$ $?ent) 0)) (< (length$ $?resultadoentrada) 10))  do
                (bind ?curr-rec (maximo-puntuacion $?ent))
                (bind $?ent (delete-member$ $?ent ?curr-rec))
                (bind $?resultadoentrada (insert$ $?resultadoentrada (+ (length$ $?resultadoentrada) 1) ?curr-rec))
        )

        (bind $?resultadosegundo (create$ ))
        (while (and (not (eq (length$ $?seg) 0)) (< (length$ $?resultadosegundo) 10))  do
                (bind ?curr-rec (maximo-puntuacion $?seg))
                (bind $?seg (delete-member$ $?seg ?curr-rec))
                (bind $?resultadosegundo (insert$ $?resultadosegundo (+ (length$ $?resultadosegundo) 1) ?curr-rec))
        )

        (bind $?resultadopostres (create$ ))
        (while (and (not (eq (length$ $?pos) 0)) (< (length$ $?resultadopostres) 10))  do
                (bind ?curr-rec (maximo-puntuacion $?pos))
                (bind $?pos (delete-member$ $?pos ?curr-rec))
                (bind $?resultadopostres (insert$ $?resultadopostres (+ (length$ $?resultadopostres) 1) ?curr-rec))
        )

        (bind $?resultadobebidas (create$ ))
        (while (and (not (eq (length$ $?beb) 0)) (< (length$ $?resultadobebidas) 10))  do
                ;hem de puntuar aixo
                (bind ?curr-rec (maximo-puntuacion $?beb))
                (bind $?beb (delete-member$ $?beb ?curr-rec))
                (bind $?resultadobebidas (insert$ $?resultadobebidas (+ (length$ $?resultadobebidas) 1) ?curr-rec))
        )

        (assert (listas-con-orden (entradas $?resultadoentrada)(segundos $?resultadosegundo)(bebidas $?resultadobebidas)(postres $?resultadopostres)))
)


(defrule castea-lista-ordenada
        ?hecho <- (listas-con-orden (entradas $?ent) (segundos $?seg) (postres $?pos))
        ?c <- (Contexto (acombebida menu))
        =>
        (progn$ (?var $?ent)
                (bind ?punt (send ?var get-puntuacion))
                (bind ?just (send ?var get-justificaciones))
                (make-instance (gensym) of CombinacionEntrada (contenido-plat ?var) (puntuacion ?punt) (justificaciones ?just))
        )

        (progn$ (?var $?seg)
                (bind ?punt (send ?var get-puntuacion))
                (bind ?just (send ?var get-justificaciones))
                (make-instance (gensym) of CombinacionSegundo (contenido-plat ?var) (puntuacion ?punt) (justificaciones ?just))
        )

        (progn$ (?var $?pos)
                (bind ?punt (send ?var get-puntuacion))
                (bind ?just (send ?var get-justificaciones))
                (make-instance (gensym) of CombinacionPostre (contenido-plat ?var) (puntuacion ?punt) (justificaciones ?just))
        )

        (assert(combinaciones-listas ok))
        (assert(menu-listo nope))

)


(defrule menu_una_bebida
        ?h <- (listas-con-orden (bebidas $?resultadobebidas))
        (menu-listo nope)
        ?c <- (Contexto (acombebida menu))
        ?p <- (Contexto (preciomax ?pmax) (preciomin ?pmin))


        =>
        (bind $?primers (find-all-instances ((?instancia CombinacionEntrada)) TRUE))
        (bind $?segons (find-all-instances ((?instancia CombinacionSegundo)) TRUE))
        (bind $?postre (find-all-instances ((?instancia CombinacionPostre)) TRUE))
       ; (bind $?begudes (find-all-instances ((?instancia Bebida)) TRUE))
       (bind $?llista1 (create$) )
       (bind $?llista2 (create$) )
       (bind $?llista3 (create$) )


        (progn$ (?plat1 $?primers)
                (progn$ (?plat2 $?segons)
                        (progn$ (?plat3 $?postre)
                                (progn$ (?beg $?resultadobebidas)
                                        (bind ?punt1 (send ?plat1 get-puntuacion))
                                        (bind ?punt2 (send ?plat2 get-puntuacion))
                                        (bind ?punt3 (send ?plat3 get-puntuacion))
                                        (bind ?punt4 (send ?beg get-puntuacion))

                                        (bind ?prec_sup (+ (send (send (send ?plat1 get-contenido-plat) get-contenido) get-precio)
                                         (send (send (send ?plat2 get-contenido-plat) get-contenido) get-precio)
                                          (send (send (send ?plat3 get-contenido-plat) get-contenido) get-precio)
                                          (send (send ?beg get-contenido) get-precio)))
                                        


                                        (if (and(not (eq (send (send (send ?plat1 get-contenido-plat) get-contenido) get-nombre) (send (send (send ?plat2 get-contenido-plat) get-contenido) get-nombre) ))
                                                (not(member$ ?plat1 $?llista1)) (not(member$ ?plat2 $?llista2)) (not(member$ ?plat3 $?llista3)) 
                                                (> ?pmax ?prec_sup) (< ?pmin ?prec_sup)
                                                )
                                                then

                                                (bind $?pjust (send ?plat1 get-justificaciones))
                                                (bind $?sjust (send ?plat2 get-justificaciones))
                                                (bind $?tjust (send ?plat3 get-justificaciones))
                                                (bind $?bjust (send ?beg get-justificaciones))


                                                (bind $?justiniana (insert$  $?pjust (+ (length$ $?pjust) 1) 
                                                                        (insert$  $?sjust (+ (length$ $?sjust) 1)
                                                                                (insert$  $?tjust (+ (length$ $?tjust) 1)
                                                                                        $?bjust))))
                                                ;(bind $?justiniana (insert$  $?justiniana (+ (length$ $?justiniana) 1) $?justifica_bebida))
                                                (make-instance (gensym) of Menu 
                                                        (entrada ?plat1) (segundo ?plat2) (postre ?plat3) (bebida ?beg) (puntuacion (+ ?punt1 ?punt2 ?punt3 ?punt4 )) (justificaciones $?justiniana)
                                                )



                                                (bind $?llista1 (insert$ $?llista1 (+ (length $?llista1) 1 ) ?plat1))
                                                (bind $?llista2 (insert$ $?llista2 (+ (length $?llista2) 1 ) ?plat2))
                                                (bind $?llista3 (insert$ $?llista3 (+ (length $?llista3) 1 ) ?plat3))

                                        )

                                )
                        )
                )
        )
        (assert (menu-listo puntuar))
)

(defrule puntuar-combinaciones-menu
        (Contexto (acombebida menu))
        ?hecho <- (menu-listo puntuar)
        =>
        (retract ?hecho)
        (assert (menu-listo sipe))
        (bind $?m (find-all-instances ((?instancias Menu)) TRUE))
        (progn$ (?var $?m)
                (bind ?carne (send (send (send (send ?var get-entrada) get-contenido-plat) get-contenido) get-es_carne))
                (bind ?carns (send (send (send (send ?var get-segundo) get-contenido-plat) get-contenido) get-es_carne))
                (bind ?carnp (send (send (send (send ?var get-postre) get-contenido-plat) get-contenido) get-es_carne))
                
                (bind ?pesce (send (send (send (send ?var get-entrada) get-contenido-plat) get-contenido) get-es_pescado))
                (bind ?pescs (send (send (send (send ?var get-segundo) get-contenido-plat) get-contenido) get-es_pescado))
                (bind ?pescp (send (send (send (send ?var get-postre) get-contenido-plat) get-contenido) get-es_pescado))
                
                (bind ?okcarn (send (send (send ?var get-bebida) get-contenido) get-va_bien_carne))
                (bind ?okpesc (send (send (send ?var get-bebida) get-contenido) get-va_bien_pescado))
                
                (if (or (and (eq ?carne TRUE) (eq ?okcarn TRUE))
                        (and (eq ?pesce TRUE) (eq ?okpesc TRUE)))
                        then
                        (bind ?p (send ?var get-puntuacion))
                        (bind ?p (+ ?p 100))
                        (bind $?j (send ?var get-justificaciones))
                        (bind $?j (insert$ $?j (+ (length$ $?j ) 1) "Esta bebida va bien con este plato +100 puntos"))
                        
                        (send ?var put-puntuacion ?p)
                        (send ?var put-justificaciones $?j)
                )
                (if (or (and (eq ?carns TRUE) (eq ?okcarn TRUE))
                        (and (eq ?pescs TRUE) (eq ?okpesc TRUE)))
                        then
                        (bind ?p (send ?var get-puntuacion))
                        (bind ?p (+ ?p 100))
                        (bind $?j (send ?var get-justificaciones))
                        (bind $?j (insert$ $?j (+ (length$ $?j ) 1) "Esta bebida va bien con este plato +100 puntos"))
                        
                        (send ?var put-puntuacion ?p)
                        (send ?var put-justificaciones $?j)
                )
                (if (or (and (eq ?carnp TRUE) (eq ?okcarn TRUE))
                        (and (eq ?pescp TRUE) (eq ?okpesc TRUE)))
                        then
                        (bind ?p (send ?var get-puntuacion))
                        (bind ?p (+ ?p 100))
                        (bind $?j (send ?var get-justificaciones))
                        (bind $?j (insert$ $?j (+ (length$ $?j ) 1) "Esta bebida va bien con este plato +100 puntos"))
                        
                        (send ?var put-puntuacion ?p)
                        (send ?var put-justificaciones $?j)
                )
        )

)

(defrule retorna_menu
        (menu-listo sipe)
        ?c <- (Contexto (acombebida menu))

        =>

        (printout t "TENEMOS LOS MENUTSES" crlf)

        (bind $?llist_fets (create$ ))
        (bind $?ent (find-all-instances ((?instancia Menu)) TRUE))
        (bind $?res (create$ ))
        (while (and (not (eq (length$ $?ent) 0)) (< (length$ $?res) 3))  do


                (bind ?curr-rec (maximo-puntuacion-menu $?ent))
                (bind $?ent (delete-member$ $?ent ?curr-rec))

                (bind $?res (insert$ $?res (+ (length$ $?res) 1) ?curr-rec))

                (bind ?primero (send ?curr-rec get-entrada))
                (bind ?segundo (send ?curr-rec get-segundo))
                (bind ?postre (send ?curr-rec get-postre))
                (bind ?bebida (send ?curr-rec get-bebida))


                (bind ?primero-contenido (send ?primero get-contenido-plat))
                (bind ?segundo-contenido (send ?segundo get-contenido-plat))
                (bind ?postre-contenido (send ?postre get-contenido-plat))

                (bind ?primero-nombre (send ?primero-contenido get-contenido))
                (bind ?segundo-nombre (send ?segundo-contenido get-contenido))
                (bind ?postre-nombre (send ?postre-contenido get-contenido))

                (printout t "--------------------" crlf)
                (printout t "OPCION NUMERO " (length$ $?res) crlf)
                (printout t "--------------------" crlf)
                (printout t "Primer Plato: " (send ?primero-nombre get-nombre)   "   PVP: " (send ?primero-nombre get-precio) crlf)
                (printout t "Segundo Plato: " (send ?segundo-nombre get-nombre)  "   PVP: " (send ?segundo-nombre get-precio) crlf)
                (printout t "Postre: " (send ?postre-nombre  get-nombre)         "   PVP: " (send ?postre-nombre get-precio) crlf)
                (printout t "Bebida: " (send (send ?bebida get-contenido) get-nombre) "   PVP: " (send (send ?bebida get-contenido) get-precio) crlf)
                (printout t "Precio total: " (+ (send ?primero-nombre get-precio) (send ?segundo-nombre get-precio) (send ?postre-nombre get-precio) 
                (send (send ?bebida get-contenido) get-precio) ) crlf)
                (printout t crlf)

        )
        (assert (menu-listo done))
)





(defrule emparejar-plato-bebida
        ?lista <- (listas-con-orden (entradas $?ent) (segundos $?seg) (postres $?pos) (bebidas $?beb))
        ?c <- (Contexto (acombebida plato))
        =>
        (bind $?listae (create$))
        (bind $?listas (create$))
        (bind $?listap (create$))
        (progn$ (?b $?beb)
                (bind ?puntb (send ?b get-puntuacion))
                (bind $?justb (send ?b get-justificaciones))
                (bind ?precb (send (send ?b get-contenido) get-precio))
                (progn$ (?e $?ent)
                        (if (not(member$ ?e $?listae))
                                then
                                (bind ?punte (send ?e get-puntuacion))
                                (bind $?juste (send ?e get-justificaciones))
                                (bind ?prece (send (send ?e get-contenido) get-precio))
                                (bind ?puntc (+ ?puntb ?punte))
                                (bind $?justc (insert$ $?justb (+ (length$ $?justb) 1) $?juste))
                                (bind ?precc (+ ?precb ?prece))
                                (make-instance (gensym) of CombinacionEntrada (precio ?precc) (contenido-plat ?e) (contenido-bebida ?b) (puntuacion ?puntc) (justificaciones $?justc))
                                ;(bind $?listae (insert$ $?listae (+ (length$ $?listae) 1) ?e))
                        )

                )
                (progn$ (?s $?seg)
                        (if (not(member$ ?s $?listas))
                                then
                                (bind ?punts (send ?s get-puntuacion))
                                (bind $?justs (send ?s get-justificaciones))
                                (bind ?precs (send (send ?s get-contenido) get-precio))
                                (bind ?puntc (+ ?puntb ?punts))
                                (bind $?justc (insert$ $?justb (+ (length$ $?justb) 1) $?justs))
                                (bind ?precc (+ ?precb ?precs))
                                (make-instance (gensym) of CombinacionSegundo (precio ?precc) (contenido-plat ?s) (contenido-bebida ?b) (puntuacion ?puntc) (justificaciones $?justc))
                                ;(bind $?listas (insert$ $?listas (+ (length$ $?listas) 1) ?s)) 
                        )
                                                        
                )
                (progn$ (?p $?pos)
                        (if (not(member$ ?p $?listap))
                                then
                                (bind ?puntp (send ?p get-puntuacion))
                                (bind $?justp (send ?p get-justificaciones))
                                (bind ?precp (send (send ?p get-contenido) get-precio))
                                (bind ?puntc (+ ?puntb ?puntp))
                                (bind $?justc (insert$ $?justb (+ (length$ $?justb) 1) $?justp))
                                (bind ?precc (+ ?precb ?precp))
                                (make-instance (gensym) of CombinacionPostre (precio ?precc) (contenido-plat ?p) (contenido-bebida ?b) (puntuacion ?puntc) (justificaciones $?justc))
                                ;(bind $?listap (insert$ $?listap (+ (length$ $?listap) 1) ?p)) 
                        )
        
                )
        )
        (assert (combinaciones-listas puntuar))
)


(defrule puntuar-combinaciones-plato
        (Contexto (acombebida plato))
        ?hecho <- (combinaciones-listas puntuar)
        =>
        (retract ?hecho)
        (assert (combinaciones-listas ok))
        (bind ?combe (find-all-instances ((?intancia CombinacionEntrada)) TRUE))
        (bind ?combs (find-all-instances ((?intancia CombinacionSegundo)) TRUE))
        (bind ?combp (find-all-instances ((?intancia CombinacionPostre)) TRUE))
        (progn$ (?var ?combe)
                (bind ?carn (send (send (send ?var get-contenido-plat) get-contenido) get-es_carne))
                (bind ?pesc (send (send (send ?var get-contenido-plat) get-contenido) get-es_pescado))
                ;(printout t ?carn crlf)
                ;(printout t ?pesc crlf)
                (bind ?okcarn (send (send (send ?var get-contenido-bebida) get-contenido) get-va_bien_carne))
                (bind ?okpesc (send (send (send ?var get-contenido-bebida) get-contenido) get-va_bien_pescado))
                ;(printout t ?okcarn crlf)
                ;(printout t ?okpesc crlf)
                (if (or (and (eq ?carn TRUE) (eq ?okcarn TRUE))
                        (and (eq ?pesc TRUE) (eq ?okpesc TRUE)))
                        then
                        (bind ?p (send ?var get-puntuacion))
                        (bind ?p (+ ?p 100))
                        (bind $?j (send ?var get-justificaciones))
                        (bind $?j (insert$ $?j (+ (length$ $?j ) 1) "Esta bebida va bien con este plato +100 puntos"))


                        (send ?var put-puntuacion ?p)
                        (send ?var put-justificaciones $?j)
                )
        )
        (progn$ (?var ?combs)
                (bind ?carn (send (send (send ?var get-contenido-plat) get-contenido) get-es_carne))
                (bind ?pesc (send (send (send ?var get-contenido-plat) get-contenido) get-es_pescado))
                
                (bind ?okcarn (send (send (send ?var get-contenido-bebida) get-contenido) get-va_bien_carne))
                (bind ?okpesc (send (send (send ?var get-contenido-bebida) get-contenido) get-va_bien_pescado))
                
                (if (or (and (eq ?carn TRUE) (eq ?okcarn TRUE))
                        (and (eq ?pesc TRUE) (eq ?okpesc TRUE)))
                        then
                        (bind ?p (send ?var get-puntuacion))
                        (bind ?p (+ ?p 100))
                        (bind $?j (send ?var get-justificaciones))
                        (bind $?j (insert$ $?j (+ (length$ $?j ) 1) "Esta bebida va bien con este plato +100 puntos"))
                        ;(printout t " asDKOSEWDO" crlf)
                        (send ?var put-puntuacion ?p)
                        (send ?var put-justificaciones $?j)
                )
        )
         ;no es necesario porque ningun postre es carne o pescado
        (progn$ (?var ?combp)
                (bind ?carn (send (send (send ?var get-contenido-plat) get-contenido) get-es_carne))
                (bind ?pesc (send (send (send ?var get-contenido-plat) get-contenido) get-es_pescado))
                
                (bind ?okcarn (send (send (send ?var get-contenido-bebida) get-contenido) get-va_bien_carne))
                (bind ?okpesc (send (send (send ?var get-contenido-bebida) get-contenido) get-va_bien_pescado))
                
                (if (or (and (eq ?carn TRUE) (eq ?okcarn TRUE))
                        (and (eq ?pesc TRUE) (eq ?okpesc TRUE)))
                        then
                        (bind ?p (send ?var get-puntuacion))
                        (bind ?p (+ ?p 100))
                        (bind $?j (send ?var get-justificaciones))
                        (bind $?j (insert$ $?j (+ (length$ $?j ) 1) "Esta bebida va bien con este plato +100 puntos"))
                        
                        (send ?var put-puntuacion ?p)
                        (send ?var put-justificaciones $?j)
                )
        )
)

(defrule cargar-mejores-combinaciones
        (combinaciones-listas ok)
        ?c <- (Contexto (acombebida plato))
        (not (combinaciones-sin-orden))
        =>
        (bind $?auxe (find-all-instances ((?instancia CombinacionEntrada)) TRUE))
        (bind $?auxs (find-all-instances ((?instancia CombinacionSegundo)) TRUE))
        (bind $?auxp (find-all-instances ((?instancia CombinacionPostre)) TRUE))
        
        (assert (combinaciones-sin-orden (entradas $?auxe) (segundos $?auxs) (postres $?auxp)))
)

(defrule ordenar-combinaciones
        ?lista <- (combinaciones-sin-orden (entradas $?ent) (segundos $?seg) (postres $?pos))
        ?c <- (Contexto (acombebida plato))
        =>
        (bind $?resultadoe (create$ ))
        (while (and (not (eq (length$ $?ent) 0)) (< (length$ $?resultadoe) 10))  do
                (bind ?curr-rec (maximo-puntuacion $?ent))
                (bind $?ent (delete-member$ $?ent ?curr-rec))
                (bind $?resultadoe (insert$ $?resultadoe (+ (length$ $?resultadoe) 1) ?curr-rec))
        )
        (bind $?resultados (create$ ))
        (while (and (not (eq (length$ $?seg) 0)) (< (length$ $?resultados) 10))  do
                (bind ?curr-rec (maximo-puntuacion $?seg))
                (bind $?seg (delete-member$ $?seg ?curr-rec))
                (bind $?resultados (insert$ $?resultados (+ (length$ $?resultados) 1) ?curr-rec))
        )
        (bind $?resultadop (create$ ))
        (while (and (not (eq (length$ $?pos) 0)) (< (length$ $?resultadop) 10))  do
                (bind ?curr-rec (maximo-puntuacion $?pos))
                (bind $?pos (delete-member$ $?pos ?curr-rec))
                (bind $?resultadop (insert$ $?resultadop (+ (length$ $?resultadop) 1) ?curr-rec))
        )
        
        (assert (combinaciones-con-orden (entradas $?resultadoe) (segundos $?resultados) (postres $?resultadop)))
)

(defrule emparejar-mejores-menus
        ?c <- (Contexto (acombebida plato))
        ?comb <- (combinaciones-con-orden (entradas $?ent) (segundos $?seg) (postres $?pos))
        (not (menu-listas ok))
        =>
        (bind $?listae (create$))
        (bind $?listas (create$))
        (bind $?listap (create$))       
        (progn$ (?e $?ent)
                ;(bind ?bebnoe (send (send (send (send ?e get-contenido-bebida) get-contenido) get-nombre)))              
                (bind ?punte (send ?e get-puntuacion))
                (bind $?juste (send ?e get-justificaciones))
                (bind ?prece (send ?e get-precio))
                (bind ?nome (send (send (send ?e get-contenido-plat) get-contenido) get-nombre))
                (progn$ (?s $?seg)
                ;(bind ?bebnos (send (send (send (send ?s get-contenido-bebida) get-contenido) get-nombre)))
                        (bind ?punts (send ?s get-puntuacion))
                        (bind $?justs (send ?s get-justificaciones))
                        (bind ?precs (send ?s get-precio))
                        (bind ?noms (send (send (send ?s get-contenido-plat) get-contenido) get-nombre))
                        (if (not (eq ?noms ?nome)) then
                                (progn$ (?p $?pos)
                                        ;(bind ?bebnop (send (send (send (send ?p get-contenido-bebida) get-contenido) get-nombre)))
                                        (bind ?nomp (send (send (send ?p get-contenido-plat) get-contenido) get-nombre))
                                        (if (and (not (member$ ?nome $?listae)) 
                                                                (not (member$ ?noms $?listas)) 
                                                                (not (member$ ?nomp $?listap))) 
                                                then
                                                (bind ?puntp (send ?p get-puntuacion))
                                                (bind $?justp (send ?p get-justificaciones))
                                                (bind ?precp (send ?p get-precio))
                                                
                                                (bind ?puntm (+ ?puntp ?punts ?punte))
                                                (bind $?justm (insert$ $?juste (+ (length$ $?juste) 1) (insert$ $?justs (+ (length$ $?justs) 1) $?justp)))
                                                (bind ?precm (+ ?prece ?precs ?precp))
                                                
                                                (make-instance (gensym) of Menu (entrada ?e) (segundo ?s) (postre ?p) (puntuacion ?puntm) (justificaciones $?justm) (precio ?precm))
                                                (bind $?listae (insert$ $?listae (+ (length$ $?listae) 1) ?nome))
                                                (bind $?listas (insert$ $?listas (+ (length$ $?listas) 1) ?noms))
                                                (bind $?listap (insert$ $?listap (+ (length$ $?listap) 1) ?nomp))
                                        )

                                )
                        )
                )
        )
        ;(printout t $?listae crlf)
        (assert (menu-listas ok))
)

(defrule cargar-menu
        (menu-listas ok)
        (Contexto (acombebida plato))
        =>
        (bind $?lista-instancias (find-all-instances ((?instancia Menu)) TRUE))
        (assert (menus-sin-orden (menus $?lista-instancias)))
)

(defrule ordenar-menu
        ?hecho <- (menus-sin-orden (menus $?m))
        ?c <- (Contexto (acombebida plato))
        =>
        (bind $?lista (find-all-instances ((?instancia Menu)) TRUE))
        (bind $?resultado (create$ ))
        (while (and (not (eq (length$ $?lista) 0)) (< (length$ $?resultado) 100))  do
                (bind ?curr-rec (maximo-puntuacion-menu $?lista))
                (bind $?lista (delete-member$ $?lista ?curr-rec))
                (bind $?resultado (insert$ $?resultado (+ (length$ $?resultado) 1) ?curr-rec))
        )
        (assert (menus-con-orden (menus $?resultado)))
)


(defrule mostrar-menus
        (Contexto (acombebida plato))
        ?mconorden <- (menus-con-orden (menus $?m))
        =>
        (bind $?resultado1 (create$))
        (while (and (not (eq (length$ $?m) 0)) (< (length$ $?resultado1) 3))  do
                (bind ?curr-m (maximo-puntuacion-menu $?m))
                (bind $?m (delete-member$ $?m ?curr-m))
                (bind $?resultado1 (insert$ $?resultado1 (+ (length$ $?resultado1) 1) ?curr-m))
                
        )

        ;(bind $?resultado (insert$ $?resultado (+ (length$ $?resultado ) 1) (nth$ 1 $?m)))
        ;(bind $?resultado (insert$ $?resultado (+ (length$ $?resultado ) 1) (nth$ (length$ $?m) $?m)))
        ;(bind $?resultado (insert$ $?resultado (+ (length$ $?resultado ) 1) (nth$ (integer(/(length$ $?m) 2)) $?m)))
        (progn$ (?var $?resultado1)
                (bind ?e (send ?var get-entrada))
                (bind ?s (send ?var get-segundo))
                (bind ?p (send ?var get-postre))
                
                (bind ?nome (send (send (send ?e get-contenido-plat) get-contenido) get-nombre))
                (bind ?noms (send (send (send ?s get-contenido-plat) get-contenido) get-nombre))
                (bind ?nomp (send (send (send ?p get-contenido-plat) get-contenido) get-nombre))
                
                (bind ?nomeb (send (send (send ?e get-contenido-bebida) get-contenido) get-nombre))
                (bind ?nomsb (send (send (send ?s get-contenido-bebida) get-contenido) get-nombre))
                (bind ?nompb (send (send (send ?p get-contenido-bebida) get-contenido) get-nombre))
                
                (printout t "----------MENU------" crlf)
                (printout t "Entrada: " ?nome " acompanado de " ?nomeb crlf)
                (printout t "Segundo: " ?noms " acompanado de " ?nomsb crlf)
                (printout t "Postre: " ?nomp " acompanado de " ?nompb  crlf)
                (printout t "PVP total: " (send ?var get-precio) crlf crlf)
                                (bind $?v (send ?var get-justificaciones))
                                (progn$ (?a $?v)
                                        (printout t ?a crlf)
                                )

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