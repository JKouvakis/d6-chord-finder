unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, jpeg, StdCtrls, Buttons, Grids, StrUtils,
  ValEdit, ComCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Image1: TImage;
    GroupBox4: TGroupBox;
    Button6: TButton;
    Button3: TButton;
    Button4: TButton;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button5: TButton;
    ih1: TImage;
    ih2: TImage;
    im1: TImage;
    im2: TImage;
    im3: TImage;
    GroupBox6: TGroupBox;
    RadioButton1: TRadioButton;
    ListBox2: TListBox;
    ListBox1: TListBox;
    RadioButton2: TRadioButton;
    ListBox3: TListBox;
    List1: TStringGrid;
    crd05: TImage;
    crd04: TImage;
    crd03: TImage;
    crd02: TImage;
    crd01: TImage;
    crd00: TImage;
    crd15: TImage;
    crd14: TImage;
    crd13: TImage;
    crd12: TImage;
    crd11: TImage;
    crd10: TImage;
    crd25: TImage;
    crd24: TImage;
    crd23: TImage;
    crd22: TImage;
    crd21: TImage;
    crd20: TImage;
    crd35: TImage;
    crd34: TImage;
    crd33: TImage;
    crd32: TImage;
    crd31: TImage;
    crd30: TImage;
    crd45: TImage;
    crd44: TImage;
    crd43: TImage;
    crd42: TImage;
    crd41: TImage;
    crd40: TImage;
    crd55: TImage;
    crd54: TImage;
    crd53: TImage;
    crd52: TImage;
    crd51: TImage;
    crd50: TImage;
    crd65: TImage;
    crd64: TImage;
    crd63: TImage;
    crd62: TImage;
    crd61: TImage;
    crd60: TImage;
    crd75: TImage;
    crd74: TImage;
    crd73: TImage;
    crd72: TImage;
    crd71: TImage;
    crd70: TImage;
    crd85: TImage;
    crd84: TImage;
    crd83: TImage;
    crd82: TImage;
    crd81: TImage;
    crd80: TImage;
    crd95: TImage;
    crd94: TImage;
    crd93: TImage;
    crd92: TImage;
    crd91: TImage;
    crd90: TImage;
    crda5: TImage;
    crda4: TImage;
    crda3: TImage;
    crda2: TImage;
    crda1: TImage;
    crda0: TImage;
    crdb5: TImage;
    crdb4: TImage;
    crdb3: TImage;
    crdb2: TImage;
    crdb1: TImage;
    crdb0: TImage;
    crdc5: TImage;
    crdc4: TImage;
    crdc3: TImage;
    crdc2: TImage;
    crdc1: TImage;
    crdc0: TImage;
    crdd5: TImage;
    crdd4: TImage;
    crdd3: TImage;
    crdd2: TImage;
    crdd1: TImage;
    crdd0: TImage;
    crde5: TImage;
    crde4: TImage;
    crde3: TImage;
    crde2: TImage;
    crde1: TImage;
    crde0: TImage;
    crdf5: TImage;
    crdf4: TImage;
    crdf3: TImage;
    crdf2: TImage;
    crdf1: TImage;
    crdf0: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure ListBox3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  chord,nowcrd1,nowcrd2,nowcrd3: string;

implementation

uses cordfinder;

{$R *.dfm}

function MessageDlg(const Title : string; const wdth : integer; const Msg : string; F : TFont;  DlgType : TMsgDlgType;
  Buttons : TMsgDlgButtons; HelpCtx : Longint) : Integer;
var
 I : integer;
begin

  with CreateMessageDialog(Msg, DlgType, Buttons) do
  begin
    try
      HelpContext := HelpCtx;
      for I := 0 to ComponentCount -1 do
      begin
        if (Components[I] is TLabel) then
          TLabel(Components[I]).Font := F;
      end;
    Caption:=Title;
    Width:=Wdth;
    Result := ShowModal ;
    finally
      Free ;
    end;
  end;
end;

procedure clearstringgrd();
begin
  Form1.List1.RowCount:=1;
  Form1.List1.Cells[0,0]:='';
  Form1.List1.Cells[1,0]:='';
  Form1.List1.Cells[2,0]:='';
end;

procedure varations();
var
  i:integer;
