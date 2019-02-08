unit ExercicioVetor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TVetor = array of Currency;

  TFExercicioVetor = class(TForm)
    PnFundo: TPanel;
    pnValor: TPanel;
    EdValor: TEdit;
    LbDescricao: TLabel;
    PnPergunta: TPanel;
    gbSoma: TGroupBox;
    BtPares: TButton;
    BtImpares: TButton;
    procedure EdValorKeyPress(Sender: TObject; var Key: Char);
    procedure EdValorExit(Sender: TObject);
    procedure BtParesClick(Sender: TObject);
    procedure BtImparesClick(Sender: TObject);
  private
    function AdicionarVetor(Valor: Integer): TVetor;
  public
    { Public declarations }
  end;

var
  FExercicioVetor: TFExercicioVetor;

implementation

{$R *.dfm}

function TFExercicioVetor.AdicionarVetor(Valor: Integer): TVetor;
var
  I: Integer;
begin
  SetLength(Result, 10);
  for I := 0 to High(Result) do
  begin
    if (I + 1) mod 3 = 0 then
      Result[I] := (I + 1) * 0.3 * Valor
    else
      Result[I] := (I + 1) * 0.1 * Valor
  end;

end;

procedure TFExercicioVetor.BtImparesClick(Sender: TObject);
var
  Vetor: TVetor;
  I: Integer;
  Soma: Currency;
begin
  Soma := 0;
  Vetor := AdicionarVetor(StrToInt(EdValor.Text));

  for I := 0 to High(Vetor) do
  begin
    if not ((I + 1) mod 2 = 0) then
      Soma := Soma + Vetor[I];
  end;

  MessageDlg(CurrToStr(Soma), mtCustom, [mbClose], 0);
end;

procedure TFExercicioVetor.BtParesClick(Sender: TObject);
var
  Vetor: TVetor;
  I: Integer;
  Soma: Currency;
begin
  Soma := 0;
  Vetor := AdicionarVetor(StrToInt(EdValor.Text));

  for I := 0 to High(Vetor) do
  begin
    if ((I + 1) mod 2 = 0) then
      Soma := Soma + Vetor[I];
  end;

  MessageDlg(CurrToStr(Soma), mtCustom, [mbClose], 0);
end;

procedure TFExercicioVetor.EdValorExit(Sender: TObject);
begin
  if not (StrToInt(EdValor.Text) mod 10 = 0) then
  begin
    MessageDlg('O valor informado deve ser múltiplo de 10.', mtCustom, [mbClose], 0);
    EdValor.SetFocus;
    Exit;
  end;

  if StrToInt(EdValor.Text) > 1000 then
  begin
    MessageDlg('O valor informado deve ser menor ou igual a 1000.', mtCustom, [mbClose], 0);
    EdValor.SetFocus;
    Exit;
  end;

  if StrToInt(EdValor.Text) < 100 then
  begin
    MessageDlg('O valor informado deve ser maior que 100.', mtCustom, [mbClose], 0);
    EdValor.SetFocus;
    Exit;
  end;

end;

procedure TFExercicioVetor.EdValorKeyPress(Sender: TObject; var Key: Char);

  function Valida_Numero: Char;
  begin
    if not (Key in ['0'..'9', Chr(8)]) then
      Key := #0;
    Result := Key;
  end;

begin
  Key := Valida_Numero;
end;

end.

