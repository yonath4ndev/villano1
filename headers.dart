import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color(0xff6515AAB), //eL # ES 0xxff y de hay el numero del color
      
    );
  }
}

class HeaderBorderRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(  // Sirve para decorar la figura
        color: Color(0xff6515AAB), //eL # ES 0xxff y de hay el numero del color
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70) 
          ) //es para solo 2 lados
      ),
      
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    height: double.infinity,
    width: double.infinity, // Es para tener el maximo del ancho   
    
    child: CustomPaint( //Nos permite modificar por completo un figura
    painter: _HeaderDiagonalPainter(),

    ),
    
      );
  }
}

class _HeaderDiagonalPainter extends CustomPainter  {

  @override
  void paint(Canvas  canvas, Size size) {
      
    final lapiz = Paint(); //El paint es un lapiz o lapiz es un paint

    //propiedades
    lapiz.color = Color(0xff6515AAB); //eL # ES 0xxff y de hay el numero del color
    lapiz.style = PaintingStyle.fill; // .fill  son los bordes , stroke
    //lapiz.style = PaintingStyle.stroke; // .fill  son los bordes , stroke
    lapiz.strokeWidth = 5;

    final path = Path();

    //Dibujar con el path y el lapiz  
    path.moveTo(0, size.height * 0.35); //El size.heigth * 0.5 es para la mitad del body
    path.lineTo(size.width, size.height * 0.30); // Es para el ancho
    path.lineTo(size.width, 0); // Es para el ancho
    path.lineTo(0,0 ); // Es para el ancho
    //path.lineTo(0, size.height * 0.5); // Es para el ancho

    canvas.drawPath(path, lapiz);

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {

    return true;
    
  }

}



class HeaderTriangular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    height: double.infinity,
    width: double.infinity, // Es para tener el maximo del ancho   
    
    child: CustomPaint( //Nos permite modificar por completo un figura
    painter: _HeaderTriangularPainter(),

    ),
    
      );
  }
}

class _HeaderTriangularPainter extends CustomPainter  {

  @override
  void paint(Canvas  canvas, Size size) {
      
    final lapiz = Paint(); //El paint es un lapiz o lapiz es un paint

    //propiedades
    lapiz.color = Color(0xff6515AAB); //eL # ES 0xxff y de hay el numero del color
    lapiz.style = PaintingStyle.fill; // .fill  son los bordes , stroke
    //lapiz.style = PaintingStyle.stroke; // .fill  son los bordes , stroke
    lapiz.strokeWidth = 5;

    final path = Path();

    //Dibujar con el path y el lapiz  
    path.moveTo(0, size.height * 1); //El size.heigth * 0.5 es para la mitad del body
    //path.lineTo(size.width, size.height * 1); // Es para el ancho
    path.lineTo(size.width, 1); // Es para el ancho
    path.lineTo(0,0 ); // Es para el ancho
    //path.lineTo(0, size.height * 0.5); // Es para el ancho

    canvas.drawPath(path, lapiz);

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {

    return true;
    
  }

}

class HeaderPico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    height: double.infinity,
    width: double.infinity, // Es para tener el maximo del ancho   
    
    child: CustomPaint( //Nos permite modificar por completo un figura
    painter: _HeaderPicoPainter(),

    ),
    
      );
  }
}

class _HeaderPicoPainter extends CustomPainter  {

  @override
  void paint(Canvas  canvas, Size size) {
      
    final lapiz = Paint(); //El paint es un lapiz o lapiz es un paint

    //propiedades
    lapiz.color = Color(0xff6515AAB); //eL # ES 0xxff y de hay el numero del color
    lapiz.style = PaintingStyle.fill; // .fill  son los bordes , stroke
    //lapiz.style = PaintingStyle.stroke; // .fill  son los bordes , stroke
    lapiz.strokeWidth = 20;

    final path = Path();

    //Dibujar con el path y el lapiz  ----------------- 
    path.lineTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.5, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    

    canvas.drawPath(path, lapiz);

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {

    return true;
    
  }
}

class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    height: double.infinity,
    width: double.infinity, // Es para tener el maximo del ancho   
    
    child: CustomPaint( //Nos permite modificar por completo un figura
    painter: _HeaderCurvoPainter(),

    ),
    
      );
  }
}