begin
  if nowcrd1='' then
    begin
      nowcrd1:=Form1.List1.Cells[0,0];
      nowcrd2:=Form1.List1.Cells[1,0];
      nowcrd3:=Form1.List1.Cells[2,0];
    end
  else
    begin
      i:=0;
      while i < Form1.List1.RowCount do
        begin
          if nowcrd1=Form1.List1.Cells[0,i] then
            if i <> Form1.List1.RowCount -1 then
              begin
                nowcrd1:=Form1.List1.Cells[0,i+1];
                nowcrd2:=Form1.List1.Cells[1,i+1];
                nowcrd3:=Form1.List1.Cells[2,i+1];
                i:= FOrm1.List1.RowCount;
              end
            else
              begin
                nowcrd1:=Form1.List1.Cells[0,0];
                nowcrd2:=Form1.List1.Cells[1,0];
                nowcrd3:=Form1.List1.Cells[2,0];
                i:= FOrm1.List1.RowCount;
              end;
          i:=i+1;
        end
    end;
//  ShowMessage(nowcrd1);
end;

procedure displaychord();
var
  i,j:integer;
  a,name,k,l:string;
  bool:boolean;
begin
  varations();
  bool:=false;
  for i:=0 to 5 do
    for j:=0 to 9 do
      TImage(Form1.FindComponent('crd' + IntToStr(j)+ IntToStr(i))).Picture.Assign(nil);
  for i:=0 to 5 do
    begin
      TImage(Form1.FindComponent('crda' + IntToStr(i))).Picture.Assign(nil);
      TImage(Form1.FindComponent('crdb' + IntToStr(i))).Picture.Assign(nil);
      TImage(Form1.FindComponent('crdc' + IntToStr(i))).Picture.Assign(nil);
      TImage(Form1.FindComponent('crdd' + IntToStr(i))).Picture.Assign(nil);
      TImage(Form1.FindComponent('crde' + IntToStr(i))).Picture.Assign(nil);
      TImage(Form1.FindComponent('crdf' + IntToStr(i))).Picture.Assign(nil);
    end;
//  showmessage(nowcrd2);

  for i:=1 to 6 do
    begin
      a:=midstr(nowcrd2,i,1);
      if a='1' then
        TImage(Form1.FindComponent('crd0' + IntToStr(i-1))).Picture := Form1.ih2.Picture;
      if a='2' then
        begin
          name:='crd' + midstr(nowcrd3,i,1) + IntToStr(i-1);
          TImage(Form1.FindComponent(name)).Picture := Form1.im3.Picture;
          bool:=true;
          k:=midstr(nowcrd3,i,1);
        end;
      if a='3' then
        begin
          name:='crd' + midstr(nowcrd3,i,1) + IntToStr(i-1);
          TImage(Form1.FindComponent(name)).Picture := Form1.im1.Picture;
          bool:=false;
        end;
      if a='0' then
        begin
          if bool=true then
            begin
              name:='crd' + k + IntToStr(i-1);
              TImage(Form1.FindComponent(name)).Picture := Form1.im2.Picture;
            end;
          l:=midstr(nowcrd3,i,1);
          if k<>l then
            begin
              name:='crd' + midstr(nowcrd3,i,1) + IntToStr(i-1);
              TImage(Form1.FindComponent(name)).Picture := Form1.ih1.Picture;
            end;
        end;
    end
end;

procedure stringgrid();
var
  a,b,c:string;
begin
  Form1.List1.RowCount:=1;
  Form1.List1.Cells[0,0]:='';
  Form1.List1.Cells[1,0]:='';
  Form1.List1.Cells[2,0]:='';
//  Form1.List1.Cells[0,0]:='';
  chord:=chord+'$';
  while length(chord)>0 do
    begin
      a:=leftstr(chord,pos('$',chord)-1);
      chord:=midstr(chord,pos('$',chord)+1,length(chord));
      if a<>'' then
        begin
          if Form1.List1.Cells[0,Form1.List1.RowCount-1] <> '' then
            Form1.List1.RowCount := Form1.List1.RowCount+1;
          b:=midstr(a,pos('=',a)+1,length(a));
          c:=midstr(b,7,length(b));
          b:=leftstr(b,6);
          a:=leftstr(a,pos('=',a)-1);
          Form1.List1.Cells[0,Form1.List1.RowCount-1]:=a;
          Form1.List1.Cells[1,Form1.List1.RowCount-1]:=b;
          Form1.List1.Cells[2,Form1.List1.RowCount-1]:=c;
        end
    end;
end;

procedure chordchange();
var
  l:string;
begin
  if Form1.RadioButton1.Checked = true then
    begin
      l:=Form1.ListBox1.Items.Strings[Form1.ListBox1.ItemIndex];
      if Form1.ListBox2.ItemIndex=0 then
        l:=l
      else if Form1.ListBox2.ItemIndex=1 then
        l:=l+'m'
      else
        l:=l+Form1.ListBox2.Items.Strings[Form1.ListBox2.ItemIndex];
    end
  else
    begin
      l:=Form1.ListBox3.Items.Strings[Form1.ListBox3.ItemIndex];
    end;
  chord:=findcrd(l);
  stringgrid();
  displaychord();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  If Button6.Caption = 'Left Handed' then
    begin
