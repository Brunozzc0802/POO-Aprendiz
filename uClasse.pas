unit uClasse;

interface

  //Abstração\\
  //Encapsulamento\\
  type TPersonagem = class (TObject)
    Nome:String;
    Vida:Integer;
    Genero:String;
    Nivel:Integer;
    Dano:Integer;
    Defesa:Integer;

    constructor Create (aDano,aDefesa:Integer);

  end;

  //herença\\
  type TPlayer = class (TPersonagem)
    NickName:String;
    Experiencia:double;
  end;

  //boss\\
  type TBoss = class (TPersonagem)

  end;


implementation

{ TPersonagem }

constructor TPersonagem.Create(aDano, aDefesa: Integer);

  begin
    Dano := aDano;
    Defesa := aDefesa;
  end;

end.
