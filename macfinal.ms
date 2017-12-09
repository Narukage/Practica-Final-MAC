-- default

tabernaAnchoDefault=100;
tabernaAltoDefault=50;
tabernaLargoDefault=100;
decor=#()
-- decor2=#()
--posicion donde se genera la habitacion
tabernaX=100;
tabernaY=100;
tabernaZ=100;
luzDefault=1;
barraDefault=1;

-- valores por defecto 



-- puerta?? ventanas??




-- TEXTURAS AAA

global escenariot = sysInfo.currentdir+"//texturas//esc.jpg"
global habitaciont = sysInfo.currentdir+"//texturas//Un.jpg"
global barragrt = sysInfo.currentdir+"//texturas//barragr.jpg"
global mesa = sysInfo.currentdir+"//texturas//mesa.jpg"
global chimenea = sysInfo.currentdir+"//texturas//chimeneaoalgo.jpg"
global espada = sysInfo.currentdir+"//texturas//espada.jpg"

meditMaterials[1].diffuseMap=BitmapTexture filename:escenariot
meditMaterials[3].diffuseMap=BitmapTexture filename:habitaciont
meditMaterials[4].diffuseMap=BitmapTexture filename:barragrt
meditMaterials[5].diffuseMap=BitmapTexture filename:mesa
meditMaterials[6].diffuseMap=BitmapTexture filename:chimenea
meditMaterials[7].diffuseMap=BitmapTexture filename:espada

meditMaterials[3].twoSided=on

meditMaterials[1].showInViewport=on
	meditMaterials[3].showInViewport=on
		meditMaterials[4].showInViewport=on
			meditMaterials[5].showInViewport=on
				meditMaterials[6].showInViewport=on
					meditMaterials[7].showInViewport=on










-- Crear habitacion weona
fn taberna largo ancho alto textura textura2 =
(
	habitacion = box material:textura length:largo width:ancho height:alto
	
	x=(-ancho/2)
	y=(-largo/2)+2
	z=15
	
	decor = plane material:textura2 length:20 width:10
	decor.pos = [x+18,y,z]
	rot_obj = eulerangles 0 90 90
				rotate decor rot_obj
	
	/*
	decor2 = plane length:5 width:15
	decor2.pos = [x+80,y,z]
	rot_obj = eulerangles 0 90 90
				rotate decor2 rot_obj
	*/
	)
	

	
	
	fn barragr largo ancho alto textura = 
	(			
			
			x=(-ancho/2)+20
			y=(-largo/2)+20
			z=0
	
		barra = box material:textura length:40 width:40 height:6
		barra.pos=[x,y,z]
		
		dentro= box material:textura length: 35 width: 30 heigth: 10
		dentro.pos=[x-5,y-5,z]
		
		
		ProBoolean.CreateBooleanObject barra dentro 2 0 1; --2 mean Subtraction ,0 mean Reference, 1 mean Retain Original Material
		
			
		
		)
		
		fn barrape largo ancho alto = 
		(
			
			x=(-ancho/2)+15
			y=(-largo/2)+15
			z=0
	
		barra = box length:30 width:30 height:6
		barra.pos=[x,y,z]
		
		dentro= box length: 25 width:20 heigth: 10
		dentro.pos=[x-5,y-5,z]
		
		
		ProBoolean.CreateBooleanObject barra dentro 2 0 1; --2 mean Subtraction ,0 mean Reference, 1 mean Retain Original Material
			
			)
			
			fn escenario largo ancho alto textura=
			(
				
				x=(ancho/2)-20
				y=(-largo/2)+20
				z=0
	
		esce = box material:textura length:40 width:40 height:8
		esce.pos=[x,y,z]
				
				
				)
	

				
				fn taburetes numTaburetes largo ancho alto textura=
				(
					
					x=(-ancho/2)+45
					y=(-largo/2)+5
					z=0
					
					for i=1 to numTaburetes do
					(
						
						tabu = box material:textura length:5 width:5 height:1
						tabu.pos=[x, y, z+2.8]
						
						patat1 = box material:textura length:0.8 width:0.8 height:2.8
						patat1.pos = [x+1.3,y-2,0]
						
						patat2 = box material:textura length:0.8 width:0.8 height:2.8
						patat2.pos = [x-1.3,y+2,0]
						
						patat3 = box material:textura length:0.8 width:0.8 height:2.8
						patat3.pos = [x+1.3,y+2,0]
						
						patat4 = box material:textura length:0.8 width:0.8 height:2.8
						patat4.pos = [x-1.3,y-2,0]
						
						
						y=y+8
						
						)
					
					
					)
	
	--TODO DE LAS MESAS Y SILLAS Y TODO EL ROLLO
	fn table numsillas largo ancho alto textura =
