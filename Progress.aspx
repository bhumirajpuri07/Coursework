<%@ Page Title="Student Progress" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Progress.aspx.cs" Inherits="Coursework.Progress" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <h3>Add Progress Status</h3>
        <p>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="LESSON_NO,STUDENT_ID,COUSE_ID" DataSourceID="SqlDataSourceProgress">
                <EditItemTemplate>
                    LESSON_NO:
                    <asp:Label ID="LESSON_NOLabel1" runat="server" Text='<%# Eval("LESSON_NO") %>' />
                    <br />
                    LESSON_STATUS:
                    <asp:TextBox ID="LESSON_STATUSTextBox" runat="server" Text='<%# Bind("LESSON_STATUS") %>' />
                    <br />
                    LAST_ACCESS_DATE:
                    <asp:TextBox ID="LAST_ACCESS_DATETextBox" runat="server" Text='<%# Bind("LAST_ACCESS_DATE") %>' />
                    <br />
                    STUDENT_ID:
                    <asp:Label ID="STUDENT_IDLabel1" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
                    <br />
                    COUSE_ID:
                    <asp:Label ID="COUSE_IDLabel1" runat="server" Text='<%# Eval("COUSE_ID") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    LESSON_NO:
                    <asp:TextBox ID="LESSON_NOTextBox" runat="server" Text='<%# Bind("LESSON_NO") %>' />
                    <br />
                    LESSON_STATUS:
                    <asp:TextBox ID="LESSON_STATUSTextBox" runat="server" Text='<%# Bind("LESSON_STATUS") %>' />
                    <br />
                    LAST_ACCESS_DATE:
                    <asp:TextBox ID="LAST_ACCESS_DATETextBox" runat="server" Text='<%# Bind("LAST_ACCESS_DATE") %>' />
                    <br />
                    STUDENT_ID:
                    <asp:TextBox ID="STUDENT_IDTextBox" runat="server" Text='<%# Bind("STUDENT_ID") %>' />
                    <br />
                    COUSE_ID:
                    <asp:TextBox ID="COUSE_IDTextBox" runat="server" Text='<%# Bind("COUSE_ID") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    LESSON_NO:
                    <asp:Label ID="LESSON_NOLabel" runat="server" Text='<%# Eval("LESSON_NO") %>' />
                    <br />
                    LESSON_STATUS:
                    <asp:Label ID="LESSON_STATUSLabel" runat="server" Text='<%# Bind("LESSON_STATUS") %>' />
                    <br />
                    LAST_ACCESS_DATE:
                    <asp:Label ID="LAST_ACCESS_DATELabel" runat="server" Text='<%# Bind("LAST_ACCESS_DATE") %>' />
                    <br />
                    STUDENT_ID:
                    <asp:Label ID="STUDENT_IDLabel" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
                    <br />
                    COUSE_ID:
                    <asp:Label ID="COUSE_IDLabel" runat="server" Text='<%# Eval("COUSE_ID") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
    </p>
        <h3>Student Progress List</h3>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="LESSON_NO,STUDENT_ID,COUSE_ID" DataSourceID="SqlDataSourceProgress" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="LESSON_NO" HeaderText="LESSON_NO" ReadOnly="True" SortExpression="LESSON_NO" />
                    <asp:BoundField DataField="LESSON_STATUS" HeaderText="LESSON_STATUS" SortExpression="LESSON_STATUS" />
                    <asp:BoundField DataField="LAST_ACCESS_DATE" HeaderText="LAST_ACCESS_DATE" SortExpression="LAST_ACCESS_DATE" />
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                    <asp:BoundField DataField="COUSE_ID" HeaderText="COUSE_ID" ReadOnly="True" SortExpression="COUSE_ID" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceProgress" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;PROGRESS&quot; WHERE &quot;LESSON_NO&quot; = :LESSON_NO AND &quot;STUDENT_ID&quot; = :STUDENT_ID AND &quot;COUSE_ID&quot; = :COUSE_ID" InsertCommand="INSERT INTO &quot;PROGRESS&quot; (&quot;LESSON_NO&quot;, &quot;LESSON_STATUS&quot;, &quot;LAST_ACCESS_DATE&quot;, &quot;STUDENT_ID&quot;, &quot;COUSE_ID&quot;) VALUES (:LESSON_NO, :LESSON_STATUS, :LAST_ACCESS_DATE, :STUDENT_ID, :COUSE_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROGRESS&quot;" UpdateCommand="UPDATE &quot;PROGRESS&quot; SET &quot;LESSON_STATUS&quot; = :LESSON_STATUS, &quot;LAST_ACCESS_DATE&quot; = :LAST_ACCESS_DATE WHERE &quot;LESSON_NO&quot; = :LESSON_NO AND &quot;STUDENT_ID&quot; = :STUDENT_ID AND &quot;COUSE_ID&quot; = :COUSE_ID">
                <DeleteParameters>
                    <asp:Parameter Name="LESSON_NO" Type="Decimal" />
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                    <asp:Parameter Name="COUSE_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="LESSON_NO" Type="Decimal" />
                    <asp:Parameter Name="LESSON_STATUS" Type="String" />
                    <asp:Parameter Name="LAST_ACCESS_DATE" Type="DateTime" />
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                    <asp:Parameter Name="COUSE_ID" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="LESSON_STATUS" Type="String" />
                    <asp:Parameter Name="LAST_ACCESS_DATE" Type="DateTime" />
                    <asp:Parameter Name="LESSON_NO" Type="Decimal" />
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                    <asp:Parameter Name="COUSE_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </main>
</asp:Content>
