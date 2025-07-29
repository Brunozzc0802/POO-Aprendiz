unit uClasse;

interface

  //Abstração\\
  //Encapsulamento\\
  type TPersonagem = class (TObject)
  private
    Nome:String;
    Vida:Integer;
    Genero:String;
    Nivel:Integer;
    Dano:Integer;
    Defesa:Integer;
  public
  //Getter & Setter
    function getDano:Integer;
    procedure setDano(ADano:Integer);
    function getDefesa:integer;
    procedure setDefesa(ADefesa:Integer);
    function getVida:Integer;
    procedure setVida(AVida:Integer);
    constructor Create (aDano,aDefesa,aVida:Integer);
  end;

  //herença\\
  type TPlayer = class (TPersonagem)
    NickName:String;
    Experiencia:Double;
  end;

  //boss\\
  type TBoss = class (TPersonagem)

  end;


implementation

uses System.SysUtils;

{ TPersonagem }

constructor TPersonagem.Create(aDano, aDefesa, aVida: Integer);

  begin
    Dano := aDano;
    Defesa := aDefesa;
  end;

function TPersonagem.getDano: Integer;

  begin

    Result := Self.Dano + Self.Nivel;

  end;

function TPersonagem.getDefesa: integer;

  begin

    Result := Self.Defesa + Self.Nivel + 10;
      
  end;

function TPersonagem.getVida: Integer;

  begin

    Result := Self.Vida + Self.Nivel + 10;
    
  end;

procedure TPersonagem.setDano(ADano: Integer);
  begin

    if ADano < 1 then begin 
     raise Exception.Create('O Dano tem que ser maior que zero.');
    end;
    Self.Dano := ADano;
  end;
procedure TPersonagem.setDefesa(ADefesa: Integer);

  begin

    if ADefesa < 1 then begin
      raise Exception.Create('A defesa deve ser maior que zero.');
    end;
    Self.Defesa := ADefesa;
  end;

procedure TPersonagem.setVida(AVida: Integer);

  begin

    if AVida < 1 then begin
      raise Exception.Create('A vida deve ser maior que zero.');
    end;
    Self.Vida := AVida;

  end;

end.
