unit mainunit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, IBConnection, SQLDB, SQLDBLib, DB, Forms, Controls,
  Graphics, Dialogs, ComCtrls, ActnList, StdCtrls, Buttons, ExtCtrls, DBGrids,
  DBCtrls, DBActns, DBDateTimePicker, RTTIGrids, IBDatabase, IBSQL, IBTable,
  IBCustomDataSet, IBQuery, IBArrayGrid, Types;

type

  { TForm1 }

  TForm1 = class(TForm)
    AccountIn: TStringField;
    AccountOut: TStringField;
    IBQContSal: TIBQuery;
    IBQContSalACCOUNT: TIBStringField;
    IBQContSalACCOUNT_ID: TIBIntegerField;
    IBQContSalTOTAL: TIBBCDField;
    IBQStoreSal: TIBQuery;
    IBQStoreSalACCOUNT_ID: TIBIntegerField;
    IBQStoreSalGOODS_ID: TIBIntegerField;
    IBQStoreSalGOOD_NAME: TIBStringField;
    IBQStoreSalPCS: TIBBCDField;
    IBQStoreSalSTORE_NAME: TIBStringField;
    IBTabGoodsID: TIBIntegerField;
    IBTabSGoodsID: TIBIntegerField;
    ShowContSal: TAction;
    DBGrid8: TDBGrid;
    DSContSal: TDataSource;
    ShowStoreSal: TAction;
    DBGrid7: TDBGrid;
    DSStoreSal: TDataSource;
    ShowTabSGoods: TAction;
    ShowConragents: TAction;
    ShowProducts: TAction;
    CoolBar4: TCoolBar;
    MakePayment: TAction;
    DBEdit12: TDBEdit;
    DBEdPrice: TDBEdit;
    DBGrid5: TDBGrid;
    DBText1: TDBText;
    PaymentSum: TEdit;
    GenGoods_ID: TDBLookupComboBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    MakeDiscount: TAction;
    AddMove: TAction;
    AddSell: TAction;
    DBEdit2: TDBEdit;
    DBOpsDiscount: TDBEdit;
    IBTabGen: TIBTable;
    IBTabGenACCOUNTS_IN: TIBIntegerField;
    IBTabGenACCOUNTS_OUT: TIBIntegerField;
    IBTabGenD_DATE: TIBDateTimeField;
    IBTabGenGOODS_ID: TIBIntegerField;
    IBTabGenID: TIBIntegerField;
    IBTabGenOPERATION_ID: TIBIntegerField;
    IBTabGenPCS: TIBBCDField;
    IBTabGenPRICE: TIBBCDField;
    IBTabGenS_OPERATION_ID: TIBIntegerField;
    IBTabGenTOTAL: TIBBCDField;
    Label16: TLabel;
    Panel7: TGroupBox;
    PayApplyFilter: TAction;
    AddPayment: TAction;
    GenApplyFilter: TAction;
    AllOperations: TAction;
    DBOpsDate: TDBDateTimePicker;
    DBOpsID: TDBLookupComboBox;
    IBTabOpsS_OPERATION_ID: TIBIntegerField;
    Label15: TLabel;
    DBOpsACCOUNTS_OUT: TDBLookupComboBox;
    DBOpsACCOUNTS_IN: TDBLookupComboBox;
    DSGen: TDataSource;
    DBGrid2: TDBGrid;
    DBLookupComboBox2: TDBLookupComboBox;
    DSOps: TDataSource;
    IBTabAccsS_ACCOUNT_ID: TIBIntegerField;
    IBTabOps: TIBTable;
    IBTabOpsACCOUNTS_IN: TIBIntegerField;
    IBTabOpsACCOUNTS_OUT: TIBIntegerField;
    IBTabOpsDISCOUNT: TIBBCDField;
    IBTabOpsD_DATE: TIBDateTimeField;
    IBTabOpsID: TIBIntegerField;
    IBTabOpsSUBTOTAL: TIBBCDField;
    IBTabOpsTOTAL: TIBBCDField;
    Label13: TLabel;
    Label14: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    OperationName: TStringField;
    Operations: TAction;
    AddSuply: TAction;
    References: TAction;
    AddCategory: TAction;
    CoolBar1: TCoolBar;
    CoolBar3: TCoolBar;
    GoodsFilter: TAction;
    AddGeneral: TAction;
    ActionList1: TActionList;
    ActionList2: TActionList;
    CoolBar2: TCoolBar;
    DataSetCancel1: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetFirst1: TDataSetFirst;
    DataSetInsert1: TDataSetInsert;
    DataSetLast1: TDataSetLast;
    DataSetNext1: TDataSetNext;
    DataSetPost1: TDataSetPost;
    DataSetPrior1: TDataSetPrior;
    DataSetRefresh1: TDataSetRefresh;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit9: TDBEdit;
    DBGrid6: TDBGrid;
    DSAccs: TDataSource;
    DSSOps: TDataSource;
    DBEdit8: TDBEdit;
    DBGrid4: TDBGrid;
    DSSAccs: TDataSource;
    DBEdit7: TDBEdit;
    DBGrid3: TDBGrid;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DSGoods: TDataSource;
    DBGrid1: TDBGrid;
    DSSGoods: TDataSource;
    DBEdit1: TDBEdit;
    DBGSGoods: TDBGrid;
    IBDB: TIBDatabase;
    IBTabGoods: TIBTable;
    IBTabGoodsNAME: TIBStringField;
    IBTabGoodsPRICE: TIBBCDField;
    IBTabGoodsS_GOOD_ID: TIBIntegerField;
    IBTabSAccsID: TIBIntegerField;
    IBTabSAccsNAME: TIBStringField;
    IBTabAccs: TIBTable;
    IBTabStoresADDRESS1: TIBStringField;
    IBTabStoresID1: TIBIntegerField;
    IBTabStoresNAME1: TIBStringField;
    IBTabStoresPHONE1: TIBStringField;
    IBTabSOps: TIBTable;
    IBTabSOpsID: TIBIntegerField;
    IBTabSOpsNAME: TIBStringField;
    IBTabSAccs: TIBTable;
    IBTabSGoods: TIBTable;
    IBTabSGoodsNAME: TIBStringField;
    IBTrans: TIBTransaction;
    ImageList1: TImageList;
    ImageList2: TImageList;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    PageControl1: TPageControl;
    PageControl2: TPageControl;
    PageControl3: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    TabReferences: TTabSheet;
    TabOperation: TTabSheet;
    TabGoods: TTabSheet;
    TabSGoods: TTabSheet;

    TabSAccs: TTabSheet;
    TabContSal: TTabSheet;
    TabStoreSaldo: TTabSheet;
    TabSOps: TTabSheet;
    TabContragents: TTabSheet;
    TabAddSuply: TTabSheet;
    TabOperations: TTabSheet;
    TabSheet8: TTabSheet;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    ToolBar4: TToolBar;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton2: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;


    procedure AddMoveExecute(Sender: TObject);
    procedure AddSellExecute(Sender: TObject);
    procedure AddSuplyExecute(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: char);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBOpsACCOUNTS_INKeyPress(Sender: TObject; var Key: char);
    procedure DBOpsACCOUNTS_OUTKeyPress(Sender: TObject; var Key: char);
    procedure DSOpsStateChange(Sender: TObject);
    procedure GenApplyFilterExecute(Sender: TObject);
    procedure AddGeneralExecute(Sender: TObject);
    procedure AllOperationsExecute(Sender: TObject);
    procedure DBGSGoodsDblClick(Sender: TObject);
    procedure DSGenStateChange(Sender: TObject);
    procedure GoodsFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IBTabGenAfterInsert(DataSet: TDataSet);
    procedure IBTabOpsAfterInsert(DataSet: TDataSet);
    procedure IBTabOpsAfterPost(DataSet: TDataSet);
    procedure MakeDiscountExecute(Sender: TObject);
    procedure MakePaymentExecute(Sender: TObject);
    procedure OperationsExecute(Sender: TObject);
    procedure ReferencesExecute(Sender: TObject);
    procedure ShowConragentsExecute(Sender: TObject);
    procedure ShowContSalExecute(Sender: TObject);
    procedure ShowOpTypesExecute(Sender: TObject);
    procedure ShowProductsExecute(Sender: TObject);
    procedure ShowStoreSalExecute(Sender: TObject);
    procedure ShowTabSGoodsExecute(Sender: TObject);
    procedure SQLQuerySGoodsAfterPost(DataSet: TDataSet);
    procedure NewOperation(OpNum:Integer);
    procedure TabAddSuplyExit(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.NewOperation(OpNum:Integer);
begin
  if IBTabOps.State in dsEditModes then IBTabOps.Cancel;
  TabAddSuply.Show;
  IBTabOps.Insert;
  IBTabOps.FieldByName('S_OPERATION_ID').AsInteger:=OpNum;
  DBOpsACCOUNTS_OUT.SetFocus;
  DBOpsACCOUNTS_OUT.DroppedDown:=True;
end;

procedure TForm1.TabAddSuplyExit(Sender: TObject);
begin
  IBTabOps.Cancel;
end;

procedure TForm1.AddMoveExecute(Sender: TObject);
begin
  NewOperation(3);
end;

procedure TForm1.AddSellExecute(Sender: TObject);
begin
     NewOperation(2);
end;

procedure TForm1.AddSuplyExecute(Sender: TObject);
begin
  NewOperation(1);
end;

procedure TForm1.DBEdit12KeyPress(Sender: TObject; var Key: char);
begin
  If (Key = Char(13)) and (DSGen.State in [dsInsert, dsEdit]) then
  IBTabGen.Post;
end;

procedure TForm1.DBGrid2DblClick(Sender: TObject);
begin
  GenApplyFilter.Execute;
  TabAddSuply.Show;
end;

procedure TForm1.DBOpsACCOUNTS_INKeyPress(Sender: TObject; var Key: char);
begin
  If (Key = Char(13)) and (DSOps.State in [dsInsert, dsEdit]) then begin
  IBTabOps.Post;

  end;
end;

procedure TForm1.DBOpsACCOUNTS_OUTKeyPress(Sender: TObject; var Key: char);
begin
   If (Key = Char(13)) then
   DBOpsACCOUNTS_IN.SetFocus;
end;

procedure TForm1.DSOpsStateChange(Sender: TObject);
begin
  IF DSOps.State in dsEditModes then
  begin
    DBOpsID.Enabled:=True;
    DBOpsDate.Enabled:=True;
    DBOpsACCOUNTS_IN.Enabled:=True;
    DBOpsACCOUNTS_OUT.Enabled:=True;
  end
  else begin
    DBOpsID.Enabled:=False;
    DBOpsDate.Enabled:=False;
    DBOpsACCOUNTS_IN.Enabled:=False;
    DBOpsACCOUNTS_OUT.Enabled:=False;
  end;

end;

procedure TForm1.GenApplyFilterExecute(Sender: TObject);
begin
  IBTabGen.Filtered:=False;
  IBTabGen.Filter:='OPERATION_ID='+IBTabOps.FieldByName('id').AsString;
  IBTabGen.Filtered:=True;
  if IBTabOps.FieldByName('S_OPERATION_ID').AsInteger=1 then
  DBEdPrice.Enabled:=True
  else
  DBEdPrice.Enabled:=False;
end;

procedure TForm1.AddGeneralExecute(Sender: TObject);
begin
  IBTabGen.Insert;
end;

procedure TForm1.AllOperationsExecute(Sender: TObject);
begin
  TabOperations.Show;
end;

procedure TForm1.DBGSGoodsDblClick(Sender: TObject);
begin
     IBTabGoods.Filtered:=False;
     IBTabGoods.Filter:='S_GOOD_ID='+IntToStr(IBTabSGoodsID.Value);
     IBTabGoods.Filtered:=True;
     GoodsFilter.Checked:=True;
     TabGoods.Show;
end;

procedure TForm1.DSGenStateChange(Sender: TObject);
begin
  IF DSGen.State in [dsInsert, dsEdit] then
  AddGeneral.Enabled:=false
  else
  AddGeneral.Enabled:=True;
end;

procedure TForm1.GoodsFilterExecute(Sender: TObject);
begin
  IBTabGoods.Filtered:=TAction(Sender).Checked;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  PageControl1.ShowTabs:=False;
  PageControl2.ShowTabs:=False;
  PageControl3.ShowTabs:=False;
  IBDB.Close();
  IBDB.DatabaseName:='STOREDB.FDB';
  IBDB.Connected:=True;
  IBDB.DefaultTransaction.StartTransaction;
  IBTabSGoods.Open;
  IBTabSAccs.Open;
  IBTabSOps.Open;
  IBTabAccs.Open;
  IBTabGoods.Open;
  IBTabOps.Open;
  IBTabGen.Open;
  TabOperation.Show;
  TabOperations.Show;
  TabContragents.Show;
end;

procedure TForm1.IBTabGenAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('OPERATION_ID').AsInteger:=IBTabOps.FieldByName('ID').AsInteger;
  DataSet.FieldByName('D_DATE').AsDateTime:=Now;
  DataSet.FieldByName('S_OPERATION_ID').AsInteger:=IBTabOps.FieldByName('S_OPERATION_ID').AsInteger;
  DataSet.FieldByName('ACCOUNTS_OUT').AsInteger:=IBTabOps.FieldByName('ACCOUNTS_OUT').AsInteger;
  DataSet.FieldByName('ACCOUNTS_IN').AsInteger:=IBTabOps.FieldByName('ACCOUNTS_IN').AsInteger;
  DataSet.FieldByName('PCS').AsInteger:=0;
  DataSet.FieldByName('PRICE').AsInteger:=0;
  GenGoods_ID.SetFocus;
end;

procedure TForm1.IBTabOpsAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('D_DATE').AsDateTime:=Now;
  DataSet.FieldByName('SUBTOTAL').AsInteger:=0;
  DataSet.FieldByName('DISCOUNT').AsInteger:=0;
  DataSet.FieldByName('TOTAL').AsInteger:=0;
end;

procedure TForm1.IBTabOpsAfterPost(DataSet: TDataSet);
begin
  GenApplyFilter.Execute;
end;

procedure TForm1.MakeDiscountExecute(Sender: TObject);
begin
  DBOpsDiscount.Enabled:=TAction(Sender).Checked;
end;

procedure TForm1.MakePaymentExecute(Sender: TObject);
begin
  IBTabGen.Insert;
  IBTabGen.FieldByName('OPERATION_ID').AsInteger:=IBTabOps.FieldByName('ID').AsInteger;
  IBTabGen.FieldByName('D_DATE').AsDateTime:=Now;
  IBTabGen.FieldByName('S_OPERATION_ID').AsInteger:=5;
  IBTabGen.FieldByName('ACCOUNTS_OUT').AsInteger:=IBTabOps.FieldByName('ACCOUNTS_IN').AsInteger;
  IBTabGen.FieldByName('ACCOUNTS_IN').AsInteger:=IBTabOps.FieldByName('ACCOUNTS_OUT').AsInteger;
  IBTabGen.FieldByName('PCS').AsInteger:=StrToInt(PaymentSum.Text);
  IBTabGen.FieldByName('Goods_ID').AsInteger:=1;
  IBTabGen.Post;
  IBTabGen.Refresh;
end;

procedure TForm1.OperationsExecute(Sender: TObject);
begin
  TabOperation.Show;
end;

procedure TForm1.ReferencesExecute(Sender: TObject);
begin
  TabReferences.Show;
end;

procedure TForm1.ShowConragentsExecute(Sender: TObject);
begin
  TabContragents.Show;
end;

procedure TForm1.ShowContSalExecute(Sender: TObject);
begin
  IBQContSal.Close;
  TabContSal.Show;
  IBQContSal.Open
end;

procedure TForm1.ShowOpTypesExecute(Sender: TObject);
begin
  TabSOps.Show;
end;

procedure TForm1.ShowProductsExecute(Sender: TObject);
begin
  TabGoods.Show;
end;

procedure TForm1.ShowStoreSalExecute(Sender: TObject);
begin
  IBQStoreSal.Close;
  TabStoreSaldo.Show;
  IBQStoreSal.Open;
end;

procedure TForm1.ShowTabSGoodsExecute(Sender: TObject);
begin
  TabSGoods.Show;
end;

procedure TForm1.SQLQuerySGoodsAfterPost(DataSet: TDataSet);
begin
  IBTabSGoods.ApplyUpdates();
end;


end.

