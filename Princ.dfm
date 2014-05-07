object FormPrinc: TFormPrinc
  Left = 0
  Top = 0
  Caption = 'Class Test'
  ClientHeight = 365
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  DesignSize = (
    348
    365)
  PixelsPerInch = 96
  TextHeight = 13
  object ImgForm: TImage
    Left = 8
    Top = 8
    Width = 251
    Height = 349
    Anchors = [akLeft, akTop, akRight, akBottom]
    ExplicitHeight = 246
  end
  object BtnInstancia: TButton
    Left = 265
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Instancia Box'
    TabOrder = 0
    OnClick = BtnInstanciaClick
  end
  object BtnDesaloca: TButton
    Left = 265
    Top = 39
    Width = 75
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Desaloca Box'
    TabOrder = 1
    OnClick = BtnDesalocaClick
  end
  object BtnMostra: TButton
    Left = 265
    Top = 70
    Width = 75
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Mostra'
    TabOrder = 2
    OnClick = BtnMostraClick
  end
  object BtnEsconde: TButton
    Left = 265
    Top = 101
    Width = 75
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Esconde'
    TabOrder = 3
    OnClick = BtnEscondeClick
  end
  object BtnLeft: TButton
    Left = 265
    Top = 132
    Width = 75
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Left'
    TabOrder = 4
    OnClick = BtnLeftClick
  end
  object BtnRight: TButton
    Left = 265
    Top = 163
    Width = 75
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Right'
    TabOrder = 5
    OnClick = BtnRightClick
  end
  object BtnTop: TButton
    Left = 265
    Top = 194
    Width = 75
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Top'
    TabOrder = 6
    OnClick = BtnTopClick
  end
  object BtnBottom: TButton
    Left = 265
    Top = 225
    Width = 75
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Bottom'
    TabOrder = 7
    OnClick = BtnBottomClick
  end
  object BtnHeight: TButton
    Left = 265
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Height'
    TabOrder = 8
    OnClick = BtnHeightClick
  end
end
