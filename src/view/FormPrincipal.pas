unit FormPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Plus.ApiArray4D,
  Plus.ApiArray4D.Interfaces, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    btnCheck: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
  private
    { Private declarations }
    FNomeArray: array of string;
  public
    { Public declarations }
    procedure adicionarNome;
    procedure verficarArray;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.adicionarNome;
var
  I, viCAPACIDADE: Integer;
begin

  if FNomeArray[0] <> '' then
  begin
    SetLength(FNomeArray, Length(FNomeArray) + 1);
    for I := 0 to High(FNomeArray) do
    begin
      if FNomeArray[I] = '' then
      begin
        FNomeArray[I] := self.Edit1.Text;
      end;
    end;
  end
  else
    FNomeArray[0] := self.Edit1.Text;

  self.Edit1.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  self.adicionarNome;
end;

procedure TForm1.btnCheckClick(Sender: TObject);
begin
  self.verficarArray;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SetLength(FNomeArray, 1);
end;

procedure TForm1.verficarArray;
var
  FValidador: iApiArray4D;
begin
  FValidador := TApiArray.New;
  if FValidador.ApiArray(FNomeArray).Contains(Edit1.Text) then
  begin
    ShowMessage(Edit1.Text + ' está no array');
  end;
end;

end.
