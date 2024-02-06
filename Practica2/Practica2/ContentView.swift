//
//  ContentView.swift
//  Universidad de las Américas Puebla
//  Desarrollo de Aplicaciones Móviles
//  LIS4012
//  Fernando Rivera Castillo 171707
//  06/02/24

import SwiftUI
import MapKit

// ContentView es la vista principal para la aplicación del restaurante.
struct ContentView: View {
    // `position` rastrea la posición de la cámara del mapa y la inicializa a una región específica.
    @State private var position: MapCameraPosition = .region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 17.059417, longitude: -96.721622), // Coordenadas de Oaxaca
        span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
    ))
    
    // `landmark` es una ubicación fija usada para marcar un punto en el mapa.
    private var landmark = CLLocationCoordinate2D(latitude: 17.059417, longitude: -96.721622)
    
    // El cuerpo de ContentView donde se define la interfaz de usuario.
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.fondo) // Color de fondo para toda la vista.
                VStack {
                    // Cabecera con el logo y la información del restaurante.
                    HStack {
                        Image(.logoRestaurante) // Imagen del logo del restaurante.
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150)
                            .shadow(radius: 5, x:5, y:2)
                        VStack(alignment: .center, spacing: 5) {
                            // Nombre y detalles del restaurante.
                            Text("Restaurante")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(.naranja)
                            Text("Mi Niño del Sombrero")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.naranja)
                            // Horario de atención.
                            Text("Horario: 8:00 - 17:00")
                                .font(.caption)
                                .fontWeight(.bold)
                            // Número para reservaciones.
                            Text("Reservaciones: 9535380170")
                                .font(.caption)
                                .fontWeight(.bold)
                        }
                    }
                    .padding(.top, 40)
                    
                    // Sección principal con ScrollView para el contenido desplazable.
                    ScrollView {
                        // Título principal de la sección.
                        Text("Siente a Oaxaca con los mejores platillos de la región del Valle Central")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.all,4)
                        
                        // VStack para alinear verticalmente los elementos siguientes.
                        VStack(alignment: .leading) {
                            // Texto que indica la sección de la dirección.
                            Text("Dirección:")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(.naranja)
                                .multilineTextAlignment(.leading)
                            
                            // Mapa que muestra la ubicación del restaurante.
                            Map(position: $position) {
                                Marker("Mi niño del sombrero", coordinate: landmark) // Marcador en el mapa.
                            }
                            .frame(maxWidth: .infinity) // Ancho máximo para el mapa.
                            .frame(height: 200) // Altura fija para el mapa.
                            .clipShape(RoundedRectangle(cornerRadius: 25)) // Forma del mapa con esquinas redondeadas.
                            .shadow(radius: 5, x: 2, y: 5) // Sombra para el mapa.
                            
                            // Texto que indica la sección de la carta del restaurante.
                            Text("Nuestra carta:")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(.naranja)
                                .multilineTextAlignment(.leading)
                                .padding(.top,5)
                            
                            //Navegar hacia la vista TlayudasView
                            NavigationLink(destination: TlayudasView()) {
                                // Un Zstack para añadir la imagen en el tipo buton
                                ZStack {
                                    //poner un VStack para poner todo a la izquierda con un espaciado de 5
                                    VStack(alignment: .leading, spacing: 5) {
                                        //tlayudas texto
                                        Text("Tlayudas")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding(.leading,120)
                                        //descripcion de las tlayudas
                                        Text("Las mejores tlayudas de Oaxaca")
                                            .font(.caption)
                                            .foregroundColor(.white)
                                            .padding(.leading,120)
                                        
                                    }
                                    //para que cubra todo el ancho y pegado a la izquierda con una altura de 110
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .frame(height: 110)
                                    .padding()
                                    
                                    .background(.naranjaTla)
                                    .cornerRadius(10)
                                    //imagen de la tlayuda
                                    Image("Tlayuda")
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                        .offset(x:-120,y:-10)
                                }
                            }
                            
                            //Navegar hacia la vista ChocolateView
                            NavigationLink(destination: ChocolateView()) {
                                // Un Zstack para añadir la imagen en el tipo buton
                                ZStack {
                                    //poner un VStack para poner todo a la izquierda con un espaciado de 5
                                    VStack(alignment: .leading, spacing: 5) {
                                        //chocolate texto
                                        Text("Chocolate")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding(.leading,10)
                                        //descripcion del chocolate
                                        Text("Siente el chocolate de la")
                                            .font(.caption)
                                            .foregroundColor(.white)
                                            .padding(.leading,10)
                                        Text("receta de la abuelita")
                                            .font(.caption)
                                            .foregroundColor(.white)
                                            .padding(.leading,10)
                                        
                                        
                                    }
                                    //para que cubra todo el ancho y pegado a la izquierda con una altura de 110
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .frame(height: 110)
                                    .padding()
                                    
                                    .background(.chocolate)
                                    .cornerRadius(10)
                                    //imagen del chocolate
                                    Image("chocolate")
                                        .resizable()
                                        .frame(width: 160, height: 120)
                                        .offset(x:100,y:-10)
                                }
                            }
                            
                            //Navegar hacia la vista MezcalView
                            NavigationLink(destination: MezcalView()) {
                                // Un Zstack para añadir la imagen en el tipo buton
                                ZStack {
                                    //poner un VStack para poner todo a la izquierda con un espaciado de 5
                                    VStack(alignment: .leading, spacing: 5) {
                                        //mezcal texto
                                        Text("Mezcal")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding(.leading,120)
                                        //mezcal descripcion
                                        Text("Mezcal Espadin, siente el alcohol")
                                            .font(.caption)
                                            .foregroundColor(.white)
                                            .padding(.leading,120)
                                        
                                    }
                                    //para que cubra todo el ancho y pegado a la izquierda con una altura de 110
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .frame(height: 110)
                                    .padding()
                                    
                                    .background(.colorMezcal)
                                    .cornerRadius(10)
                                    //imagen mezcal
                                    Image("mezcal")
                                        .resizable()
                                        .frame(width: 130, height: 110)
                                        .offset(x:-120,y:-5)
                                }
                            }
                            
                            //Navegar hacia la vista MoleView
                            NavigationLink(destination: MoleView()) {
                                // Un Zstack para añadir la imagen en el tipo buton
                                ZStack {
                                    //poner un VStack para poner todo a la izquierda con un espaciado de 5
                                    VStack(alignment: .leading, spacing: 5) {
                                        //mole texto
                                        Text("Mole")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding(.leading,10)
                                        //mole descripcion
                                        Text("Muchos moles por probar")
                                            .font(.caption)
                                            .foregroundColor(.white)
                                            .padding(.leading,10)
                                        
                                    }
                                    //para que cubra todo el ancho y pegado a la izquierda con una altura de 110
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .frame(height: 110)
                                    .padding()
                                    
                                    .background(.mole)
                                    .cornerRadius(10)
                                    //imagen mole
                                    Image("Mole")
                                        .resizable()
                                        .frame(width: 230, height: 160)
                                        .offset(x:100,y:-10)
                                }
                                
                            }
                            .padding(.top,-10)
                            //Navegar hacia la vista PozoleView
                            NavigationLink(destination: PozoleView()) {
                                // Un Zstack para añadir la imagen en el tipo buton
                                ZStack {
                                    //poner un VStack para poner todo a la izquierda con un espaciado de 5
                                    VStack(alignment: .leading, spacing: 5) {
                                        //pozole texto
                                        Text("Pozole")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding(.leading,120)
                                        //pozole descripcion
                                        Text("El pozole del alma de Oaxaca")
                                            .font(.caption)
                                            .foregroundColor(.white)
                                            .padding(.leading,120)
                                        
                                    }
                                    //para que cubra todo el ancho y pegado a la izquierda con una altura de 110
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .frame(height: 110)
                                    .padding()
                                    
                                    .background(.colorpozole)
                                    .cornerRadius(10)
                                    //pozole imagen
                                    Image("pozole")
                                        .resizable()
                                        .frame(width: 140, height: 120)
                                        .offset(x:-120,y:-10)
                                }
                            }
                            .padding(.top,-10)
                        }
                        
                    }
                    .padding(.horizontal,10)// Padding horizontal para el ScrollView.
                }
            }
            .ignoresSafeArea()// Ignora el área segura para que el fondo se extienda a toda la pantalla.
        }
    }
}

#Preview {
    ContentView()
}

// Vista personalizada para el botón de regreso.
struct CustomBackButton: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Button(action: {
                // Acción para cerrar la vista actual y volver a la anterior.
                self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    // Ícono personalizado para el botón de regreso.
                    Image(systemName: "chevron.left.circle.fill")
                        .bold()
                        .padding(.leading,10)
                        .foregroundColor(.orange)
                        .font(.system(size: 20))
                }
            }
        }
    }
}
