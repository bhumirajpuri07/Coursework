<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Coursework._Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="eLearningTitle">
            <h1 id="eLearningTitle">Welcome to Our E-Learning Platform</h1>
            <p class="lead">Empowering learners with interactive courses and resources.</p>
            <p><a href="Course" class="btn btn-primary btn-md">Explore Courses &raquo;</a></p>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Getting Started</h2>
                <p>
                    Dive into our interactive courses designed to provide a hands-on learning experience.
                </p>
                <p>
                    <a class="btn btn-default" href="#">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <h2 id="librariesTitle">Explore Libraries</h2>
                <p>
                    Access a wide range of resources, from textbooks to video lectures, to enhance your learning journey.
                </p>
                <p>
                    <a class="btn btn-default" href="#">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <h2 id="hostingTitle">Get Support</h2>
                <p>
                    Connect with our community and expert instructors for personalized guidance and assistance.
                </p>
                <p>
                    <a class="btn btn-default" href="#">Learn more &raquo;</a>
                </p>
            </section>
        </div>
    </main>

</asp:Content>