(
	--TOCAR ESTOS PARAMETROS PARA CAMBIAR EL SITIO
	
		x=(-ancho/2)+5
		y=(largo/2)-10--30
		z=4 
	
		xs=(-ancho/2)+5
		ys=(largo/2)-5---25
		zs=2.5
	
	for i=1 to numsillas do
	(
		
		if (x > ((ancho/2)-20)) then
			(
			x=(-ancho/2)+5
			y=y-20
			)
			
			if (xs > (ancho/2)-20) then
			(
			xs=(-ancho/2)+5
			ys=ys-20
			)
			
		
		lengthuc=8
		widthuc=8
		heightuc=0.7
		
		lengthu=0.3
		widthu=0.3
		heightu=4
		
		
		mesa = box material:textura length:lengthuc width:widthuc height:heightuc
		mesa.pos = [x,y,z]
		
		pata1 = box material:textura length:lengthu width:widthu height:heightu
		pata1.pos = [x+2.2,y-3,0]
		
		pata2 = box material:textura length:lengthu width:widthu height:heightu
		pata2.pos = [x+2.2,y+3,0]
		
		pata3 = box material:textura length:lengthu width:widthu height:heightu
		pata3.pos = [x-2.2,y-3,0]
		
		pata4 = box material:textura length:lengthu width:widthu height:heightu
		pata4.pos = [x-2.2,y+3,0]
		
		
		silla1 = box material:textura length:2 width:2.8 height:0.4
		silla1.pos=[xs, ys, zs]
		
		
		silla2 = box material:textura length:2 width:2.8 height:0.4
		silla2.pos=[xs, ys-10, zs]
		
			palillo = box material:textura length:0.3 width:0.3 height:2.8
			palillo.pos = [xs+1.2,ys+1,zs+0.4]
			
			palillo2 = box material:textura length:0.3 width:0.3 height:2.8
			palillo2.pos = [xs-1.2,ys+1,zs+0.4]
			
			palillo3 = box material:textura length:0.3 width:0.3 height:2.8
			palillo3.pos = [xs+1.2,ys-11,zs+0.4]
			
			palillo4 = box material:textura length:0.3 width:0.3 height:2.8
			palillo4.pos = [xs-1.2,ys-11,zs+0.4]


			palillodeabajo = box material:textura length:0.3 width:0.3 height:2.8
			palillodeabajo.pos = [xs+1.2,ys-11,0]
			
			palillodeabajo = box material:textura length:0.3 width:0.3 height:2.8
			palillodeabajo.pos = [xs-1.2,ys-11,0]
			
			palillodeabajo2 = box material:textura length:0.3 width:0.3 height:2.8
			palillodeabajo2.pos = [xs+1.2,ys-9.2,0]
			
			palillodeabajo2 = box material:textura length:0.3 width:0.3 height:2.8
			palillodeabajo2.pos = [xs-1.2,ys-9.2,0]
			
			palillodeabajootro = box material:textura length:0.3 width:0.3 height:2.8
			palillodeabajootro.pos = [xs+1.2,ys+1,0]
			
			palillodeabajootro = box material:textura length:0.3 width:0.3 height:2.8
			palillodeabajootro.pos = [xs-1.2,ys+1,0]
		
			palillodeabajootro = box material:textura length:0.3 width:0.3 height:2.8
			palillodeabajootro.pos = [xs+1.2,ys-0.8,0]
		
			palillodeabajootro = box material:textura length:0.3 width:0.3 height:2.8
			palillodeabajootro.pos = [xs-1.2,ys-0.8,0]
			
			palo = box material:textura length:0.3 width:2.8 height:0.3
			palo.pos = [xs,ys+1,zs+0.4]
			
			palo2 = box material:textura length:0.3 width:2.8 height:0.3
			palo2.pos = [xs,ys+1,zs+1.5]
			
			
			palo3 = box material:textura length:0.3 width:2.8 height:0.3
			palo3.pos = [xs,ys+1,zs+2.5]
			
			palo4 = box material:textura length:0.3 width:2.8 height:0.3
			palo4.pos = [xs,ys-11,zs+0.4]
			
			palo5 = box material:textura length:0.3 width:2.8 height:0.3
			palo5.pos = [xs,ys-11,zs+1.5]
			
			
			palo6 = box material:textura length:0.3 width:2.8 height:0.3
			palo6.pos = [xs,ys-11,zs+2.5]
			
		
		
		
		x=x+15
		xs=xs+15
		)
	
	
	)
	
	fn chimenea largo ancho alto textura =
(
	x=(ancho/2)-4.5
	y=(largo/2)-37
	z=0
	altura=alto-11
	
	abajo = box material:textura length:20 width:9 height:11
	abajo.pos = [x,y-2,z]
	
	arriba = box material:textura length:17 width:7 height:altura
	arriba.pos = [x+1,y-2,11]
	
	dentro = box material:textura length:16 width:10 height:8
	dentro.pos = [x-1.5,y-2,z]
	
	ProBoolean.CreateBooleanObject abajo dentro 2 0 1; --2 mean Subtraction ,0 mean Reference, 1 mean Retain Original Material
	
	)
	
	
	fn luces tipoLuz largo ancho alto =
