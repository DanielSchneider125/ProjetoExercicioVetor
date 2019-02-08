object FExercicioVetor: TFExercicioVetor
  Left = 0
  Top = 0
  Caption = 'Vetor'
  ClientHeight = 242
  ClientWidth = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PnFundo: TPanel
    Left = 0
    Top = 0
    Width = 290
    Height = 242
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 112
    ExplicitTop = 88
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnValor: TPanel
      Left = 1
      Top = 1
      Width = 288
      Height = 65
      Align = alTop
      TabOrder = 0
      object LbDescricao: TLabel
        Left = 24
        Top = 16
        Width = 237
        Height = 13
        Caption = 'Informe um valor m'#250'ltiplo de 10 entre 100 e 1000'
      end
      object EdValor: TEdit
        Left = 82
        Top = 35
        Width = 121
        Height = 21
        Alignment = taRightJustify
        TabOrder = 0
        Text = '100'
        OnExit = EdValorExit
        OnKeyPress = EdValorKeyPress
      end
    end
    object PnPergunta: TPanel
      Left = 1
      Top = 66
      Width = 288
      Height = 175
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 72
      ExplicitTop = 168
      ExplicitWidth = 185
      ExplicitHeight = 41
      object gbSoma: TGroupBox
        Left = 1
        Top = 1
        Width = 286
        Height = 173
        Align = alClient
        Caption = 'Qual soma deseja saber?'
        TabOrder = 0
        ExplicitLeft = 50
        ExplicitTop = 72
        ExplicitWidth = 185
        ExplicitHeight = 73
        object BtPares: TButton
          Left = 66
          Top = 42
          Width = 75
          Height = 25
          Caption = 'Pares'
          TabOrder = 0
          OnClick = BtParesClick
        end
        object BtImpares: TButton
          Left = 147
          Top = 42
          Width = 75
          Height = 25
          Caption = 'Impares'
          TabOrder = 1
          OnClick = BtImparesClick
        end
      end
    end
  end
end
