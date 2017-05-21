

                                        (bind ?ok_carne (send (send ?beg get-contenido) get-va_bien_carne))
                                        (bind ?ok_pescado (send (send ?beg get-contenido) get-va_bien_pescado))
                                        (bind ?nom_beg (send (send ?beg get-contenido) get-nombre))


                                        (bind ?sera_carn1 (send (send (send ?plat1 get-contenido-plat) get-contenido) get-es_carne))
                                        (bind ?sera_carn2 (send (send (send ?plat2 get-contenido-plat) get-contenido) get-es_carne))
                                        (bind ?sera_pescado1 (send (send (send ?plat1 get-contenido-plat) get-contenido) get-es_pescado))
                                        (bind ?sera_pescado2 (send (send (send ?plat2 get-contenido-plat) get-contenido) get-es_pescado))
                                        (bind $?justifica_bebida (create$))

                                        (if (and (eq ?sera_carn1 TRUE) (eq ?ok_carne TRUE)) then

                                                (bind ?*punt_extra_beg* (+ ?*punt_extra_beg* 2000))

                                                (bind $?justifica_bebida (insert$ $?justifica_bebida (+ (length $?justifica_bebida)1) 
                                                        "La bebida " ?nom_beg " va bien con el primer plato (carne), 20 puntos"))
                                        )

                                        (if (and (eq ?sera_carn2 TRUE) (eq ?ok_carne TRUE)) then
                                                (bind ?*punt_extra_beg *(+ ?*punt_extra_beg* 2000)

                                                (bind $?justifica_bebida (insert$ $?justifica_bebida (+ (length $?justifica_bebida)1) 
                                                        "La bebida " ?nom_beg " va bien con el segundo plato (carne), 20 puntos"))
                                                        )
                                        )

                                        (if (and (eq ?sera_pescado1 TRUE) (eq ?ok_pescado TRUE)) then

                                                (bind ?*punt_extra_beg* (+ ?*punt_extra_beg* 2000))

                                                (bind $?justifica_bebida (insert$ $?justifica_bebida (+ (length $?justifica_bebida)1) 
                                                        "La bebida " ?nom_beg " va bien con el primer plato (pescado), 20 puntos"))
                                        )
                                        

                                        (if (and (eq ?sera_pescado2 TRUE) (eq ?ok_pescado TRUE)) then

                                                (bind ?*punt_extra_beg* (+ ?*punt_extra_beg* 2000))

                                                (bind $?justifica_bebida (insert$ $?justifica_bebida (+ (length $?justifica_bebida)1) 
                                                        "La bebida " ?nom_beg " va bien con el segundo plato (pescado), 20 puntos"))
                                        )
                                        