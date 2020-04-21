<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="display_tasks.aspx.cs" Inherits="TaskManagementSystem.admin.display_tasks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

         <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

                        <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">All Tasks</strong>
                            </div>
                            <div class="card-body">

                                <asp:Repeater ID="r1" runat="server">
                                    <HeaderTemplate> <table class="table" id="example">
                                    <thead>
                                        <tr>
                                          <th scope="col">Username</th>
                                          <th scope="col">Task Name</th>
                                          <th scope="col">Task Description</th>
                                          <th scope="col">Date Created</th>
                                          <th scope="col">Due Date</th>
                                          <th scope="col">Task Complete</th>
                                          
                                          <th scope="col">Edit</th>
                                          <th scope="col">Delete</th>

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
                                        <td><a href="edit_task.aspx?id=<%#Eval("id") %>">Edit</a></td>
                                        <td><a href="delete_task.aspx?id2=<%#Eval("id") %>">Delete</a></td>
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
