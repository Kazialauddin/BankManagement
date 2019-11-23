<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientInfo.aspx.cs" Inherits="BankManagementSystem.Secured.ClientInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <h2><%: Title %>.</h2>
    <h3> BE AWARE OF THIS</h3>
    <p>Firstly Have To Add the <a href="/Secured/AddBankAccount.aspx">BANK ACCOUNT</a>  after then ADD Client in this Page</p>
   
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
           <div class="row">
            <div class="col-md-5">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ClientId" DataSourceID="SqlDataSour" DefaultMode="Insert" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="ClientId" HeaderText="ClientId" InsertVisible="False" ReadOnly="True" SortExpression="ClientId" />
                        <asp:TemplateField HeaderText="Name" SortExpression="Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="City" SortExpression="City">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("City") %>'>
                                    <asp:ListItem>DHAKA</asp:ListItem>
                                    <asp:ListItem>BARISHAL</asp:ListItem>
                                    <asp:ListItem>FENI</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>GAZIPUR</asp:ListItem>
                                    <asp:ListItem>SORIATPUR</asp:ListItem>
                                    <asp:ListItem Value="MANIKGONJ"></asp:ListItem>
                                    <asp:ListItem>KUSTIA</asp:ListItem>
                                    <asp:ListItem>KISHORGONJ</asp:ListItem>
                                    <asp:ListItem>RAJSHAHI</asp:ListItem>
                                    <asp:ListItem>COMILLA</asp:ListItem>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Phone number Required"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" SortExpression="Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="RequireEEmail RequireddFieldValidator"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Formate" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" SelectedValue='<%# Bind("Gender") %>'>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="AccountId" SortExpression="AccountId">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("AccountId") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="AccountId" DataValueField="AccountId" SelectedValue='<%# Bind("AccountId") %>'>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Required AccountId from DropdownList"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("AccountId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSour" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Client] WHERE [ClientId] = @ClientId" InsertCommand="INSERT INTO [Client] ([Name], [City], [Phone], [Email], [Gender], [AccountId]) VALUES (@Name, @City, @Phone, @Email, @Gender, @AccountId)" SelectCommand="SELECT * FROM [Client]" UpdateCommand="UPDATE [Client] SET [Name] = @Name, [City] = @City, [Phone] = @Phone, [Email] = @Email, [Gender] = @Gender, [AccountId] = @AccountId WHERE [ClientId] = @ClientId">
                    <DeleteParameters>
                        <asp:Parameter Name="ClientId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="AccountId" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="AccountId" Type="Int32" />
                        <asp:Parameter Name="ClientId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [AccountId] FROM [Bank]"></asp:SqlDataSource>
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
               <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" DataSourceID="SqlDataSour" AutoGenerateColumns="False" DataKeyNames="ClientId" AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="ClientId" HeaderText="ClientId" InsertVisible="False" ReadOnly="True" SortExpression="ClientId" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="AccountId" HeaderText="AccountId" SortExpression="AccountId" />
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