class _HeaderCurvoPainter extends CustomPainter  {

  @override
  void paint(Canvas  canvas, Size size) {
      
    final lapiz = Paint(); //El paint es un lapiz o lapiz es un paint

    //propiedades
    lapiz.color = Color(0xff6515AAB); //eL # ES 0xxff y de hay el numero del color
    lapiz.style = PaintingStyle.fill; // .fill  son los bordes , stroke
    //lapiz.style = PaintingStyle.stroke; // .fill  son los bordes , stroke
    lapiz.strokeWidth = 20;

    final path = Path();

    //Dibujar con el path y el lapiz  ----------------- 
    path.lineTo(0, size.height * 0.20);
    //path.lineTo(size.width, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.5,size.height * 0.40, size.width, size.height * 0.20);
    path.lineTo(size.width, 0);

    

    canvas.drawPath(path, lapiz);

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {

    return true;
    
  }
}

class HeaderWave extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWavePainter(),
      ),
    );
  }
}

class _HeaderWavePainter extends CustomPainter {
  
  @override
  void paint(Canvas canvas, Size size) {
    
    final lapiz = new Paint();

    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // .fill .stroke
    lapiz.strokeWidth = 20;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.lineTo( 0, size.height * 0.25 );
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30, size.width * 0.5, size.height * 0.25 );
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25 );
    path.lineTo( size.width, 0 );

  


    canvas.drawPath(path, lapiz );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}


class HeaderWaveGradient extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWavePainterGradient(),
      ),
    );
  }
}

class _HeaderWavePainterGradient extends CustomPainter {
  
  @override
  void paint(Canvas canvas, Size size) {

    final Rect rect = new Rect.fromCircle(
      center: Offset(10.0, 55.0),
      radius: 180
    );

    final Gradient gradiente = new LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        Color(0xff7605E9),
        Color(0xffC012FF),
        Color(0xff6D05FA),
      ]
      );
    
    final lapiz = new Paint()..shader =  gradiente.createShader(rect);

    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // .fill .stroke
    lapiz.strokeWidth = 20;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.lineTo( 0, size.height * 0.25 );
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30, size.width * 0.5, size.height * 0.25 );
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25 );
    path.lineTo( size.width, 0 );

  


    canvas.drawPath(path, lapiz );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}


//Aqui inicia nuestro widget que implementamos en emergency_page
//Aqui va todo el header
class IconHeader extends StatelessWidget {

  final IconData icon;
  final String titulo;
  final String subtitulo;
  final Color color1;
  final Color color2;
  final String logotext;

  const IconHeader({
    this.logotext,
    @required this.icon,
    @required this.titulo, 
    @required this.subtitulo,
    this.color1 = Colors.grey,
    this.color2 = Colors.blueGrey,
    });

  @override
  Widget build(BuildContext context) {

    final Color  colorblanco = Colors.white.withOpacity(0.7);

    return Stack( //El stack me permite poner widget encima de otros
      children: [
        _IconHeaderBackground(
          color1: this.color1,
          color2: this.color2,
        ),

        Positioned(  //El positioned es para ubicar dentro de un stack
          top: -50,
          left: -62,
          child: FaIcon(this.icon, size: 235, color: Colors.white.withOpacity(0.2),),
        ),

        Column(
          children: [
            SizedBox(height: 68, width: double.infinity,),
            Text(this.logotext, style: TextStyle(fontSize: 30, color: colorblanco, fontWeight: FontWeight.bold),),
            SizedBox(height: 20),
            Text(this.subtitulo, style: TextStyle(fontSize: 20, color: colorblanco),),
            SizedBox(height: 20),
            Text(this.titulo, style: TextStyle(fontSize: 25, color: colorblanco, fontWeight: FontWeight.bold,)),
            SizedBox(height: 20),
             FaIcon(this.icon, size: 80, color: Colors.white,),

            
          ],
        )

      ],
    );
  }
}

class _IconHeaderBackground extends StatelessWidget {

  final Color color1;
  final Color color2;

  const _IconHeaderBackground({
    Key key, 
    @required this.color1, 
    @required this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 310,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(120) ),
        gradient: LinearGradient( //Gradiente 
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color> [
            this.color1,
            this.color2 
          ]
          )
      ),

    );
  }
}


