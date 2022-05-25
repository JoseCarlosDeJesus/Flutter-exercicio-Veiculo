class Veiculo{
  String _placa;
  int _ano;
  String _cor;
  String _marca;
  String _modelo;

  Veiculo(this._placa,this._ano, this._cor, this._marca, this._modelo);

  String get placa => _placa;
  int get ano => _ano;
  String get cor => _cor;
  String get marca => _marca;
  String get modelo => _modelo;

  @override
  String toString() {
    return "$_placa/$_ano/$_cor/$_marca/$_modelo";
  }
}
