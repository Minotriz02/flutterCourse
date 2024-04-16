void main() async{
  print('inicio del programa');
  
  try{
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print('exito: $value');
  } on Exception catch(err) {
    print('Tenemos una Exception: $err');
  } catch (err){
    print('Algo paso: $err');
  } finally {
    print('Fin del try y catch');
  }
  
  
  print('fin del programa');
}

Future<String> httpGet(String url) async{
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('no hay parametros en el URL');
  //throw 'Error en la peticion';
  //return 'Tenemos un valor de la peticion';
}