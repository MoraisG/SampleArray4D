object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 201
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 144
    ExplicitTop = 104
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 120
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Name'
    end
    object Button1: TButton
      Left = 16
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Add'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 120
      Top = 27
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object btnCheck: TButton
      Left = 16
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Check'
      TabOrder = 2
      OnClick = btnCheckClick
    end
  end
end