//      Image1.Visible:=False;
//      Image2.Visible:=True;
      Button6.Caption := 'Right Handed'
    end
  else
    begin
//     Image1.Visible:=True;
//      Image2.Visible:=False;
      Button6.Caption := 'Left Handed'
    end;
  Form1.SetFocus;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  mesg:string;
  F : TFont;
begin
  mesg:=reverse(Edit1.Text,Edit2.Text,Edit3.Text,Edit4.Text,Edit5.Text,Edit6.Text);

  F := TFont.Create;
  F.Size := 10;
  F.Name := 'Courier New';
  F.Style := [ fsBold ];
  Messagedlg('Reverse Chord Find', 200, mesg, F, mtCustom, [mbOk], 0);
  F.Free;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
    nowcrd1 := '';
    initchords('0');
    RadioButton1.Checked:=true;
    ListBox1.ItemIndex:=0;
    ListBox2.ItemIndex:=0;
    ListBox3.ItemIndex:=0;
    chordchange();
end;

procedure TForm1.ListBox2Click(Sender: TObject);
begin
  RadioButton1.Checked := True;
  clearstringgrd();
  nowcrd1 := '';
  chordchange();
end;

procedure TForm1.ListBox3Click(Sender: TObject);
begin
  RadioButton2.Checked := True;
  clearstringgrd();
  nowcrd1 := '';
  chordchange();
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
//  varations();
  displaychord();
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  a:array[0..5] of string;
  b:array[0..11]of string;
  l:array[1..6]of integer;
  temp1,mesg,char:string;
  i,j:integer;
  F : TFont;
begin
  a[0]:='E';  a[1]:='A';  a[2]:='D';
  a[3]:='G';  a[4]:='B';  a[5]:='E';

  b[0]:='C';     b[1]:='C#/Db';  b[2]:='D';
  b[3]:='D#/Eb'; b[4]:='E';      b[5]:='F';
  b[6]:='F#/Gb'; b[7]:='G';      b[8]:='G#/Ab';
  b[9]:='A';     b[10]:='A#/Bb'; b[11]:='B';

  l[1]:=4;  l[2]:=9;  l[3]:=2;
  l[4]:=7;  l[5]:=11; l[6]:=4;

  temp1:=ReverseString(nowcrd1);
  temp1:=midstr(temp1,pos('-',temp1)+1,length(temp1));
  temp1:=ReverseString(temp1);
  mesg:='Chord Name :   ' + temp1 +#13;
  mesg:=mesg+'---------------------------------------------'+#13;
  temp1:='';
  for i:=1 to length(nowcrd2) do
    begin
      char:=midstr(nowcrd2,i,1);
      if char='1' then
        temp1:=temp1+'X    '
      else
        temp1:=temp1+a[i-1]+'    ';
    end;
  temp1:=trim(temp1);
  mesg:=mesg+'String :  ' + temp1 + ' ' + #13;
  temp1:='';
  for i:=1 to length(nowcrd3) do
    begin
      char:=midstr(nowcrd3,i,1);
      temp1:=temp1+char+'    ';
    end;
  temp1:=trim(temp1);
  mesg:=mesg+'Fret :    ' + temp1 +#13;
  temp1:='';
  for i:=1 to length(nowcrd3) do
    begin
      if midstr(nowcrd2,i,1)='1' then
        temp1:=temp1+'-    '
      else
        begin
          char:=midstr(nowcrd3,i,1);
          j:=0;
          if ((char='0') or (char='1') or (char='2') or (char='3') or
           (char='4') or (char='5') or (char='6') or (char='7') or
           (char='8') or (char='9')) then
            j:=strtoint(char)
          else if char='a' then
            j:=10
          else if char='b' then
            j:=1
          else if char='c' then
            j:=12
          else if char='d' then
            j:=13
          else if char='e' then
            j:=14
          else if char='f' then
            j:=15;
          j:=l[i]+j;
          while j>11 do
            j:=j-12;
          char:=b[j];
          temp1:=temp1+char+'    ';
        end;
    end;
  mesg:=mesg+'Note :    ' + temp1 +#13;

  F := TFont.Create;
  F.Size := 10;
  F.Name := 'Courier New';
  F.Style := [ fsBold ];
  // Specify other font settings...
//  DialogForm.caption:='Chord Informations';
  Messagedlg('Chord Informations', 360, mesg, F, mtCustom, [mbOk], 0);
  F.Free;
//  Mesg(Pchar(mesg), 'Chord Informations');
end;

end.
