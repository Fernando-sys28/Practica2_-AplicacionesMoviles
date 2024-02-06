//
//  TlayudasView.swift
//  Practica2
//
//  Created by Fernando Rivera Castillo on 05/02/24.
//

import SwiftUI

// TlayudasView es una vista que muestra las opciones de Tlayudas disponibles y permite a los usuarios seleccionar la cantidad que desean ordenar.
struct TlayudasView: View {
    
    // Variables de estado para manejar la cantidad de cada tipo de Tlayuda seleccionada por el usuario.
    @State private var cantidad: Int = 0 // Para Tlayuda Sencilla
    @State private var cantidad1: Int = 0 // Para Tlayuda Tasajo
    @State private var cantidad2: Int = 0 // Para Tlayuda Chorizo
    @State private var cantidad3: Int = 0 // Para Tlayuda Costilla
    @State private var cantidad4: Int = 0 // Para Tlayuda Combinado
    // Variable de estado para manejar la descripción o nota adicional que el usuario quiera añadir a su orden.
    @State private var Description: String = ""
    
    // El cuerpo principal de la vista.
    var body: some View {
        
        // ZStack permite superponer vistas, en este caso, el fondo y el contenido vertical.
        ZStack{
            Color(.fondo) // Color de fondo para toda la vista.
            
            // VStack alinea verticalmente los elementos de la interfaz.
            VStack(alignment: .leading){
                // Imagen representativa de la tlayuda.
                Image("tlayuda-oaxaca")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                    .shadow(radius: 10, y: 5)
                
                // Título de la vista.
                Text("Tlayuda")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Naranja"))
                    .padding(.leading,10)
                
                // Descripción de la tlayuda.
                Text("Tradicionalmente, la tlayuda es esa tortilla enorme, casi tostada, cubierta de frijoles negros, asiento, quesillo, jitomate y aguacate.")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.leading,10)
                
                // A partir de aquí se repite una estructura similar para cada tipo de Tlayuda:
                // HStack permite la alineación horizontal de los elementos, en este caso, el nombre, botones y cantidad.
                HStack {
                    Text("Tlayuda Sencilla: $90")
                    Spacer() // Empuja los elementos subsecuentes hacia la derecha.
                    
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
                
                // Línea de pedido para la Tlayuda Tasajo.
                HStack{
                    Text("Tlayuda Tasajo: $110") // Nombre del producto y precio.
                    Spacer() // Separador para empujar los elementos hacia los extremos.
                    // Botón para disminuir la cantidad de Tlayuda Tasajo.
                    Button(action: {
                        if cantidad1 > 0 {
                            cantidad1 -= 1 // Reduce la cantidad en uno.
                        }
                    }) {
                        Image(systemName: "minus.circle.fill") // Ícono de menos.
                            .foregroundColor(.orange) // Color del ícono.
                    }
                    
                    // Muestra la cantidad actual seleccionada por el usuario.
                    Text("\(cantidad1)")
                        .frame(minWidth: 36) // Ancho mínimo para mantener el diseño uniforme.
                        .padding(5) // Espacio alrededor del texto.
                        .background(Color.white) // Fondo blanco para resaltar la cantidad.
                        .cornerRadius(10) // Esquinas redondeadas para el fondo.
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white) // Borde del área de la cantidad.
                        )
                    
                    // Botón para aumentar la cantidad de Tlayuda Tasajo.
                    Button(action: {
                        cantidad1 += 1 // Aumenta la cantidad en uno.
                    }) {
                        Image(systemName: "plus.circle.fill") // Ícono de más.
                            .foregroundColor(.orange) // Color del ícono.
                    }
                    .padding(.trailing,20) // Espacio a la derecha para no pegarse al borde.
                }
                .padding(.leading,10) // Espacio a la izquierda para alinear con el resto de los elementos.
                // Se repiten estructuras similares para 'Tlayuda Chorizo', 'Tlayuda Costilla', y 'Tlayuda Combinado'.
                HStack{
                    Text("Tlayuda Chorizo: $110")
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
                
                HStack{
                    Text("Tlayuda Costilla: $130")
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
                
                HStack{
                    Text("Tlayuda Combinado: $140")
                    Spacer()
                    Button(action: {
                        if cantidad4 > 0 {
                            cantidad4 -= 1
                        }
                    }) {
                        Image(systemName: "minus.circle.fill")
                            .foregroundColor(.orange)
                    }
                    
                    Text("\(cantidad4)")
                        .frame(minWidth: 36) // Asegura que el Text tenga un ancho mínimo
                        .padding(5) // Agrega espacio alrededor del texto
                        .background(Color.white) // Fondo blanco
                        .cornerRadius(10) // Bordes redondeados
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white)
                        )
                    
                    Button(action: {
                        cantidad4 += 1
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.orange)
                    }
                    .padding(.trailing,20)
                    
                }
                .padding(.leading,10)
                
                Text("Información adicional:")
                    .font(.headline)
                    .foregroundColor(Color("Naranja"))
                    .padding([.top, .leading],10)
                TextEditor( text: $Description)
                    .frame(height: 100)
                    .cornerRadius(5)
                    .padding(.horizontal,10)
                
                Button(action: {
                 
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
                
                
                Spacer()
            }
            
        }.ignoresSafeArea()
        .navigationBarBackButtonHidden(true)// se oculta el navigationbar por defecto
        .navigationBarItems(leading: CustomBackButton())// le ponemos un custom que lo creamos en ConentView
    }
}

#Preview {
    TlayudasView()
}
