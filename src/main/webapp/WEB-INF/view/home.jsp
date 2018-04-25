<%@include file="/WEB-INF/view/layout/header.jsp"%>
<%--
  Created by IntelliJ IDEA.
  User: JadeMakie
  Date: 4/19/2018
  Time: 3:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>



<div class="col-md-12" style="padding-top: 50px;">
    <div class="content">
        <div class="panel panel-default">
            <div class="panel-body">
                <%--Recommendations--%>
                <%--<table class="table table-responsive table-hover">--%>
                <div class="content-row">
                    <h2 class="content-row-title">Recommended</h2>
                    <%--<div class="row">--%>
                    <%--<div class="col-sm-6 col-md-3">--%>
                    <%--<div class="thumbnail">--%>
                    <%--<img class="img-responsive" src="resources/dist/img/thumbnail-1.jpg">--%>
                    <%--<div class="caption text-center">--%>
                    <%--<h3>Thumbnail label</h3>--%>
                    <%--<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id ...</p>--%>
                    <%--<p><a class="glyphicon glyphicon-thumbs-up">43&nbsp</a><a class="glyphicon glyphicon-eye-open">44&nbsp</a><a class="glyphicon glyphicon-bookmark">34</a></p>--%>
                    <%--<p><a href="#" class="btn btn-warning" role="button">Read more</a></p>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>

                    <div class="row">
                        <c:forEach items="${stories}" var="story">
                        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                            <div class="list mb-2">
                                <div class="list-header">
                                    <a href="#" class="list-header-image">
                                        <img src="https://image.tmdb.org/t/p/w370_and_h556_bestv2/pcD1n9FnSkSzzlyH4frMlVzaI8I.jpg">
                                    </a>
                                    <br><br>
                                    <center><a href="#" class="btn btn-warning" role="button">Read more</a></center>
                                </div>
                                <div class="list-content">
                                    <h4><a href="#" class="text-black">${story.storyTitle}</a></h4>
                    <span class="list-meta">
                    	 <p><a class="glyphicon glyphicon-thumbs-up">43&nbsp</a>
                             <a class="glyphicon glyphicon-eye-open">44&nbsp</a>
                             <a class="glyphicon glyphicon-bookmark">34</a>
                         </p>
                    </span>
                                    <p>${story.summary}</p>
                                </div>
                            </div>
                        </div>
                        </c:forEach>


                        <%--<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">--%>
                            <%--<div class="list mb-2">--%>
                                <%--<div class="list-header">--%>
                                    <%--<a href="#" class="list-header-image">--%>
                                        <%--<img src="https://image.tmdb.org/t/p/w370_and_h556_bestv2/A3GEp5IM1JXD0TuicN58XYkYV1b.jpg">--%>
                                    <%--</a>--%>
                                    <%--<br><br>--%>
                                    <%--<center><a href="#" class="btn btn-warning" role="button">Read more</a></center>--%>
                                <%--</div>--%>
                                <%--<div class="list-content">--%>
                                    <%--<h4><a href="#" class="text-black">Lethal Weapon</a></h4>--%>
                    <%--<span class="list-meta">--%>
                    	 <%--<p><a class="glyphicon glyphicon-thumbs-up">43&nbsp</a>--%>
                             <%--<a class="glyphicon glyphicon-eye-open">44&nbsp</a>--%>
                             <%--<a class="glyphicon glyphicon-bookmark">34</a>--%>
                         <%--</p>--%>
                    <%--</span>--%>
                                    <%--<p>A slightly unhinged former Navy SEAL lands a job as a police officer in Los Angeles where he's partnered with a veteran detective trying to keep maintain a low stress...</p>--%>
                                <%--</div>--%>

                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">--%>
                            <%--<div class="list mb-2">--%>
                                <%--<div class="list-header">--%>
                                    <%--<a href="#" class="list-header-image">--%>
                                        <%--<img src="https://image.tmdb.org/t/p/w370_and_h556_bestv2/esKFbCWAGyUUNshT5HE5BIpvbcL.jpg">--%>
                                    <%--</a>--%>
                                    <%--<br><br>--%>
                                    <%--<center><a href="#" class="btn btn-warning" role="button">Read more</a></center>--%>
                                <%--</div>--%>
                                <%--<div class="list-content">--%>
                                    <%--<h4><a href="#" class="text-black">Stranger Things</a></h4>--%>
                    <%--<span class="list-meta">--%>
                        <%--<span><a class="glyphicon glyphicon-thumbs-up">43&nbsp</a>--%>
                            <%--<a class="glyphicon glyphicon-eye-open">44&nbsp</a>--%>
                            <%--<a class="glyphicon glyphicon-bookmark">34</a>--%>
                        <%--</span>--%>
                    <%--</span>--%>
                                    <%--<p>When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces, and one strange little girl.</p>--%>
                                <%--</div>--%>

                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">--%>
                            <%--<div class="list mb-2">--%>
                                <%--<div class="list-header">--%>
                                    <%--<a href="#" class="list-header-image">--%>
                                        <%--<img src="https://image.tmdb.org/t/p/w370_and_h556_bestv2/fkj2HgV3cfRBqJjSSwS7zJVyuXD.jpg">--%>
                                    <%--</a>--%>
                                    <%--<br><br>--%>
                                    <%--<center><a href="#" class="btn btn-warning" role="button">Read more</a></center>--%>
                                <%--</div>--%>
                                <%--<div class="list-content">--%>
                                    <%--<h4><a href="#" class="text-black">Pure Genius</a></h4>--%>
                    <%--<span class="list-meta">--%>
                         <%--<p><a class="glyphicon glyphicon-thumbs-up">43&nbsp</a>--%>
                             <%--<a class="glyphicon glyphicon-eye-open">44&nbsp</a>--%>
                             <%--<a class="glyphicon glyphicon-bookmark">34</a>--%>
                         <%--</p>--%>
                    	<%--&lt;%&ndash;<span class="list-meta-item"><i class="fa fa-clock-o"></i> 2016</span>&ndash;%&gt;--%>
                    	<%--&lt;%&ndash;<a href="#" class="list-meta-item"><i class="fa fa-star"></i> 6.42</a>&ndash;%&gt;--%>
                    <%--</span>--%>
                                    <%--<p>A young Silicon Valley tech-titan enlists a veteran surgeon with a controversial past in starting a hospital with a cutting-edge, new school approach to medicine.</p>--%>
                                <%--</div>--%>

                            <%--</div>--%>
                        <%--</div>--%>
                    </div>
                </div>
                <%--</table>--%>
            </div>
        </div>


        <%--Hot Stories--%>


        <table class="table table-responsive table-hover">
            <div class="content-row">
                <h2 class="content-row-title">Hot Stories</h2>
                <div class="row">
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img class="img-responsive" src="resources/dist/img/thumbnail-1.jpg">
                            <div class="caption text-center">
                                <h3>Thumbnail label</h3>
                                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id ...</p>
                                <p><a href="#" class="btn btn-warning" role="button">Button</a>  <a href="#" class="btn btn-default" role="button">Button</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </table>
        <hr class="dashed">
        <%--Newly Published--%>
        <table class="table table-responsive table-hover">
            <div class="content-row">
                <h2 class="content-row-title">Newly Published</h2>
                <div class="row">
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img class="img-responsive" src="resources/dist/img/thumbnail-1.jpg">
                            <div class="caption text-center">
                                <h3>Thumbnail label</h3>
                                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id ...</p>
                                <p><a href="#" class="btn btn-warning" role="button">Button</a>  <a href="#" class="btn btn-default" role="button">Button</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </table>
        <hr class="dashed">
        <%--Top Writers--%>
        <table class="table table-responsive table-hover">
            <div class="content-row">
                <h2 class="content-row-title">Newly Published</h2>
                <div class="row">
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img class="img-circle " src="resources/dist/img/photo-2.jpg">
                            <div class="caption text-center">
                                <h3>Thumbnail label</h3>
                                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id ...</p>
                                <p><a href="#" class="btn btn-warning" role="button">Button</a>  <a href="#" class="btn btn-default" role="button">Button</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img class="img-circle" src="resources/dist/img/photo-4.jpg">
                            <div class="caption text-center">
                                <h3>Thumbnail label</h3>
                                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id ...</p>
                                <p><a href="#" class="btn btn-warning" role="button">Button</a>  <a href="#" class="btn btn-default" role="button">Button</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </table>
    </div>

</div>


</div>

<%@include file="/WEB-INF/view/layout/footer.jsp"%>