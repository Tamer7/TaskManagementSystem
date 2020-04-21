<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="user_issued_task.aspx.cs" Inherits="TaskManagementSystem.user.user_issued_task" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

 
         <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

                        <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Issued Tasks</strong>
                            </div>
                            <div class="card-body">

                                <asp:Repeater ID="r1" runat="server">
                                    <HeaderTemplate> <table class="table" id="example">
                                    <thead>
                                        <tr>
                                           <th>Username</th>
                                           <th>Task Name</th>
                                            <th>Task Description</th>
                                            <th>Issue Date</th>
                                            <th>Due Date</th>
                                            <th>Task Complete</th>
                                            <th>Complete</th>
                                            <th>Not Complete</th>


                                           </tr>
                                  </thead>
                                     <tbody>
                                        
                                   </HeaderTemplate>
                                    <ItemTemplate>


                                         <tr>
                                        <td><%#Eval("user_username") %></td>
                                        <td><%#Eval("task_name") %></td>
                                        <td><%#Eval("task_description") %></td>
                                         <td><%#Eval("task_issue_date") %></td>
                                        <td><%#Eval("task_due_date") %></td>
                                         <td><%#Eval("is_task_complete") %></td>
                                          <td><a href="task_complete.aspx?id=<%#Eval("id") %>">Complete</a></td>
                                         <td><a href="task_uncomplete.aspx?id=<%#Eval("id") %>">Not Complete</a></td>



                                         </tr>
                                 </ItemTemplate>

                                    <FooterTemplate>
                                        </tbody>
                                         </table>

                                    </FooterTemplate>
                                </asp:Repeater>

                               
                              
                                    
                                   

                        </div>
                    </div>
                </div>

      <script type="text/javascript">
          $(document).ready(function () {
              $('#example').DataTable({
                  "pagingType": "full_numbers"
              });
          });
    </script>
</asp:Content>
