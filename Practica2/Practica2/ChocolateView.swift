//
//  SwiftUIView.swift
//  Practica2
//
//  Created by Fernando Rivera Castillo on 06/02/24.
//

import SwiftUI


// Define la vista para seleccionar chocolates oaxaqueños.
struct ChocolateView: View {
    // Variables de estado para manejar las cantidades seleccionadas de cada tipo de chocolate.
    @State private var cantidad: Int = 0 // Cantidad para Pan de yema.
    @State private var cantidad1: Int = 0 // Cantidad para Chocolate de agua.
    @State private var cantidad2: Int = 0 // Cantidad para Chocolate con leche.
    // Variable de estado para la descripción o nota adicional del pedido.
    @State private var Description: String = ""
    
    var body: some View {
        // Capa de fondo y alineación de los elementos de la vista.
        ZStack{
            Color(.fondo) // Define el color de fondo para la vista.
            
            // Alinea verticalmente los elementos de la vista.
            VStack(alignment: .leading){
                // Muestra la imagen del producto.
                Image("chocolate-oaxaqueno")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                    .shadow(radius: 10, y: 5)
                
                // Título de la vista.
                Text("Chocolate")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Naranja"))
                    .padding(.leading,10)
                
                // Descripción del chocolate oaxaqueño.
                Text("El chocolate oaxaqueño es un chocolate de mesa que se prepara íntegramente con productos naturales como son: semillas de cacao, almendras, azúcar y canela.")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.leading,10)
                
                // Sección de selección para Chocolate de agua.
                HStack {
                    Text("Chocolate de agua: $40")
                    Spacer()
                    // Botón para disminuir la cantidad.
                    Button(action: {
                        if cantidad1 > 0 {
                            cantidad1 -= 1
                        }
                    }) {
                        Image(systemName: "minus.circle.fill")
                            .foregroundColor(.orange)
                    }
                    
                    // Muestra la cantidad seleccionada.
                    Text("\(cantidad1)")
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
                        cantidad1 += 1
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.orange)
                    }
                    .padding(.trailing,20)
                }
                .padding(.leading,10)
                
                // Se repite una estructura similar para Chocolate con leche y Pan de yema.
                
                HStack{
                    Text("Chocolate con leche: $45")
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
                
                
                // Título para la sección opcional.
                Text("Agregar Opcional*")
                    .font(.headline)
                    .foregroundColor(Color("Naranja"))
                    .padding([.top, .leading],10)
                
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
                    // Aquí se implementaría la acción de agregar al carrito.
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
                
                Spacer() // Espaciador para empujar todo el contenido hacia arriba.
            }
        }.ignoresSafeArea() // Ignora las áreas seguras para extender el fondo.
            .navigationBarBackButtonHidden(true) // Oculta el botón de regreso del navegador.
            .navigationBarItems(leading: CustomBackButton()) // Usa un botón de regreso personalizado.
    }
}

// Previsualización de la vista en Xcode.
#Preview {
    ChocolateView()
}
