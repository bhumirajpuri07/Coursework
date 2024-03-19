<%@ Page Title="Enrollment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Enrollment.aspx.cs" Inherits="Coursework.Enrollment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
            <h3>Add Enrollment Details</h3>
<p>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="COURSE_ID,STUDENT_ID" DataSourceID="SqlDataSourceEnrollment">
        <EditItemTemplate>
            COURSE_ID:
            <asp:Label ID="COURSE_IDLabel1" runat="server" Text='<%# Eval("COURSE_ID") %>' />
            <br />
            STUDENT_ID:
            <asp:Label ID="STUDENT_IDLabel1" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
            <br />
            ENROL_DATE:
            <asp:TextBox ID="ENROL_DATETextBox" runat="server" Text='<%# Bind("ENROL_DATE") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            COURSE_ID:
            <asp:TextBox ID="COURSE_IDTextBox" runat="server" Text='<%# Bind("COURSE_ID") %>' />
            <br />
            STUDENT_ID:
            <asp:TextBox ID="STUDENT_IDTextBox" runat="server" Text='<%# Bind("STUDENT_ID") %>' />
            <br />
            ENROL_DATE:
            <asp:TextBox ID="ENROL_DATETextBox" runat="server" Text='<%# Bind("ENROL_DATE") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            COURSE_ID:
            <asp:Label ID="COURSE_IDLabel" runat="server" Text='<%# Eval("COURSE_ID") %>' />
            <br />
            STUDENT_ID:
            <asp:Label ID="STUDENT_IDLabel" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
            <br />
            ENROL_DATE:
            <asp:Label ID="ENROL_DATELabel" runat="server" Text='<%# Bind("ENROL_DATE") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
</p>
        <div class="row">
        <section class="col-md-6">
        <h3>Enrollment List</h3>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="COURSE_ID,STUDENT_ID" DataSourceID="SqlDataSourceEnrollment" GridLines="Horizontal" AllowPaging="True">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" ReadOnly="True" SortExpression="COURSE_ID" />
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                    <asp:BoundField DataField="ENROL_DATE" HeaderText="ENROL_DATE" SortExpression="ENROL_DATE" />
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
            <asp:SqlDataSource ID="SqlDataSourceEnrollment" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ENROLLMENT&quot; WHERE &quot;COURSE_ID&quot; = :COURSE_ID AND &quot;STUDENT_ID&quot; = :STUDENT_ID" InsertCommand="INSERT INTO &quot;ENROLLMENT&quot; (&quot;COURSE_ID&quot;, &quot;STUDENT_ID&quot;, &quot;ENROL_DATE&quot;) VALUES (:COURSE_ID, :STUDENT_ID, :ENROL_DATE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ENROLLMENT&quot;" UpdateCommand="UPDATE &quot;ENROLLMENT&quot; SET &quot;ENROL_DATE&quot; = :ENROL_DATE WHERE &quot;COURSE_ID&quot; = :COURSE_ID AND &quot;STUDENT_ID&quot; = :STUDENT_ID">
                <DeleteParameters>
                    <asp:Parameter Name="COURSE_ID" Type="Decimal" />
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="COURSE_ID" Type="Decimal" />
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                    <asp:Parameter Name="ENROL_DATE" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ENROL_DATE" Type="DateTime" />
                    <asp:Parameter Name="COURSE_ID" Type="Decimal" />
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        </section>
            <section class="col-md-6">
         <h3>Top Enrolled Month</h3>
        <p>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="COURSE_ID" DataSourceID="SqlDataSourceBestCourse" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" ReadOnly="True" SortExpression="COURSE_ID" />
                    <asp:BoundField DataField="COURSE_TITLE" HeaderText="COURSE_TITLE" SortExpression="COURSE_TITLE" />
                    <asp:BoundField DataField="ENROL_MONTH" HeaderText="ENROL_MONTH" SortExpression="ENROL_MONTH" />
                    <asp:BoundField DataField="ENROLLMENT_COUNT" HeaderText="ENROLLMENT_COUNT" SortExpression="ENROLLMENT_COUNT" />
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
            <asp:SqlDataSource ID="SqlDataSourceBestCourse" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT c.COURSE_ID, c.COURSE_TITLE, TO_CHAR(e.ENROL_DATE, 'YYYY-MM') AS enrol_month, COUNT(*) AS enrollment_count FROM ENROLLMENT e, COURSE c WHERE e.COURSE_ID = c.COURSE_ID AND (TO_CHAR(e.ENROL_DATE, 'YYYY-MM') = '2024-03') GROUP BY c.COURSE_ID, c.COURSE_TITLE, TO_CHAR(e.ENROL_DATE, 'YYYY-MM') ORDER BY enrollment_count DESC"></asp:SqlDataSource>
        </p>
            </section>
            </div>
         <h3>Student Enrollment Details</h3>
        <p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="STUDENT_ID,COURSE_ID" DataSourceID="SqlDataSourceEnrolledStudent" GridLines="Horizontal" AllowPaging="True">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                    <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
                    <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" SortExpression="COURSE_ID" ReadOnly="True" />
                    <asp:BoundField DataField="COURSE_TITLE" HeaderText="COURSE_TITLE" SortExpression="COURSE_TITLE" />
                    <asp:BoundField DataField="ENROL_DATE" HeaderText="ENROL_DATE" SortExpression="ENROL_DATE" />
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
            <asp:SqlDataSource ID="SqlDataSourceEnrolledStudent" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT s.STUDENT_ID, s.STUDENT_NAME, s.CONTACT, s.EMAIL, s.DOB, c.COURSE_ID, c.COURSE_TITLE, e.ENROL_DATE FROM STUDENT s, ENROLLMENT e, COURSE c WHERE s.STUDENT_ID = e.STUDENT_ID AND e.COURSE_ID = c.COURSE_ID"></asp:SqlDataSource>
        </p>

    </main>
</asp:Content>
