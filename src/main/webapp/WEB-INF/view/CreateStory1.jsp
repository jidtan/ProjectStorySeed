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
            <form role="form">
                <div class="col-md-5">
                    <%--<div class="box box-primary">--%>
                    <div class="container">
                        <div class="col-md-5">
                            <img id="blah" src="http://placehold.it/180" alt="your image" class="image-thumbnail"
                                 width="300px" length="500px"/>
                        </div>
                        <br/><br/>
                        <input type='file' onchange="readURL(this);"/>
                        <%--<input type="file" name="imageUpload" id="imageUpload" class="hide"/>--%>
                        <%--<label for="imageUpload" class="btn btn-large">Select file</label><br/><br/><br/>--%>
                        <%--<img src="http://placehold.it/180" id="imagePreview" alt="Preview Image" width="200px"/>--%>

                    </div>
                    <%--</div>--%>
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
                            <input type="text" class="form-control" id="storyTitle"
                                   placeholder="Story Title">
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea class="form-control" rows="3"
                                      placeholder="Write a brief description..."></textarea>
                        </div>
                        <div class="form-group">
                            <label>Genre</label>
                            <select class="form-control">
                                <option>Romance</option>
                                <option>Horror</option>
                                <option>Comedy</option>
                                <option>Action</option>
                                <option>Fantasy</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Tags</label>
                            <select class="form-control select2 select2-hidden-accessible" multiple="multiple"
                                    data-placeholder="select tags" style="width: 100%;" tabindex="-1"
                                    aria-hidden="true">
                                <option>Family</option>
                                <option>Crime</option>
                                <option>Suspense</option>
                                <option>Sci-Fi</option>
                                <option>School</option>
                                <option>Teen</option>
                                <option>Life</option>
                            </select>
                            <%--<span class="select2 select2-container select2-container--default select2-container--focus" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--multiple" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1"><ul class="select2-selection__rendered"><li class="select2-search select2-search--inline"><input class="select2-search__field" type="search" tabindex="0" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" role="textbox" aria-autocomplete="list" placeholder="Select a State" style="width: 618px;"></li></ul></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                        </div>
                    </div>
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>

                    <%--</div>--%>
                    </div>
                </div>
            </form>
        </div>
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
<script src="/resources/plugins/select2/select2.full.min.js"></script>

<script>
    $(function () {
        //Initialize Select2 Elements
        $(".select2").select2();
    });

</script>