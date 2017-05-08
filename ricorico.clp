;################################################
;################################################
;############DEFINICIONS DE CLASSES##############
;################################################
;################################################


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot postre
		(type INSTANCE)
;+		(allowed-classes Plato)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tamano
		(type INTEGER)
		(range 1 5)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot primero
		(type INSTANCE)
;+		(allowed-classes Plato)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot contiene_gluten
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot es_moderno
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot contiene_azucar
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot contiene_lactosa
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot complejidad
		(type INTEGER)
		(range 1 5)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot ingrediente
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(cardinality 1 8)
		(create-accessor read-write))
	(single-slot segundo
		(type INSTANCE)
;+		(allowed-classes Plato)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot producto_animal
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot precio
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot contiene_alcohol
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
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
		(allowed-values Espana Japon Mexico)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot es_frio
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Ingrediente
	(is-a USER)
	(role concrete)
	(single-slot contiene_gluten
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot contiene_alcohol
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot contiene_azucar
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot producto_animal
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot contiene_lactosa
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Menu
	(is-a USER)
	(role concrete)
	(single-slot primero
		(type INSTANCE)
;+		(allowed-classes Plato)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot segundo
		(type INSTANCE)
;+		(allowed-classes Plato)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot postre
		(type INSTANCE)
;+		(allowed-classes Plato)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Bebida
	(is-a USER)
	(role concrete)
	(single-slot contiene_gluten
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot precio
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot contiene_alcohol
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot contiene_azucar
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot producto_animal
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot contiene_lactosa
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Plato
	(is-a USER)
	(role concrete)
	(single-slot es_frio
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot es_moderno
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tamano
		(type INTEGER)
		(range 1 5)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot precio
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot ingrediente
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(cardinality 1 8)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot tipo
		(type SYMBOL)
		(allowed-values primero segundo postre)
		(cardinality 1 3)
		(create-accessor read-write))
	(single-slot complejidad
		(type INTEGER)
		(range 1 5)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot disponibilidad
		(type SYMBOL)
		(allowed-values verano otono primavera invierno)
		(cardinality 1 4)
		(create-accessor read-write))
	(single-slot lugar_origen
		(type SYMBOL)
		(allowed-values Espana Japon Mexico)
;+		(cardinality 0 1)
		(create-accessor read-write)))



;################################################
;################################################
;##########DEFINICIONS DE INSTANCIES#############
;################################################
;################################################


(definstances instancies
([ricorico_Class22] of  Bebida

	(contiene_alcohol FALSE)
	(contiene_azucar FALSE)
	(contiene_gluten FALSE)
	(contiene_lactosa FALSE)
	(nombre "Botella de agua")
	(precio 2.0)
	(producto_animal FALSE))

([ricorico_Class23] of  Bebida

	(contiene_lactosa TRUE)
	(nombre "Cafe con leche")
	(precio 1.5))

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

([ricorico_Class40] of  Ingrediente

	(nombre "Chorizo"))

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
	(nombre "Arroz a la cubana")
	(precio 6.0)
	(tamano 5)
	(tipo primero segundo))

([ricorico_Class48] of  Ingrediente

	(nombre "Tomate"))

([ricorico_Class49] of  Ingrediente

	(contiene_azucar TRUE)
	(nombre "Nata montada"))

([ricorico_Class50] of  Plato

	(complejidad 1)
	(disponibilidad verano otono primavera invierno)
	(es_frio TRUE)
	(ingrediente
		[ricorico_Class43]
		[ricorico_Class49])
	(nombre "Fresas con nata")
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
	(nombre "Sopa de cereza")
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
	(nombre "Tataki de atun")
	(precio 12.0)
	(tamano 3)
	(tipo primero segundo))

([ricorico_Class55] of  Ingrediente
)

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

([ricorico_Class58] of  Ingrediente
)

([ricorico_Class59] of  Plato

	(complejidad 5)
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
)

;#RULE DE PROVA
(defrule retorna_instancies
        (not (retorna_instancies ok))
        =>
        (bind ?llista_instancies (find-all-instances ((?instancia Plato)) TRUE))
        (assert (retorna_instancies ok))
        (progn$ (?var ?llista_instancies)
                (printout t (send ?var get-nombre) crlf)
        )
)