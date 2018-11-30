<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Jquery.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <style type="text/css">
        .BlueDiv {
            background-color: deepskyblue;
            color: white;
            width: 200px;
        }

        .RedDiv {
            background-color: red;
            color: white;
            width: 200px;
        }

        .style1 {
            width: 100%;
        }

        .Highlight {
            background-color: yellow;
        }
    </style>
    <script>
        //$(document).ready(function () {
        //    //Using .each()
        //    var html = '';
        //    $('div.BlueDiv,div.RedDiv').each(function (index) {
        //        html += "<br />" + index + " " + $(this).text();
        //    });
        //    var output = $('#OutputDiv');
        //    output.html(html);

        //    $('div.BlueDiv,div.RedDiv').each(function (index) {
        //        //Raw dom object
        //        this.title = "Some title";
        //        $(this).attr('title', 'Some title 2')
        //    });

        //    $('div.BlueDiv, div.RedDiv')
        //        .attr(
        //            {
        //                title: 'Some title 3',
        //            }

        //        )
        //        .css({
        //            'background-color': 'purple',
        //            'color': 'white',
        //            'font-size': '14pt'
        //        }).text('Changed Color');


        //    //Modifying DOM
        //    var tcd = $('#TableContainerDiv')
        //    tcd.append('<span style="background-color:green">Appended Child 1</span>');
        //    tcd.prepend('<br /><span style="background-color:green">Prepended Child 1</span>');
        //    $('<br /><span style="background-color:green">Appended Child 2</span>').appendTo(tcd);
        //    $('<span style="background-color:green">Prepended Child 1</span>').prependTo(tcd);

        //    //Wrap
        //    $('span.Foo').wrap('<div class="RedDiv ParentWrapper" />');
        //    $('div.ParentWrapper').each(function () {
        //        //alert($(this).html());
        //    });

        //    //Remove
        //    $('div.ParentWrapper').remove();

            //Modifying Classes
            //$('input[type="text"]').addClass('Highlight');
            //$('#LastNameTextBox').removeClass('Highlight');





        //});

        //function FocusBlur(tb) {
        //    $(tb).toggleClass('Highlight');
        //}


    </script>
    <%--<div id="TableContainerDiv" title="Contains Table">
        <table id="DataTable">
            <tr>
                <td>Cell 1 Row 1
                </td>
            </tr>
            <tr>
                <td>Cell 1 row 2
                </td>
            </tr>
            <tr />
            <tr>
                <td>Cell 1 Row 3
                </td>
            </tr>
            <tr>
                <td>
                    <table style="width: 100%">
                        <tr>
                            <td>Nested Table Cell and row
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>

        </table>
    </div>
    <span class="Foo">Span1</span>
    <span class="Foo">Span2</span>
    <span id="Span3" class="Foo">Span 3</span>--%>
    <%-- ----------------------------------------------------------------------------------------
    <%--   <div id="Div2" class="BlueDiv">
        Test div test
    </div>
    <div id="OutputDiv"></div>
    <div class="BlueDiv">
        <span class="BlueDiv">This is my blue span</span>
    </div>
    <div class="RedDiv">
        <span>Red div</span>
    </div>--%>

    <%--<div title="contains table">--%>
   <%-- <table style="width: 300px;">
        <tr>
            <td style="width: 30%;">First Name</td>
            <td style="width: 70%;">
                <input id="FirstNameTextBox" type="text" onfocus="FocusBlur(this)" onblur="FocusBlur(this)" /></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>
                <input id="LastNameTextBox" class="MyInput" type="text" onfocus="FocusBlur(this)" onblur="FocusBlur(this)" /></td>
        </tr>
        <tr>
            <td class="auto-style1">Comments</td>
            <td class="auto-style1">
                <textarea rows="5" class="MyInput" cols="60" id="CommentsTextBox">TextArea</textarea></td>
        </tr>
        <tr>
            <td>
                <select id="StateSelect" class="MyInput">
                    <option value="AZ">AZ</option>
                    <option value="CA" selected>CA</option>
                </select>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <input id="SubmitButton" type="button" value="Submit" />

            </td>
            <td>
                <div id="DivOutput"></div>
            </td>
        </tr>
    </table>--%>
    <div id="MyDiv">Some text</div>
    <script type="text/javascript">
        $(document).ready(function () {
            var tbody = $('#customers tbody');
                $('#addRow').on('click', function () {
                    tbody.append('<tr><td>Hello</td><td>sup</td></tr>');
                });
               tbody.on('click', 'td', function () {
                    alert($(this).text());
                });


            });
        


    </script>
    
    <div id="selectedPerson"></div>
    <button id="addRow">Add Row</button>
    <table id="customers">
        <tr>
            <td>John</td>
            <td>Doe</td>
        </tr>
        <tr>
            <td>Josh</td>
            <td>Smith</td>
        </tr>
        <tr>
            <td>Josh</td>
            <td>Smith2</td>
        </tr>
        <tr>
            <td>Josh</td>
            <td>Smith3</td>
        </tr>
    </table>
       <%--     //function WireEvents() {
            //    $('#SubmitButton').click(function () {
            //        var firstName = $('#FirstNameTextBox').val();
            //        var lastName = $('#LastNameTextBox').val();
            //        $('#DivOutput').text(firstName + ' ' + lastName);
            //    });
            //    $('#MyDiv').on('mouseenter mouseleave mouseup', function (e) {
            //        $(this).toggleClass('Highlight');
            //        $(this).css('cursor', 'pointer');
            //        if (e.type == 'mouseup') {
            //            $(this).text('X: ' + e.pageX + ' Y: ' + e.pageY);
                        
            //        }
                    
            //    });
                //$('MyDiv').off();
           --%>


</asp:Content>
