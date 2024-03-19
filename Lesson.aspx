<%@ Page Title="Lesson" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lesson.aspx.cs" Inherits="Coursework.Lesson" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <h3>Add Lesson</h3>
        <p>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="LESSON_NO" DataSourceID="SqlDataSourceLesson">
                <EditItemTemplate>
                    LESSON_NO:
                    <asp:Label ID="LESSON_NOLabel1" runat="server" Text='<%# Eval("LESSON_NO") %>' />
                    <br />
                    LESSON_TITLE:
                    <asp:TextBox ID="LESSON_TITLETextBox" runat="server" Text='<%# Bind("LESSON_TITLE") %>' />
                    <br />
                    COURSE_ID:
                    <asp:TextBox ID="COURSE_IDTextBox" runat="server" Text='<%# Bind("COURSE_ID") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    LESSON_NO:
                    <asp:TextBox ID="LESSON_NOTextBox" runat="server" Text='<%# Bind("LESSON_NO") %>' />
                    <br />
                    LESSON_TITLE:
                    <asp:TextBox ID="LESSON_TITLETextBox" runat="server" Text='<%# Bind("LESSON_TITLE") %>' />
                    <br />
                    COURSE_ID:
                    <asp:TextBox ID="COURSE_IDTextBox" runat="server" Text='<%# Bind("COURSE_ID") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    LESSON_NO:
                    <asp:Label ID="LESSON_NOLabel" runat="server" Text='<%# Eval("LESSON_NO") %>' />
                    <br />
                    LESSON_TITLE:
                    <asp:Label ID="LESSON_TITLELabel" runat="server" Text='<%# Bind("LESSON_TITLE") %>' />
                    <br />
                    COURSE_ID:
                    <asp:Label ID="COURSE_IDLabel" runat="server" Text='<%# Bind("COURSE_ID") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
    </p>
        <h3>Lesson List</h3>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="LESSON_NO" DataSourceID="SqlDataSourceLesson" GridLines="Horizontal" AllowPaging="True">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="LESSON_NO" HeaderText="LESSON_NO" ReadOnly="True" SortExpression="LESSON_NO" />
                    <asp:BoundField DataField="LESSON_TITLE" HeaderText="LESSON_TITLE" SortExpression="LESSON_TITLE" />
                    <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" SortExpression="COURSE_ID" />
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
            <asp:SqlDataSource ID="SqlDataSourceLesson" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;LESSON&quot; WHERE &quot;LESSON_NO&quot; = :LESSON_NO" InsertCommand="INSERT INTO &quot;LESSON&quot; (&quot;LESSON_NO&quot;, &quot;LESSON_TITLE&quot;, &quot;COURSE_ID&quot;) VALUES (:LESSON_NO, :LESSON_TITLE, :COURSE_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;LESSON&quot;" UpdateCommand="UPDATE &quot;LESSON&quot; SET &quot;LESSON_TITLE&quot; = :LESSON_TITLE, &quot;COURSE_ID&quot; = :COURSE_ID WHERE &quot;LESSON_NO&quot; = :LESSON_NO">
                <DeleteParameters>
                    <asp:Parameter Name="LESSON_NO" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="LESSON_NO" Type="Decimal" />
                    <asp:Parameter Name="LESSON_TITLE" Type="String" />
                    <asp:Parameter Name="COURSE_ID" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="LESSON_TITLE" Type="String" />
                    <asp:Parameter Name="COURSE_ID" Type="Decimal" />
                    <asp:Parameter Name="LESSON_NO" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </main>
</asp:Content>
