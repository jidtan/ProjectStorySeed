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
                <div class="content-row">
                    <h2 class="content-row-title">Recommended</h2>

                    <div class="row">
                        <c:forEach items="${stories}" var="story">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                <div class="list mb-2">
                                    <div class="list-header">
                                        <a href="#" class="list-header-image">
                                            <img src="<c:url value="/resources/storyImages/${story.storyId}.png"/>" alt="image"
                                            />
                                        </a>
                                        <br><br>
                                        <center><a href="<spring:url value="/home/storyOverview/${story.storyId}"/>"
                                                   class="btn btn-success" role="button">Read more</a></center>
                                    </div>
                                    <div class="list-content">
                                        <h4><a href="#" class="text-black">${story.storyTitle}</a></h4>
                    <span class="list-meta">
                    	 <p><a class="fa fa-gittip"> 43&nbsp</a>
                         </p>
                    </span>
                                        <p>${story.summary}</p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>


        <%--Hot Stories--%>
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="content-row">
                    <h2 class="content-row-title">Hot Stories</h2>

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
                    </div>

                </div>
            </div>
        </div>


    </div>

</div>


</div>

<%@include file="/WEB-INF/view/layout/footer.jsp"%>