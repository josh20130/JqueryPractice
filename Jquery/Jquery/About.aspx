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

        td {
            text-align: left;
            vertical-align: top;
        }

        input[type=text] {
            background-color: #efefef;
        }

        .LightHighlight {
            background-color: #ccc;
        }

        .PhoneHighlight {
            background-color: #ccc;
        }

        .PhoneNumber {
            margin-top: 5px;
            width: 80px;
        }

        .PhoneType {
            margin-top: 5px;
        }

        .PhoneNumberDiv {
            text-align: left;
            vertical-align: middle;
            width: 200px;
        }

        .PhoneTypeDiv {
            text-align: left;
            vertical-align: middle;
            width: 100px;
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

    <div id="MyDiv">Some text</div>
    <table id="MyTable" style="width: 300px;" cellpadding="5">
        <tr>
            <td style="width: 30%;">First Name</td>
            <td style="width: 70%;">
                <input id="FirstNameTextBox" type="text" /></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>
                <input class="MyInput" id="LastNameTextBox" type="text" /></td>
        </tr>
        <tr>
            <td>Comments              
            </td>
            <td>
                <textarea></textarea></td>
        </tr>
    </table>
    <script type="text/javascript">
        $(document).ready(function () {
            var tbody = $('#customers tbody');
            $('#addRow').on('click', function () {
                tbody.append('<tr><td>Hello</td><td>sup</td></tr>');
            });
            tbody.on('click', 'td', function () {
                alert($(this).text());
            });
            //Using hover
            //$('#MyTable tr').hover(function () {
            //    //Move enter
            //    $(this).css('background-color', '#efefef');

            //},
            //    function () {
            //        //Mouse leave
            //        $(this).css('background-color', '#fff');
            //    });
            //$('#MyTable tr').hover(function () {
            //    $(this).toggleClass('LightHighlight');
            //});
            $('#MyTable tr').hover(
                function () {
                //Move enter
                $(this).css('background-color', '#efefef');

            },
                function () {
                    //Mouse leave
                    $(this).css('background-color', '#fff');
                });
        });



    </script>

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
