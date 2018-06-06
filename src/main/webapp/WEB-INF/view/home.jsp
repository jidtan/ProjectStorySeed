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
                                    <a href="#viewStoryModal" data-id="${story.storyId}" data-toggle="modal"
                                       class="btn btn-sm btn-success btn-view" data-target="#viewStoryModal">
                                        <i class="fa fa-pencil"></i> View</a>
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


        <%--Newly Published--%>
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="content-row">
                    <h2 class="content-row-title">Newly Published</h2>

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


<div class="modal fade modal-success" tabindex="-1" role="dialog" id="viewStoryModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Success Modal</h4>
            </div>
            <div class="modal-body">

                    <h3>${story.storyTitle}</h3>

                <input type="text" name="id" id="idM"  class="form-control">
                    <p><strong>Author</strong>
                    </p>
                    <p>
                        <strong>Genre</strong>:${story.genre}
                    </p>
                    <p>
                        <strong>Summary</strong>:${story.summary}
                    </p>
                    <p>
                        <strong>Chapters</strong>:
                    </p>

                    <ul><button type="button" class="btn btn-default btn-block">Chapter 1 <strong>Epilogue</strong></button></ul>
                    <ul><button type="button" class="btn btn-default btn-block">Chapter 2 <strong>The Beginning</strong></button></ul>
                    <ul><button type="button" class="btn btn-default btn-block">Chapter 3 <strong>The Climax</strong></button></ul>
                    <ul><button type="button" class="btn btn-default btn-block">Chapter 4 <strong>The End</strong></button> </ul>
                    <p>
                        <strong>Status</strong>:${story.status}</p>
                </div>


            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-outline">Save changes</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<script type="text/javascript">
    $('.btn-view').on('click', function(){
        var id = $(this).data('id');

//        <?php echo "var url = '".asset('/brandinfo')."';";?>
        $.ajax({
            url:url+'/'+id,
            type: 'GET',

            success: function(response){
                var row = JSON.parse(response);
                console.log(row);

                $('#idM').val(id);

                $('#genreM').val(row.genre);
                $('#summaryM').val(row.summary);

            }

        });
    });
</script>

<%@include file="/WEB-INF/view/layout/footer.jsp"%>