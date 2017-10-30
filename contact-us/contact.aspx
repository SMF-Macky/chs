<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" />
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Contact Us</title>
    </head>
    <body> 
        @{
        if (IsPost) { 
            string phonenumber = Request["PhoneNumber"];
            string emailaddress = Request["EmailAddress"];
            string contactname = Request["ContactName"];
            string buyorsell = Request["BuyOrSell"];
            string message = Request["Message"];
            <p>You entered: <br />
                Phone Number: @phonenumber <br />
                Email Address: @emailaddress <br />
                Contact Name: @contactname <br />
                Buy Or Sell: @buyorsell <br />
                Message: @message <br />
            </p>
        }
        else
        {
        <form method="post" action="EmailSend.cshtml">
        Phone Number:<br />
        <input type="text" name="PhoneNumber" value="" /><br />
        Email Address:<br />
        <input type="text" name="EmailAddress" value="" /><br />
        Contact Name:<br />
        <input type="text" name="ContactName" value="" /><br />
        <select name="BuyOrSell">
            <option>Buying</option>
            <option>Selling</option>
        </select><br />
        Your Message For Us:<br />
        <input type="text" name="Message" value="" /><br />
        <input type="submit" value="Submit" class="submit" />
        </form>
        }
        } 
    </body> 
</html>
