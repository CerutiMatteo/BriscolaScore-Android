unit uMainUnit;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.EditBox, FMX.SpinBox, FMX.Controls.Presentation, FMX.Edit, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.StdCtrls;

type
  TMainForm = class(TForm)
    rcthome: TRectangle;
    edtp1: TEdit;
    edtp2: TEdit;
    edtp3: TEdit;
    edtp4: TEdit;
    edtp5: TEdit;
    spnbxp1: TSpinBox;
    spnbxp2: TSpinBox;
    spnbxp3: TSpinBox;
    spnbxp4: TSpinBox;
    spnbxp5: TSpinBox;
    spnbxp6: TSpinBox;
    edtp6: TEdit;
    rctvalid: TRectangle;
    mmostorico: TMemo;
    lblchimante: TLabel;
    lblbtnchiamato: TLabel;
    btnp1chiama: TButton;
    btnp2chiama: TButton;
    btnp3chiama: TButton;
    btnp4chiama: TButton;
    btnp5chiama: TButton;
    btnp6chiama: TButton;
    btnp1chiamato: TButton;
    btnp2chiamato: TButton;
    btnp3chiamato: TButton;
    btnp4chiamato: TButton;
    btnp5chiamato: TButton;
    btnp6chiamato: TButton;
    btnvince: TButton;
    btnperde: TButton;
    rcttastierino: TRectangle;
    rcttastierino1: TRectangle;
    rcttastierino2: TRectangle;
    rcttastierino3: TRectangle;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    procedure spnbxp1Change(Sender: TObject);
    procedure spnbxp2Change(Sender: TObject);
    procedure spnbxp3Change(Sender: TObject);
    procedure spnbxp4Change(Sender: TObject);
    procedure spnbxp5Change(Sender: TObject);
    procedure spnbxp6Change(Sender: TObject);
    procedure btnp1chiamaClick(Sender: TObject);
    procedure btnp2chiamaClick(Sender: TObject);
    procedure btnp3chiamaClick(Sender: TObject);
    procedure btnp4chiamaClick(Sender: TObject);
    procedure btnp5chiamaClick(Sender: TObject);
    procedure btnp6chiamaClick(Sender: TObject);
    procedure btnp1chiamatoClick(Sender: TObject);
    procedure btnp2chiamatoClick(Sender: TObject);
    procedure btnp3chiamatoClick(Sender: TObject);
    procedure btnp4chiamatoClick(Sender: TObject);
    procedure btnp5chiamatoClick(Sender: TObject);
    procedure btnp6chiamatoClick(Sender: TObject);
    procedure btnvinceClick(Sender: TObject);
    procedure btnperdeClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
    finale: string;
    chiamante: string;
    chiamato: string;
    punti: string;
    procedure printResults;
  public
    { Public declarations }
  end;

var
  mainForm: TMainForm;

implementation

{$R *.fmx}

procedure TMainForm.btn1Click(Sender: TObject);
begin
  punti := btn1.text;
  printResults;
end;

procedure TMainForm.btn2Click(Sender: TObject);
begin
  punti := btn2.text;
  printResults;
end;

procedure TMainForm.btn3Click(Sender: TObject);
begin
  punti := btn3.text;
  printResults;
end;

procedure TMainForm.btn4Click(Sender: TObject);
begin
  punti := btn4.text;
  printResults;
end;

procedure TMainForm.btn5Click(Sender: TObject);
begin
  punti := btn5.text;
  printResults;
end;

procedure TMainForm.btn6Click(Sender: TObject);
begin
  punti := btn6.text;
  printResults;
end;

procedure TMainForm.btn7Click(Sender: TObject);
begin
  punti := btn7.text;
  printResults;
end;

procedure TMainForm.btnp1chiamaClick(Sender: TObject);
begin
  chiamante := UpperCase(edtp1.text);
end;

procedure TMainForm.btnp1chiamatoClick(Sender: TObject);
begin
  chiamato := lowercase(edtp1.text);
end;

procedure TMainForm.btnp2chiamaClick(Sender: TObject);
begin
    chiamante := UpperCase(edtp2.text);
end;

procedure TMainForm.btnp2chiamatoClick(Sender: TObject);
begin
  chiamato := lowercase(edtp2.text);
end;

procedure TMainForm.btnp3chiamaClick(Sender: TObject);
begin
  chiamante := UpperCase(edtp3.text);
end;