(
	if tipoLuz==1 then
		(
			x=random ancho ancho-500
			y=random largo largo-100
			z=alto+10			
			luz=Omnilight rgb:(color 255 240 250) shadowColor:(color 0 0 0) multiplier:1 contrast:0 softenDiffuseEdge:0 nearAttenStart:0 nearAttenEnd:40 farAttenStart:80 farAttenEnd:200 decayRadius:197.2 atmosOpacity:100 atmosColorAmt:100 shadowMultiplier:1 pos:[-100,80,80] 
			luz.baseObject.castShadows=true
			luz.pos=[x,y,z]
		
		)else
		(
			x=(-ancho/2)+60
			y=(largo/2)-60
			z=alto-5
		
			
			luz=Omnilight rgb:(color 255 240 250) shadowColor:(color 0 0 0) multiplier:1 contrast:0 softenDiffuseEdge:0 nearAttenStart:0 nearAttenEnd:40 farAttenStart:80 farAttenEnd:200 decayRadius:197.2 atmosOpacity:100 atmosColorAmt:100 shadowMultiplier:1 pos:[-100,80,80] 
			luz.baseObject.castShadows=true
			luz.pos=[x,y,z]
		
		)
	)
	
	
	


rollout Interfaz "Generator" width:580 height:300
(
	label title "Tavern Generator" pos:[50,10] width:200 height:30 align:#center
	
	groupBox grupo1 "Dimensiones" pos:[20,40] width:166 height:90
		label ejeX "Largo" pos:[40,60] width:30 height:20
		label ejeY "Ancho" pos:[40,80] width:30 height:20
		label ejeZ "Alto" pos:[40,100] width:30 height:20
		spinner valor1 "" pos:[80,60] width:90 height:16 range:[100,200,100] type:#integer
		spinner valor2 "" pos:[80,80] width:90 height:16 range:[100,200,100] type:#integer
		spinner valor9 "" pos:[80,100] width:90 height:16 range:[25,100,25] type:#integer

	groupBox grupo2 "Sillas y mesas" pos:[200, 40] width:166 height:80
		checkbox 'siSillasymesas' "Añadir" pos:[220,60] width: 80 height: 20 align:#left
		label numSillas "Cantidad" pos:[220,90] width:120 height:20
		spinner valor20 "" pos:[270,90] width:90 height:16 range:[5,30,5] type:#integer
	
	
	
	groupBox grupo4 "Taburetes" pos:[200, 120] width:166 height:70
	
		checkbox 'siTaburetes' "Añadir" pos:[220,140] width: 80 height: 20 align:#left
		label numTaburetes"Cantidad" pos:[220,160] width:120 height:20
		spinner valor22 "" pos:[270,160] width:90 height:16 range:[1,5,1] type:#integer
	
	groupBox grupo5 "Iluminacion" pos:[20,110+20] width:166 height:80
		dropDownList tipoLuz "Ambiente" pos:[40,130+20] width:110 height:20 items:#("Dia", "Noche")


	groupBox grupo9 "Dimensiones de la barra" pos:[200, 200] width:166 height:90
		dropDownList barraescala "Tipo" pos:[210,210+20] width:110 height:20 items:#("Grande", "Pequeña")


	

		
	groupBox grupo6 "Chimenea" pos:[20,210] width:80 height:50
		checkbox 'siChimenea' "Añadir" pos:[30,230] width: 80 height: 20 align:#left
		
		groupBox grupo7 "Escenario" pos:[105,210] width:80 height:50
		checkbox 'siEscenario' "Añadir" pos:[115,230] width: 80 height: 20 align:#left
		
		
		
		button start "Start" pos:[380,150] width:166 height:90
		
		on barraescala selected tipo do
		barraDefault=tipo
		on tipoLuz selected tipo2 do
		luzDefault=tipo2
		on start pressed do
	
		(
			delete objects
			-- call metodo room 
			taberna  valor1.value valor2.value valor9.value meditMaterials[3] meditMaterials[7]
		
			
			if(barraDefault==1) do
			(
				barragr valor1.value valor2.value valor9.value meditMaterials[4]
				
				)
				
				if(barraDefault==2) do
				(
					barrape valor1.value valor2.value valor9.value
					
					)
					
			if(siTaburetes.checked) then
					(
						taburetes valor22.value valor1.value valor2.value valor9.value meditMaterials[5]
						)
				
							
			if(siEscenario.checked) then
			(
				escenario valor1.value valor2.value valor9.value meditMaterials[1]
				)

			
				
			
			if(siSillasymesas.checked) then
			(
				table valor20.value valor1.value valor2.value valor9.value meditMaterials[5]
			)
			
			if(siChimenea.checked) then
			(
				chimenea valor1.value valor2.value valor9.value meditMaterials[6]
			)
			
			luces luzDefault valor1.value valor2.value valor9.value
		
		)
		
	)
	
		createDialog Interfaz