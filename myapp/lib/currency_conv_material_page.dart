import 'package:flutter/material.dart';
import 'dolar_val.dart';

//crear una variable q almacene el valor a convertir
// crear una funcion que convierta el valor dado en el txtfield
// almacenar el valor retornado
// mostrar esa variable


class CurrencyConvMaterialPage extends StatefulWidget{
  const CurrencyConvMaterialPage({super.key});

  @override
  State createState() => _CurrencyConvMaterialPageState();

  
}



class _CurrencyConvMaterialPageState extends State{
  double resultado = 0;
  final TextEditingController textEditingController = TextEditingController();
  
  void convertir(){
   getUSD();
   
  setState(() {
    resultado = double.parse(textEditingController.text)*usdVal;

  });
}

  @override
  Widget build(BuildContext context) {
    debugPrint('buildf');

    const borde = OutlineInputBorder();
    // TODO: implement build
    return Scaffold(
      // scaffold provee la capacidad de acceder a elementos de Material design (headers, etc)
      backgroundColor: Colors.blueAccent,
      appBar: 	AppBar(
        title: const Text(
        'Pesos a Dólares',
        style: TextStyle(
          color: Colors.blue
        ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              (resultado == 0) ? '0 AR\$' : ('${resultado.toStringAsFixed(2)} AR\$'),
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),

            //padding 
            //container

            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0), // pading va por adentro del container
              child: TextField(
                controller: textEditingController,
                
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true
                  ),
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  hintText: 'Ingrese el monto en USD',
                  hintStyle: TextStyle(
                    color: Colors.white60,
                  ),
                  suffixIcon: Icon(Icons.monetization_on_outlined),
                  suffixIconColor: Colors.white60,
                  focusedBorder: borde,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder: borde,
                  
                ),
                
              ),
              
              
            ),
            //button 

              //raised 

              //text buttoN
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                onPressed: convertir,
                style: const ButtonStyle(
                  backgroundColor:  WidgetStatePropertyAll(Colors.white),
                  foregroundColor: WidgetStatePropertyAll(Colors.blue),
                  minimumSize: WidgetStatePropertyAll(
                    Size(double.infinity, 50)
                  )
                ),
                child: const Text('Convertir'),
  
                ),
              ),
          ],
        ),
      ),
);
  }
      
    
  }

  



