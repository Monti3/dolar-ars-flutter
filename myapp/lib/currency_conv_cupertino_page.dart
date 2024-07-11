import 'package:flutter/cupertino.dart';
import 'dolar_val.dart';

class CurrencyConvCuppertinoPage extends StatefulWidget {
  const CurrencyConvCuppertinoPage({super.key});

  @override
  State<CurrencyConvCuppertinoPage> createState() => _CurrencyConvCuppertinoPageState();
}

class _CurrencyConvCuppertinoPageState extends State<CurrencyConvCuppertinoPage> {

  double resultado = 0;
  final TextEditingController textEditingController = TextEditingController();
  
  void convertir(){
   getUSD();
   
  setState(() {
    resultado = double.parse(textEditingController.text)*usdVal;

  });

  @override
  Widget build(BuildContext context) {
    return  CupertinoPageScaffold(
      // scaffold provee la capacidad de acceder a elementos de Material design (headers, etc)
      backgroundColor: CupertinoColors.activeBlue,
      navigationBar: const CupertinoNavigationBar(
        middle:  Text(
        'Pesos a Dólares',
        style: TextStyle(
          color: CupertinoColors.activeBlue
        ),
        ),
        
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              (resultado == 0) ? '0 AR\$' : ('${resultado.toStringAsFixed(2)} AR\$'),
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: CupertinoColors.white,
              ),
            ),

            //padding 
            //container

            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0), // pading va por adentro del container
              child: CupertinoTextField(
                controller: textEditingController,
                
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true
                  ),
                style: const TextStyle(
                  color: CupertinoColors.white,
                ),
                decoration: const CupertinoInputDecoration(
                  hintText: 'Ingrese el monto en USD',
                  hintStyle: TextStyle(
                    color: CupertinoColors.white,
                  ),
                  suffixIcon: Icon(Icons.monetization_on_outlined),
                  suffixIconColor: CupertinoColors.white,
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
}