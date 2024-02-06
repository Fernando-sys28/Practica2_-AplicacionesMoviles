//
//  PozoleView.swift
//  Practica2
//
//  Created by Fernando Rivera Castillo on 06/02/24.
//

import SwiftUI

// Define una vista para la selección de pozole, un platillo tradicional mexicano.
struct PozoleView: View {
    // Variables de estado para controlar la cantidad de cada tipo de pozole seleccionado.
    @State private var cantidad: Int = 0 // Para Pozole Blanco
    @State private var cantidad1: Int = 0 // Para Pozole Rojo
    @State private var cantidad2: Int = 0 // Para Pozole Verde
    @State private var cantidad3: Int = 0 // Para añadir mole como opcional
    // Variable de estado para almacenar notas adicionales del pedido.
    @State private var Description: String = ""
    
    var body: some View {
        // ZStack permite la superposición de elementos, con el fondo y el contenido.
        ZStack{
            Color(.fondo) // Establece el color de fondo de la vista.
            
            // VStack alinea los elementos verticalmente con un alineamiento a la izquierda.
            VStack(alignment: .leading){
                // Muestra una imagen representativa del pozole.
                Image("pozoleimage")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                    .shadow(radius: 10, y: 5)
                
                // Título de la sección.
                Text("Pozole")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Naranja"))
                    .padding(.leading,10)
                
                // Descripción del pozole, destacando sus ingredientes y preparación.
                Text("Es un caldo hecho a base de granos de maíz cacahuazintle, el cual se precoce durante dos horas y en ese proceso, los granos de maíz pierden la cáscara fibrosa que los cubre y cuando hierven se abren como flor.")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.leading,10)
                
                // Sección para seleccionar la cantidad de Pozole Blanco.
                HStack {
                    Text("Pozole Blanco: $100")
                    Spacer()
                    // Botón para disminuir la cantidad.
                    Button(action: {
                        if cantidad > 0 {
                            cantidad -= 1
                        }
                    }) {
                        Image(systemName: "minus.circle.fill")
                            .foregroundColor(.orange)
                    }
                    
                    // Muestra la cantidad seleccionada.
                    Text("\(cantidad)")
                        .frame(minWidth: 36)
                        .padding(5)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white)
                        )
                    
                    // Botón para aumentar la cantidad.
                    Button(action: {
                        cantidad += 1
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.orange)
                    }
                    .padding(.trailing,20)
                }
                .padding(.leading,10)
                
                // Se repite una estructura similar para Pozole Rojo y Pozole Verde.
                
                HStack{
                    Text("Pozole Rojo: $110")
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
                
                HStack{
                    Text("Pozole Verde: $115")
                    Spacer()
                    Button(action: {
                        if cantidad2 > 0 {
                            cantidad2 -= 1
                        }
                    }) {
                        Image(systemName: "minus.circle.fill")
                            .foregroundColor(.orange)
                    }
                    
                    Text("\(cantidad2)")
                        .frame(minWidth: 36) // Asegura que el Text tenga un ancho mínimo
                        .padding(5) // Agrega espacio alrededor del texto
                        .background(Color.white) // Fondo blanco
                        .cornerRadius(10) // Bordes redondeados
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white)
                        )
                    
                    Button(action: {
                        cantidad2 += 1
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.orange)
                    }
                    .padding(.trailing,20)
                    
                }
                .padding(.leading,10)
                
                
                Text("Agregar Opcional*")
                    .font(.headline)
                    .foregroundColor(Color("Naranja"))
                    .padding([.top, .leading],10)
                
                
                HStack{
                    Text("Añadir Mole: 20")
                    Spacer()
                    Button(action: {
                        if cantidad3 > 0 {
                            cantidad3 -= 1
                        }
                    }) {
                        Image(systemName: "minus.circle.fill")
                            .foregroundColor(.orange)
                    }
                    
                    Text("\(cantidad3)")
                        .frame(minWidth: 36) // Asegura que el Text tenga un ancho mínimo
                        .padding(5) // Agrega espacio alrededor del texto
                        .background(Color.white) // Fondo blanco
                        .cornerRadius(10) // Bordes redondeados
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white)
                        )
                    
                    Button(action: {
                        cantidad3 += 1
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.orange)
                    }
                    .padding(.trailing,20)
                }
                .padding(.leading,10)
                // Campo de texto para información adicional del pedido.
                Text("Información adicional:")
                    .font(.headline)
                    .foregroundColor(Color("Naranja"))
                    .padding([.top, .leading],10)
                TextEditor(text: $Description)
                    .frame(height: 100)
                    .cornerRadius(5)
                    .padding(.horizontal,10)
                
                // Botón para agregar los productos seleccionados al carrito.
                Button(action: {
                    // Acción para agregar al carrito aquí.
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
                
                Spacer() // Empuja todo el contenido hacia arriba.
            }
        }
        .ignoresSafeArea() // Ignora las áreas seguras para que el fondo se extienda completamente.
        .navigationBarBackButtonHidden(true) // Oculta el botón de regreso predeterminado.
        .navigationBarItems(leading: CustomBackButton()) // Añade un botón de regreso personalizado.
    }
}

// Previsualización de la vista para desarrollo y pruebas.
#Preview {
    PozoleView()
}
