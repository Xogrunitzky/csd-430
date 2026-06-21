
<!--
    Xavier Grunitzky
    Module 3.2 Assignment
    6/21/26
    This program will have two jsp files one for submitting a form and one for displaying it>
-->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Restaurant Experience Feedback</title>

    <style>
        body {
            font-family: "Inter", Arial, sans-serif;
            background: #f5f6f8;
            margin: 0;
            padding: 0;
        }

        .wrapper {
            max-width: 480px;
            margin: 60px auto;
            background: #ffffff;
            padding: 40px 45px;
            border-radius: 12px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.06);
        }

        h2 {
            margin: 0 0 8px 0;
            font-size: 26px;
            font-weight: 600;
            color: #222;
        }

        .subtitle {
            font-size: 14px;
            color: #666;
            margin-bottom: 28px;
        }

        .form-group {
            margin-bottom: 22px;
        }

        label {
            display: block;
            font-size: 14px;
            font-weight: 500;
            margin-bottom: 6px;
            color: #333;
        }

        input[type="text"],
        input[type="number"],
        select,
        textarea {
            width: 100%;
            padding: 12px 14px;
            font-size: 14px;
            border: 1px solid #dcdcdc;
            border-radius: 8px;
            background: #fafafa;
            transition: 0.2s;
        }

        input:focus,
        select:focus,
        textarea:focus {
            border-color: #4a7dfc;
            background: #fff;
            outline: none;
            box-shadow: 0 0 0 3px rgba(74,125,252,0.15);
        }

        textarea {
            resize: vertical;
            min-height: 90px;
        }

        .checkbox-group label {
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: 400;
        }

        .btn-submit {
            width: 100%;
            padding: 14px 0;
            background: #111;
            color: #fff;
            border: none;
            border-radius: 8px;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
        }

        .btn-submit:hover {
            background: #000;
        }
    </style>
</head>

<body>

<div class="wrapper">
    <h2>Restaurant Feedback</h2>
    <p class="subtitle">Tell us about your recent dining experience.</p>

    <form action="displayFeedback.jsp" method="post">

        <div class="form-group">
            <label>Your Name</label>
            <input type="text" name="name">
        </div>

        <div class="form-group">
            <label>Type of Experience</label>
            <select name="experienceType">
                <option>Meal Quality</option>
                <option>Service</option>
                <option>Cleanliness</option>
                <option>Overall Experience</option>
            </select>
        </div>

        <div class="form-group">
            <label>Rating (1-5)</label>
            <input type="number" name="rating" min="1" max="5">
        </div>

        <div class="form-group">
            <label>What did you enjoy?</label>
            <div class="checkbox-group">
                <label><input type="checkbox" name="enjoy" value="Food"> Food</label>
                <label><input type="checkbox" name="enjoy" value="Service"> Service</label>
                <label><input type="checkbox" name="enjoy" value="Atmosphere"> Atmosphere</label>
            </div>
        </div>

        <div class="form-group">
            <label>Additional Comments</label>
            <textarea name="comments"></textarea>
        </div>

        <button class="btn-submit" type="submit">Submit Feedback</button>
    </form>
</div>

</body>
</html>

