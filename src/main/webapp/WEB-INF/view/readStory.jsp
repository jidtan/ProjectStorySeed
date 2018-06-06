<%@include file="/WEB-INF/view/layout/header.jsp"%>


<div class="col-md-12 col-sm-12" style="padding-top: 50px;">
    <div class="content">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="content-row">

                    <div class="col-md-5 ">
                        <img src="<c:url value="/resources/storyImages/${story.storyId}.png"/>" alt="image"
                             style="width:75%;height: 500px"/>

                    </div>
                    <div class="col-md-5">
                        <h3>${story.storyTitle}</h3>
                        <p><strong>Author</strong>
                        </p>
                        <p>
                            <strong>Genre</strong>:${story.genre}
                        </p>
                        <p>
                            <strong>Summary</strong>:${story.summary}
                        </p>
                        <p>
                            <strong>Status</strong>:${story.status}</p>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>



</div>

<%@include file="/WEB-INF/view/layout/footer.jsp"%>