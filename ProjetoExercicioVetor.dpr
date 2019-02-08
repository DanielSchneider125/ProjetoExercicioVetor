program ProjetoExercicioVetor;

uses
  Vcl.Forms,
  ExercicioVetor in 'ExercicioVetor.pas' {FExercicioVetor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFExercicioVetor, FExercicioVetor);
  Application.Run;
end.
