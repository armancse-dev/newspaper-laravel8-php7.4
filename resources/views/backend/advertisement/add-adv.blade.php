@extends('backend.master')
@section('content')

<div class="container-fluid">
	<div class="row">
		<div class="col-sm-10 title">
			<h1><i class="fa fa-bars"></i> Add New Advertisement</h1>
		</div>
        <div class="col-sm-12">
            @if (Session::has('message'))
			<div class="alert alert-success alert-disable fade in">
				<a href="" class="close" data-dismiss="alert" >&time;</a>
				{{ Session('message')}}
			</div>
			@endif
        </div>
		<div class="col-sm-12">
			<div class="row">
				<form method="post" action="{{url('addadv')}}" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <input type="hidden" name="tbl" value="{{encrypt('advertisements')}}" >
					<div class="col-sm-12">
						<div class="form-group">

                            <input type="text" name="title" class="form-control" placeholder="Enter title here">

						</div>
						<div class="form-group">
							<input type="url" name="url" class="form-control"
							placeholder="Enter Url here">
						</div>

					</div>
					{{-- <div class="col-sm-3"> --}}
						{{-- <div class="content publish-box">
							<h4>Publish  <span class="pull-right"><i class="fa fa-chevron-down"></i></span></h4><hr>
							<div class="form-group">
								<button class="btn btn-default" name="status" value="draft">Save Draft</button>
							</div>
							<p>Status: Draft <a href="#">Edit</a></p>
							<p>Visibility: Public <a href="#">Edit</a></p>
							<p>Publish: Immediately <a href="#">Edit</a></p>
							<div class="row">
								<div class="col-sm-12 main-button">
									<button class="btn btn-primary pull-right" name="status" value="publish" >Publish</button>
								</div>
							</div>
						</div> --}}


						<div class="forum-group content featured-image">
							<h4>Advertisement Image <span class="pull-right"><i class="fa fa-chevron-down"></i></span></h4><hr>
                            <p><img id="output" style="max-width: 100%" /></p>
                            <p><input type="file"  accept="image/*" name="image" id="file"  onchange="loadFile(event)" style="display: none;"></p>
                            <p><label for="file" style="cursor: pointer;" >Upload Advertisement Image</label></p>
						</div>
                        <div class="form-gorup">
                            <label>Location</label>
                            <select name="location" class="form-control">
                                <option>leaderboard</option>
                                <option>sidebar</option>
                                <option>sidebar-top</option>
                                <option>sidebar-bottom</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Status</label>
                            <select name="status" class="form-control">
                                <option>display</option>
                                <option>hide</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <button class="btn btn-primary">Add Advertisement</button>
                        </div>
					{{-- </div> --}}
				</form>
			</div>
		</div>
	</div>
</div>


{{-- <script src="{{url('public/ckeditor/ckeditor.js')}}"></script>
<script>
	CKEDITOR.replace('description', { "filebrowserBrowseUrl": "ckfinder\/ckfinder.html", "filebrowserImageBrowseUrl": "ckfinder\/ckfinder.html?type=Images", "filebrowserFlashBrowseUrl": "/ckfinder\/ckfinder.html?type=Flash", "filebrowserUploadUrl": "ckfinder\/core\/connector\/php\/connector.php?command=QuickUpload&type=Files", "filebrowserImageUploadUrl": "ckfinder\/core\/connector\/php\/connector.php?command=QuickUpload&type=Images", "filebrowserFlashUploadUrl": "ckfinder\/core\/connector\/php\/connector.php?command=QuickUpload&type=Flash" });
</script> --}}

<script>
    var loadFile = function(event) {
        var image = document.getElementById('output');
        image.src = URL.createObjectURL(event.target.files[0]);
    };
</script>

@stop
