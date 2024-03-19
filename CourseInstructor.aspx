<%@ Page Title="Course Instructor" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CourseInstructor.aspx.cs" Inherits="Coursework.CourseInstructor" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <h3>Add Course Instructor</h3>
        <p>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="COURSE_INSTRUCTOR_ID" DataSourceID="SqlDataSourceCourseInstructor">
                <EditItemTemplate>
                    COURSE_INSTRUCTOR_ID:
                    <asp:Label ID="COURSE_INSTRUCTOR_IDLabel1" runat="server" Text='<%# Eval("COURSE_INSTRUCTOR_ID") %>' />
                    <br />
                    COURSE_INSTRUCTOR_NAME:
                    <asp:TextBox ID="COURSE_INSTRUCTOR_NAMETextBox" runat="server" Text='<%# Bind("COURSE_INSTRUCTOR_NAME") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    COURSE_INSTRUCTOR_ID:
                    <asp:TextBox ID="COURSE_INSTRUCTOR_IDTextBox" runat="server" Text='<%# Bind("COURSE_INSTRUCTOR_ID") %>' />
                    <br />
                    COURSE_INSTRUCTOR_NAME:
                    <asp:TextBox ID="COURSE_INSTRUCTOR_NAMETextBox" runat="server" Text='<%# Bind("COURSE_INSTRUCTOR_NAME") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    COURSE_INSTRUCTOR_ID:
                    <asp:Label ID="COURSE_INSTRUCTOR_IDLabel" runat="server" Text='<%# Eval("COURSE_INSTRUCTOR_ID") %>' />
                    <br />
                    COURSE_INSTRUCTOR_NAME:
                    <asp:Label ID="COURSE_INSTRUCTOR_NAMELabel" runat="server" Text='<%# Bind("COURSE_INSTRUCTOR_NAME") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
    </p>
        <div class="row">
            <section class="col-md-5">
        <h3>Course Instructors</h3>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="COURSE_INSTRUCTOR_ID" DataSourceID="SqlDataSourceCourseInstructor" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="COURSE_INSTRUCTOR_ID" HeaderText="COURSE_INSTRUCTOR_ID" ReadOnly="True" SortExpression="COURSE_INSTRUCTOR_ID" />
                    <asp:BoundField DataField="COURSE_INSTRUCTOR_NAME" HeaderText="COURSE_INSTRUCTOR_NAME" SortExpression="COURSE_INSTRUCTOR_NAME" />
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
            <asp:SqlDataSource ID="SqlDataSourceCourseInstructor" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;COURSE_INSTRUCTOR&quot; WHERE &quot;COURSE_INSTRUCTOR_ID&quot; = :COURSE_INSTRUCTOR_ID" InsertCommand="INSERT INTO &quot;COURSE_INSTRUCTOR&quot; (&quot;COURSE_INSTRUCTOR_ID&quot;, &quot;COURSE_INSTRUCTOR_NAME&quot;) VALUES (:COURSE_INSTRUCTOR_ID, :COURSE_INSTRUCTOR_NAME)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;COURSE_INSTRUCTOR&quot;" UpdateCommand="UPDATE &quot;COURSE_INSTRUCTOR&quot; SET &quot;COURSE_INSTRUCTOR_NAME&quot; = :COURSE_INSTRUCTOR_NAME WHERE &quot;COURSE_INSTRUCTOR_ID&quot; = :COURSE_INSTRUCTOR_ID">
                <DeleteParameters>
                    <asp:Parameter Name="COURSE_INSTRUCTOR_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="COURSE_INSTRUCTOR_ID" Type="Decimal" />
                    <asp:Parameter Name="COURSE_INSTRUCTOR_NAME" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="COURSE_INSTRUCTOR_NAME" Type="String" />
                    <asp:Parameter Name="COURSE_INSTRUCTOR_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
                </section>
                        <section class="col-md-7">

<h3>Course Taught By Instructor</h3>
<p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="COURSE_ID,COURSE_INSTRUCTOR_ID" DataSourceID="SqlDataSourceCourseInstructorCourse" GridLines="Horizontal" AllowPaging="True">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" ReadOnly="True" SortExpression="COURSE_ID" />
                    <asp:BoundField DataField="COURSE_TITLE" HeaderText="COURSE_TITLE" SortExpression="COURSE_TITLE" />
                    <asp:BoundField DataField="COURSE_INSTRUCTOR_ID" HeaderText="COURSE_INSTRUCTOR_ID" ReadOnly="True" SortExpression="COURSE_INSTRUCTOR_ID" />
                    <asp:BoundField DataField="COURSE_INSTRUCTOR_NAME" HeaderText="COURSE_INSTRUCTOR_NAME" SortExpression="COURSE_INSTRUCTOR_NAME" />
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
            <asp:SqlDataSource ID="SqlDataSourceCourseInstructorCourse" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT c.COURSE_ID, c.COURSE_TITLE, ci.COURSE_INSTRUCTOR_ID, ci.COURSE_INSTRUCTOR_NAME FROM COURSE c, STUDENT_COURSE_INSTRUCTOR sci, COURSE_INSTRUCTOR ci WHERE c.COURSE_ID = sci.COURSE_ID AND sci.COURSE_INSTRUCTOR_ID = ci.COURSE_INSTRUCTOR_ID AND (ci.COURSE_INSTRUCTOR_ID IN (SELECT COURSE_INSTRUCTOR_ID FROM STUDENT_COURSE_INSTRUCTOR GROUP BY COURSE_INSTRUCTOR_ID HAVING (COUNT(COURSE_ID) &gt;= 2)))"></asp:SqlDataSource>
        </p>
                              </section>
            </div>
    </main>
</asp:Content>
