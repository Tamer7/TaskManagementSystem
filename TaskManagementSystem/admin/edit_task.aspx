<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="edit_task.aspx.cs" Inherits="TaskManagementSystem.admin.edit_task" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
         <form id="form1" runat="server">

       <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Issue Task</strong>
                            </div>
                            <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                                  
                                            <div class="form-group">
                                                <label for="" class="control-label mb-1">Username</label>
                                                <asp:DropDownList ID="user" runat="server" CssClass="form-control"></asp:DropDownList>
                                            </div>
                                            
                                              <div class="form-group">
                                                <label for="" class="control-label mb-1">Task Name</label>
                                                <asp:TextBox ID="taskname" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label for="" class="control-label mb-1">Task Description</label>
                                                <asp:TextBox ID="taskdescription" TextMode="multiline" Columns="30" Rows="5" runat="server" class="form-control"></asp:TextBox>
                                            </div>


                                           <div class="form-group">
                                               <label for="" class="control-label mb-1">Due Date</label>
                                                <asp:Calendar ID="calender" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                                                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                                    <OtherMonthDayStyle ForeColor="#CC9966" />
                                                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                                    <SelectorStyle BackColor="#FFCC66" />
                                                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                               </asp:Calendar>
                                            </div>



                                           
                                            <div>
                                           
                                               <asp:Button ID="b1" runat="server" class="btn btn-lg btn-info btn-block" Text="Issue Task" OnClick="b1_Click"/>
                                                    
                                            </div>

                                           

                                    </div>
                                   
                                </div>

                            </div>
                        </div> <!-- .card -->

                    </div><!--/.col-->


       </form>
</asp:Content>