procedure TMainForm.btnp3chiamatoClick(Sender: TObject);
begin
  chiamato := lowercase(edtp3.text);
end;

procedure TMainForm.btnp4chiamaClick(Sender: TObject);
begin
  chiamante := UpperCase(edtp4.text);
end;

procedure TMainForm.btnp4chiamatoClick(Sender: TObject);
begin
  chiamato := lowercase(edtp4.text);
end;

procedure TMainForm.btnp5chiamaClick(Sender: TObject);
begin
  chiamante := UpperCase(edtp5.text);
end;

procedure TMainForm.btnp5chiamatoClick(Sender: TObject);
begin
  chiamato := lowercase(edtp5.text);
end;

procedure TMainForm.btnp6chiamaClick(Sender: TObject);
begin
  chiamante := UpperCase(edtp6.text);
end;

procedure TMainForm.btnp6chiamatoClick(Sender: TObject);
begin
  chiamato := lowercase(edtp6.text);
end;

procedure TMainForm.btnperdeClick(Sender: TObject);
begin
  finale := ' Perde';
  rcttastierino.Visible := True;
end;

procedure TMainForm.btnvinceClick(Sender: TObject);
begin
  finale := ' Vince';
  rcttastierino.Visible := True;
end;

procedure TMainForm.printResults;
begin
  mmostorico.Lines.add(finale+': '+chiamante+'+'+chiamato+ ' di '+punti+'''');
  rcttastierino.Visible := False;
end;

procedure TMainForm.spnbxp1Change(Sender: TObject);
begin
  if (Strtoint(spnbxp1.Text)+Strtoint(spnbxp2.Text)+Strtoint(spnbxp3.Text)+Strtoint(spnbxp4.Text)+Strtoint(spnbxp5.Text)+Strtoint(spnbxp6.Text) <> 0) then
    rctvalid.fill.Color := TAlphaColors.Red
  else
    rctvalid.fill.Color := TAlphaColors.green;
end;

procedure TMainForm.spnbxp2Change(Sender: TObject);
begin
  if (Strtoint(spnbxp1.Text)+Strtoint(spnbxp2.Text)+Strtoint(spnbxp3.Text)+Strtoint(spnbxp4.Text)+Strtoint(spnbxp5.Text)+Strtoint(spnbxp6.Text) <> 0) then
    rctvalid.fill.Color := TAlphaColors.Red
  else
    rctvalid.fill.Color := TAlphaColors.green;
end;

procedure TMainForm.spnbxp3Change(Sender: TObject);
begin
  if (Strtoint(spnbxp1.Text)+Strtoint(spnbxp2.Text)+Strtoint(spnbxp3.Text)+Strtoint(spnbxp4.Text)+Strtoint(spnbxp5.Text)+Strtoint(spnbxp6.Text) <> 0) then
    rctvalid.fill.Color := TAlphaColors.Red
  else
    rctvalid.fill.Color := TAlphaColors.green;
end;

procedure TMainForm.spnbxp4Change(Sender: TObject);
begin
  if (Strtoint(spnbxp1.Text)+Strtoint(spnbxp2.Text)+Strtoint(spnbxp3.Text)+Strtoint(spnbxp4.Text)+Strtoint(spnbxp5.Text)+Strtoint(spnbxp6.Text) <> 0) then
    rctvalid.fill.Color := TAlphaColors.Red
  else
    rctvalid.fill.Color := TAlphaColors.green;
end;

procedure TMainForm.spnbxp5Change(Sender: TObject);
begin
  if (Strtoint(spnbxp1.Text)+Strtoint(spnbxp2.Text)+Strtoint(spnbxp3.Text)+Strtoint(spnbxp4.Text)+Strtoint(spnbxp5.Text)+Strtoint(spnbxp6.Text) <> 0) then
    rctvalid.fill.Color := TAlphaColors.Red
  else
    rctvalid.fill.Color := TAlphaColors.green;
end;

procedure TMainForm.spnbxp6Change(Sender: TObject);
begin
  if (Strtoint(spnbxp1.Text)+Strtoint(spnbxp2.Text)+Strtoint(spnbxp3.Text)+Strtoint(spnbxp4.Text)+Strtoint(spnbxp5.Text)+Strtoint(spnbxp6.Text) <> 0) then
    rctvalid.fill.Color := TAlphaColors.Red
  else
    rctvalid.fill.Color := TAlphaColors.green;
end;

end.
