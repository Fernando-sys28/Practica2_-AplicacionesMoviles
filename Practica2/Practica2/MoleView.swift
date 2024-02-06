//
//  MoleView.swift
//  Practica2
//
//  Created by Fernando Rivera Castillo on 06/02/24.
//

import SwiftUI

// Define una estructura de vista para mostrar opciones de mole.
struct MoleView: View {
    // Variables de estado para controlar la cantidad de cada tipo de mole seleccionado por el usuario.
    @State private var cantidad: Int = 0 // Cantidad de mole negro con pollo.
    @State private var cantidad1: Int = 0 // Cantidad de mole negro con puerco.
    
    // Variable de estado para almacenar la descripción o notas adicionales proporcionadas por el usuario.
    @State private var Description: String = ""
    
    var body: some View {
        // ZStack permite superponer elementos en la interfaz de usuario.
        ZStack{
            Color(.fondo) // Establece el color de fondo para la vista.
            
            // VStack alinea los elementos verticalmente y permite una mejor organización del contenido.
            VStack(alignment: .leading){
                // Imagen del mole para dar contexto visual al usuario.
                Image("mole1")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                    .shadow(radius: 10,y: 5)
                
                // Título de la vista, destacando el platillo principal.
                Text("Mole")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Naranja"))
                    .padding(.leading,10)
                
                // Descripción breve del mole, sus ingredientes y origen.
                Text("El mole es un platillo emblemático del estado de Oaxaca; su preparación incluye ingredientes endémicos como chiles chilhuacle, pasilla y ancho, además de diversas semillas, especias y hierbas.")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.leading,10)
                
                // Sección para seleccionar la cantidad de mole negro con pollo.
                HStack {
                    Text("Mole negro con pollo: $90")
                    Spacer()
                    // Botón para disminuir la cantidad del platillo.
                    Button(action: {
                        if cantidad > 0 {
                            cantidad -= 1
                        }
                    }) {
                        Image(systemName: "minus.circle.fill")
                            .foregroundColor(.orange)
                    }
                    
                    // Muestra la cantidad actual seleccionada por el usuario.
                    Text("\(cantidad)")
                        .frame(minWidth: 36)
                        .padding(5)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white)
                        )
                    
                    // Botón para aumentar la cantidad del platillo.
                    Button(action: {
                        cantidad += 1
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.orange)
                    }
                    .padding(.trailing,20)
                }
                .padding(.leading,10)
                
                // Se repite una estructura similar para mole negro con puerco.
                
                HStack{
                    Text("Mole negro con puerco: $100")
                    Spacer()
                    Button(action: {
                        if cantidad1 > 0 {
                            cantidad1 -= 1
                        }
                    }) {
                        Image(systemName: "minus.circle.fill")
                            .foregroundColor(.orange)
                    }
                    
                    Text("\(cantidad1)")
                        .frame(minWidth: 36) // Asegura que el Text tenga un ancho mínimo
                        .padding(5) // Agrega espacio alrededor del texto
                        .background(Color.white) // Fondo blanco
                        .cornerRadius(10) // Bordes redondeados
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white)
                        )
                    
                    Button(action: {
                        cantidad1 += 1
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.orange)
                    }
                    .padding(.trailing,20)
                    
                }
                .padding(.leading,10)
                
                // Campo de texto para que el usuario ingrese información adicional a su pedido.
                Text("Información adicional:")
                    .font(.headline)
                    .foregroundColor(Color("Naranja"))
                    .padding([.top, .leading],10)
                TextEditor(text: $Description)
                    .frame(height: 100)
                    .cornerRadius(5)
                    .padding(.horizontal,10)
                
                // Botón para agregar el pedido al carrito de compras.
                Button(action: {
                    // La acción de agregar al carrito se implementaría aquí.
                }) {
                    Text("Agregar al carrito")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top,10)
                .padding(.horizontal,100)
                
                // Spacer empuja todo el contenido hacia arriba, ajustando la vista según el contenido.
                Spacer()
            }
        }
        .ignoresSafeArea() // Asegura que el fondo se extienda a toda la pantalla, incluyendo las áreas seguras.
        .navigationBarBackButtonHidden(true) // Oculta el botón de regreso por defecto de la barra de navegación.
        .navigationBarItems(leading: CustomBackButton()) // Utiliza un botón personalizado para el regreso.
    }
}

// Previsualización de la vista en Xcode.
#Preview {
    MoleView()
}
