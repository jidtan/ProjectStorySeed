<%@include file="/WEB-INF/view/layout/header.jsp" %>


<%--<div class="col-md-12 wrapper">--%>
    <%--<div class="content">--%>
    <%--<div class="panel panel-default">--%>

    <%--<div class="panel panel-info">--%>
    <%--<div class="panel-heading">--%>
    <%--<h3 class="panel-title">Panel title</h3>--%>
    <%--</div>--%>
    <%--<div class="panel-body">--%>
    <%--Panel content--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--<section class="content-header">--%>
        <%--<h1>--%>
            <%--General UI--%>
            <%--<small>Preview of UI elements</small>--%>
        <%--</h1>--%>
        <%--<ol class="breadcrumb">--%>
            <%--<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>--%>
            <%--<li><a href="#">UI</a></li>--%>
            <%--<li class="active">General</li>--%>
        <%--</ol>--%>
    <%--</section>--%>

    <div class="col-md-12" style="padding-top: 50px;">

        <div class="row">
            <%--<form role="form">--%>
            <form:form action="${pageContext.request.contextPath}/admin/CreateStory" method="post"
                       commandName="story" enctype="multipart/form-data">
                <%--<div class="col-md-5">--%>
                    <%--&lt;%&ndash;<div class="box box-primary">&ndash;%&gt;--%>
                    <%--<div class="container">--%>
                        <%--<div class="col-md-5">--%>
                            <%--<img id="blah" src="http://placehold.it/180" alt="your image" class="image-thumbnail"--%>
                                 <%--width="300px" length="500px"/>--%>
                        <%--</div>--%>
                        <%--<br/><br/>--%>
                        <%--<input type='file' onchange="readURL(this);"/>--%>
                        <%--&lt;%&ndash;<input type="file" name="imageUpload" id="imageUpload" class="hide"/>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<label for="imageUpload" class="btn btn-large">Select file</label><br/><br/><br/>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<img src="http://placehold.it/180" id="imagePreview" alt="Preview Image" width="200px"/>&ndash;%&gt;--%>

                    <%--</div>--%>
                    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--</div>--%>

                <div class="col-md-5">
                    <div class="form-group">
                        <label class="control-label" for="storyImage">Upload Picture</label>
                        <form:input id="storyImage" path="storyImage" type="file" class="form:input-large"/>

                    </div>
                </div>
                <div class="col-md-5 ">
                    <div class="panel panel-default">
                    <%--<div class="box box-primary">--%>
                    <div class="box-header with-border">
                        <h3 class="box-title">Create a New Story</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->

                    <div class="box-body">
                        <div class="form-group">
                            <label for="storyTitle">Title</label>
                            <%--<form:errors path="storyTitle" cssStyle="color:#9f191f;"/>--%>
                            <form:input path="storyTitle" type="text" class="form-control" id="storyTitle"
                                   placeholder="Story Title"/>
                        </div>

                        <div class="form-group">
                            <label for="summary">Summary</label>
                            <form:textarea path="summary" id="summary" class="form-control" rows="3"
                                      placeholder="Write a brief description..."></form:textarea>
                        </div>

                        <div class="form-group">
                            <label>Genre</label>
                            <select class="form-control select2" style="width: 100%;">
                                <option>Romance</option>
                                <option>Horror</option>
                                <option>Comedy</option>
                                <option>Action</option>
                                <option>Fantasy</option>
                            </select>
                        </div>


                        <div class="form-group">
                            <label>Tags</label>
                            <select class="form-control select2" multiple="multiple" data-placeholder="" style="width: 100%;">
                                <option>Family</option>
                                <option>Crime</option>
                                <option>Suspense</option>
                                <option>Sci-Fi</option>
                                <option>School</option>
                                <option>Teen</option>
                                <option>Life</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="status">Status</label><br>
                            <label class="radio-inline"><form:radiobutton path="status" id="status"
                                                                          value="ongoing"/>Ongoing</label>
                            <%--<label class="checkbox-inline"><form:checkbox path="status" id="status"--%>
                                                                          <%--value="hiatus"/>Hiatus</label>--%>
                            <label class="radio-inline"><form:radiobutton path="status" id="status"
                                                                          value="completed"/>Completed</label>
                        </div>
                    </div>
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <button type="submit" class="btn btn-success">Next</button>
                    </div>

                    <%--</div>--%>
                    </div>
                </div>
                </div>
            </form:form>

    </div>


    <%--<div class="box">--%>
    <%--<div class="js--image-preview"></div>--%>
    <%--<div class="upload-options">--%>
    <%--<label>--%>
    <%--<input type="file" class="image-upload" accept="image/*" />--%>
    <%--</label>--%>
    <%--</div>--%>
    <%--</div>--%>

    <%--<div class="panel-body">--%>

<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>

<script src="<c:url value="/resources/plugins/uploader/script.js"/>"></script>
<%@include file="/WEB-INF/view/layout/footer.jsp" %>

<!-- Select2 -->
<script src="<c:url value="/resources/plugins/select2/select2.full.min.js"/>"></script>

<script>
    $(function () {
        //Initialize Select2 Elements
        $(".select2").select2();
    });

</script>