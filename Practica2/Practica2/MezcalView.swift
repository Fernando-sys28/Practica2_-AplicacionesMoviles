//
//  MezcalView.swift
//  Practica2
//
//  Created by Fernando Rivera Castillo on 06/02/24.
//

import SwiftUI

// Define la vista para la selección de mezcal.
struct MezcalView: View {
    // Variables de estado para manejar las cantidades seleccionadas de cada tipo de mezcal.
    @State private var cantidad: Int = 0 // Cantidad para Mezcal espadín.
    @State private var cantidad1: Int = 0 // Cantidad para Mezcal tobalá.
    @State private var cantidad2: Int = 0 // Cantidad para Mezcal artesanal de la casa.
    @State private var cantidad3: Int = 0 // Cantidad para Chile de gusano (opcional).
    // Variable de estado para la descripción o nota adicional del pedido.
    @State private var Description: String = ""
    
    var body: some View {
        // Capa de fondo y alineación de los elementos.
        ZStack{
            Color(.fondo) // Define el color de fondo para toda la vista.
            
            // Alineación vertical de los elementos de la interfaz.
            VStack(alignment: .leading){
                // Muestra la imagen representativa del mezcal.
                Image("mezcalimage")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                    .shadow(radius: 10, y: 5)
                
                // Título de la vista.
                Text("Mezcal")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Naranja"))
                    .padding(.leading,10)
                
                // Descripción del mezcal.
                Text("El mezcal es un líquido de olor y sabor original, incoloro o ligeramente amarillento cuando es reposado o añejado, o cuando se aboque sin reposarlo o añejarlo.")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.leading,10)
                
                // Sección de selección para Mezcal espadín.
                HStack {
                    Text("Mezcal espadín: $40")
                    Spacer() // Separa el texto del botón.
                    // Botón para disminuir la cantidad.
                    Button(action: {
                        if cantidad > 0 {
                            cantidad -= 1
                        }
                    }) {
                        Image(systemName: "minus.circle.fill")
                            .foregroundColor(.orange)
                    }
                    
                    // Muestra la cantidad actual seleccionada.
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
                
                // Estructura similar para Mezcal tobalá y Mezcal artesanal de la casa.
                HStack{
                    Text("Mezcal tobalá: $45")
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
                    Text("Mezcal artesal de la casa: $45")
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
                
                // Sección de selección para Chile de gusano.
                HStack{
                    Text("Chile de gusano: $10")
                    Spacer()
                    // Botón para disminuir la cantidad.
                    Button(action: {
                        if cantidad3 > 0 {
                            cantidad3 -= 1
                        }
                    }) {
                        Image(systemName: "minus.circle.fill")
                            .foregroundColor(.orange)
                    }
                    
                    // Muestra la cantidad actual seleccionada.
                    Text("\(cantidad3)")
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
                        cantidad3 += 1
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.orange)
                    }
                    .padding(.trailing,20)
                }
                .padding(.leading,10)
                // Sección para agregar notas adicionales al pedido.
                Text("Información adicional:")
                    .font(.headline) // Establece el estilo de fuente para el título de la sección.
                    .foregroundColor(Color("Naranja")) // Utiliza un color personalizado para el texto.
                    .padding([.top, .leading],10) // Aplica un relleno al texto para su correcta alineación y espaciado.

                // TextEditor permite al usuario ingresar texto libremente.
                TextEditor(text: $Description) // Vincula el TextEditor a la variable de estado 'Description'.
                    .frame(height: 100) // Establece una altura fija para el área de texto.
                    .cornerRadius(5) // Aplica esquinas redondeadas para mejorar la estética.
                    .padding(.horizontal,10) // Aplica relleno horizontal para alinear con los elementos circundantes.

                // Botón para agregar los ítems seleccionados al carrito de compras.
                Button(action: {
                    // La acción a ejecutar cuando el botón es presionado se definiría aquí.
                    // Por ejemplo, podría agregar los productos seleccionados y la descripción al carrito de compras.
                }) {
                    Text("Agregar al carrito") // Texto mostrado en el botón.
                        .font(.headline) // Estilo de fuente del texto.
                        .padding() // Aplica relleno alrededor del texto para un mejor aspecto visual.
                        .frame(maxWidth: .infinity) // Asegura que el botón se expanda al máximo ancho disponible.
                        .background(Color.orange) // Establece el color de fondo del botón.
                        .foregroundColor(.white) // Color del texto dentro del botón.
                        .cornerRadius(10) // Redondea las esquinas del botón para un diseño más suave.
                }
                .padding(.top,10) // Aplica relleno superior para separarlo de elementos anteriores.
                .padding(.horizontal,100) // Aplica relleno horizontal para centrar el botón en la vista.

                // Spacer() es utilizado para empujar todo el contenido hacia arriba y asegurar que el botón
                // y el campo de texto no queden al final de la vista, especialmente en dispositivos con pantallas grandes.
                Spacer()
            }
            
        }.ignoresSafeArea()// Asegura que el color de fondo se extienda a toda la pantalla, ignorando las áreas seguras.
            .navigationBarBackButtonHidden(true)// Oculta el botón de regreso predeterminado de la barra de navegación.
            .navigationBarItems(leading: CustomBackButton())// Utiliza un botón de regreso personalizado definido en otra parte del código.
    }
}

#Preview {
    MezcalView()
}
