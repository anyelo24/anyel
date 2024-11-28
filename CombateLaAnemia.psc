Algoritmo CombateLaAnemia
    Definir puntos, vidas, nivel Como Entero
    Definir opc Como Entero
    Definir seguirJugando Como Caracter
    
    Escribir "¡Bienvenido a Combate la Anemia"
    puntos = 0
    vidas = 3
    nivel = 1
    seguirJugando = "S"
    
    Mientras seguirJugando = "S" o seguirJugando = "s" Hacer
        Escribir "=== Nivel ", nivel, " ==="
        Escribir "Tienes ", vidas, " vidas restantes."
        
        Escribir "Elige un alimento:"
        Escribir "1. Espinacas"
        Escribir "2. Hamburguesa con papas fritas"
        Escribir "3. Hígado de res"
        Escribir "4. Refresco de cola"
        Si nivel >= 2 Entonces
            Escribir "5. Brócoli"
            Escribir "6. Fresas"
            Escribir "7. Leche"
        FinSi
        Si nivel >= 3 Entonces
            Escribir "8. Lentejas"
            Escribir "9. Pollo"
            Escribir "10. Pastel de chocolate"
        FinSi
        Leer opc
        
        Segun opc Hacer
            1: 
                Escribir "¡Espinacas! Excelente elección, ricas en hierro."
                puntos = puntos + 10
            2: 
                Escribir "Hamburguesa con papas fritas: sabroso, pero poco nutritivo."
                puntos = puntos - 5
                vidas = vidas - 1
            3: 
                Escribir "¡Hígado de res! Fuente rica en hierro. ¡Buen trabajo!"
                puntos = puntos + 15
            4: 
                Escribir "Refresco de cola: no ayuda a combatir la anemia."
                puntos = puntos - 10
                vidas = vidas - 1
            5: 
                Si nivel >= 2 Entonces
                    Escribir "¡Brócoli! Excelente para combatir la anemia."
                    puntos = puntos + 10
                Sino
                    Escribir "Opción inválida."
                FinSi
            6: 
                Si nivel >= 2 Entonces
                    Escribir "¡Fresas! Ricas en vitamina C, que ayuda a absorber el hierro."
                    puntos = puntos + 10
                Sino
                    Escribir "Opción inválida."
                FinSi
            7: 
                Si nivel >= 2 Entonces
                    Escribir "Leche: importante para los huesos, pero no combate la anemia directamente."
                    puntos = puntos + 5
                Sino
                    Escribir "Opción inválida."
                FinSi
            8: 
                Si nivel >= 3 Entonces
                    Escribir "¡Lentejas! Excelente fuente de hierro vegetal."
                    puntos = puntos + 15
                Sino
                    Escribir "Opción inválida."
                FinSi
            9: 
                Si nivel >= 3 Entonces
                    Escribir "¡Pollo! Una buena fuente de proteínas y hierro."
                    puntos = puntos + 10
                Sino
                    Escribir "Opción inválida."
                FinSi
            10: 
                Si nivel >= 3 Entonces
                    Escribir "Pastel de chocolate: delicioso, pero no es nutritivo."
                    puntos = puntos - 5
                    vidas = vidas - 1
                Sino
                    Escribir "Opción inválida."
                FinSi
            De Otro Modo:
                Escribir "Opción inválida."
        FinSegun
        
        Si vidas <= 0 Entonces
            Escribir "¡Oh no! Perdiste todas tus vidas. Fin del juego."
            seguirJugando = "N"
        FinSi
        
        Si puntos >= nivel * 30 Entonces
            nivel = nivel + 1
            Escribir "¡Felicidades! Subiste al nivel ", nivel
        FinSi
        
        Escribir "Puntaje actual: ", puntos
        
        Si seguirJugando = "S" o vidas > 0 Entonces
            Escribir "¿Quieres continuar? (S/N):"
            Leer seguirJugando
        FinSi
    FinMientras
    
	
    Escribir "¡Juego terminado! Tu puntaje final es: ", puntos
    Si puntos >= 50 Entonces
        Escribir "¡Increíble! Eres un experto en combatir la anemia."
    Sino
        Escribir "Sigue aprendiendo sobre alimentos saludables."
    FinSi
FinAlgoritmo
