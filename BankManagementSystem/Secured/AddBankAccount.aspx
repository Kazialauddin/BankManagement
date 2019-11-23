<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBankAccount.aspx.cs" Inherits="BankManagementSystem.Secured.AddBankAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <h2><%: Title %>.</h2>
    <h3> BE AWARE OF THIS</h3>
    <p>Firstly Have To Add the BANK ACCOUNT in this Page after then <a href="/Secured/ClientInfo.aspx">ADD Client</a> </p>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
           <div class="row">
            <div class="col-md-5">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="AccountId" DataSourceID="SqlDataSour" DefaultMode="Insert" Height="50px" Width="400px" CssClass="table table-bordered">
                    <Fields>
                        <asp:TemplateField HeaderText="Type" SortExpression="Type">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Type") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" SelectedValue='<%# Bind("Type") %>'>
                                    <asp:ListItem>FIXED</asp:ListItem>
                                    <asp:ListItem>SAVINGS</asp:ListItem>
                                </asp:RadioButtonList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Type") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Balance" SortExpression="Balance">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Balance") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Balance") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Balance Required"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Balance") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Deposite" SortExpression="Deposite">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Deposite") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Deposite") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Deposite Required"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Deposite") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="AccOpenningDate" SortExpression="AccOpenningDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("AccOpenningDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:Calendar ID="Calendar1" runat="server" CssClass="input-group date" SelectedDate='<%# Bind("AccOpenningDate") %>'></asp:Calendar>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("AccOpenningDate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <InsertItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSour" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Bank] WHERE [AccountId] = @AccountId" InsertCommand="INSERT INTO [Bank] ([Type], [Balance], [Deposite], [AccOpenningDate]) VALUES (@Type, @Balance, @Deposite, @AccOpenningDate)" SelectCommand="SELECT * FROM [Bank]" UpdateCommand="UPDATE [Bank] SET [Type] = @Type, [Balance] = @Balance, [Deposite] = @Deposite, [AccOpenningDate] = @AccOpenningDate WHERE [AccountId] = @AccountId">
                    <DeleteParameters>
                        <asp:Parameter Name="AccountId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Balance" Type="String" />
                        <asp:Parameter Name="Deposite" Type="String" />
                        <asp:Parameter DbType="Date" Name="AccOpenningDate" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Balance" Type="String" />
                        <asp:Parameter Name="Deposite" Type="String" />
                        <asp:Parameter DbType="Date" Name="AccOpenningDate" />
                        <asp:Parameter Name="AccountId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <asp:SqlDataSource ID="Bid" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Bank] WHERE [AccountId] = @AccountId" InsertCommand="INSERT INTO [Bank] ([Type], [Balance], [Deposite], [AccOpenningDate]) VALUES (@Type, @Balance, @Deposite, @AccOpenningDate)" SelectCommand="SELECT * FROM [Bank]" UpdateCommand="UPDATE [Bank] SET [Type] = @Type, [Balance] = @Balance, [Deposite] = @Deposite, [AccOpenningDate] = @AccOpenningDate WHERE [AccountId] = @AccountId">
                    <DeleteParameters>
                        <asp:Parameter Name="AccountId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Balance" Type="String" />
                        <asp:Parameter Name="Deposite" Type="String" />
                        <asp:Parameter DbType="Date" Name="AccOpenningDate" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Balance" Type="String" />
                        <asp:Parameter Name="Deposite" Type="String" />
                        <asp:Parameter DbType="Date" Name="AccOpenningDate" />
                        <asp:Parameter Name="AccountId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>

           <div class="col-md-6">
               <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" DataSourceID="SqlDataSour" AutoGenerateColumns="False" DataKeyNames="AccountId" AllowPaging="True">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="AccountId" HeaderText="AccountId" InsertVisible="False" ReadOnly="True" SortExpression="AccountId" />
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                        <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" />
                        <asp:BoundField DataField="Deposite" HeaderText="Deposite" SortExpression="Deposite" />
                        <asp:BoundField DataField="AccOpenningDate" HeaderText="AccOpenningDate" SortExpression="AccOpenningDate" />
                    </Columns>
                </asp:GridView>
           </div>
           
       </div>

    </ContentTemplate>
    
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        Loading..
    </ProgressTemplate>
</asp:UpdateProgress>
</asp:Content>
