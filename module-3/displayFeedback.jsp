<!--
    Xavier Grunitzky
    Module 3.2 Assignment
    6/21/26
    This program will have two jsp files one for submiting a form and one for displaying it

-->

<%@ page import="java.io.*" %>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Feedback Results</title>

    <style>
        body {
            font-family: "Inter", Arial, sans-serif;
            background: #f5f6f8;
            margin: 0;
            padding: 0;
        }

        .wrapper {
            max-width: 600px;
            margin: 60px auto;
            background: #ffffff;
            padding: 40px 45px;
            border-radius: 12px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.06);
        }

        h2 {
            margin: 0 0 10px 0;
            font-size: 26px;
            font-weight: 600;
            color: #222;
        }

        .subtitle {
            font-size: 14px;
            color: #666;
            margin-bottom: 25px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
            border-radius: 8px;
            overflow: hidden;
        }

        th {
            background: #f0f0f0;
            padding: 14px;
            text-align: left;
            font-size: 14px;
            font-weight: 600;
            color: #333;
        }

        td {
            padding: 14px;
            font-size: 14px;
            color: #444;
            border-bottom: 1px solid #e6e6e6;
        }

        tr:last-child td {
            border-bottom: none;
        }

        .back-btn {
            display: inline-block;
            margin-top: 25px;
            padding: 12px 20px;
            background: #111;
            color: #fff;
            text-decoration: none;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 600;
            transition: 0.2s;
        }

        .back-btn:hover {
            background: #000;
        }
    </style>
</head>

<body>

<div class="wrapper">
    <h2>Feedback Results</h2>
    <p class="subtitle">Here is the information you submitted.</p>

    <%
        String name = request.getParameter("name");
        String experienceType = request.getParameter("experienceType");
        String rating = request.getParameter("rating");
        String enjoy = request.getParameter("enjoy");
        String comments = request.getParameter("comments");
    %>

    <table>
        <tr>
            <th>Field</th>
            <th>Entered Value</th>
        </tr>

        <tr>
            <td>Name</td>
            <td><%= name %></td>
        </tr>

        <tr>
            <td>Experience Type</td>
            <td><%= experienceType %></td>
        </tr>

        <tr>
            <td>Rating</td>
            <td><%= rating %></td>
        </tr>

        <tr>
            <td>Enjoyed Most</td>
            <td><%= enjoy %></td>
        </tr>

        <tr>
            <td>Additional Comments</td>
            <td><%= comments %></td>
        </tr>
    </table>

    <a class="back-btn" href="feedbackForm.jsp">Back to Form</a>
</div>

</body>
</html>

