Proceso sin_titulo
		definir precioKM, BajadaBandera como real;
		definir KMrecorridos, KMtotales, RecaudacionChofer, RecaudacionJefe como real;
		definir viajes, viajesqHizo, promedioViajes como entero;
		definir remis, contadorViajes como entero;
		
		Escribir 'Ingrese el precio del km del día:';
		Leer precioKM;
		BajadaBandera <- 1.1;
		
		contadorViajes <- 0;
		remis <- 1;
		
		Mientras remis <= 3 Hacer
			KMtotales <- 0;
			viajes <- 1;
			
			Escribir 'Cuántos viajes hizo el remis N°', remis, '?';
			Leer viajesqHizo;
			
			Repetir
				Escribir 'Ingrese los KM recorridos del viaje N°', viajes, ':';
				Leer KMrecorridos;
				KMtotales <- KMtotales + KMrecorridos + BajadaBandera;
				viajes <- viajes + 1;
			Hasta Que viajes > viajesqHizo
			
			RecaudacionChofer <- KMtotales * precioKM * 0.3;
			RecaudacionJefe <- KMtotales * precioKM * 0.7;
			
			Escribir 'El remis N°', remis, ' hizo ', viajesqHizo, ' viajes';
			Escribir 'Kilómetros totales: ', KMtotales;
			Escribir 'Recaudación del chofer: $', RecaudacionChofer;
			Escribir 'Recaudación del dueño: $', RecaudacionJefe;
			
			contadorViajes <- contadorViajes + viajesqHizo;
			remis <- remis + 1;
		FinMientras
		promedioViajes <- contadorViajes / 3;
		Escribir 'El promedio de viajes por remis fue de: ', promedioViajes;
FinProceso