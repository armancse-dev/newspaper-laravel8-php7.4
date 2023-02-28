@extends('frontend.master')
@section('title')
<title>Contact Us | WhatsOn</title>
@stop
@section('content')
<div id="fb-root"></div>
<div class="wrapper">

    <div class="row" style="margin-top:30px;">
        <div class="col-md-8">
            <div class="col-md-12" style="padding:15px 15px 30px 0px;">
                <div class="col-md-12">
                    <h1>Contact Us</h1>
                </div>

                @if (Session::has('message'))
                    <div class="col-sm-12">
                        <div class="alert alert-success alert-disable fade in">
                            <a href="" class="close" data-dismiss="alert" >&time;</a>
                            {{ Session('message')}}
                        </div>
                    </div>
                @endif

                <div class="col-sm-6">
                    <form method="POST" action="{{url('sendmessage')}}">
                        {{ csrf_field() }}
                        <input type="hidden" name="tbl" id="" value="{{encrypt('messages')}}">
                        <div class="form-group">
                            <label for="name">Your Name</label>
                            <input type="text" name="name" class="form-control" >
                        </div>

                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" name="email" class="form-control" >
                        </div>

                        <div class="form-group">
                            <label for="phone">Phone</label>
                            <input type="tel" name="phone" class="form-control" >
                        </div>

                        <div class="form-group">
                            <label for="message">Your Message</label>
                            <textarea class="form-control" name="message" id="message" cols="30" rows="10"></textarea>
                        </div>
                        <div class="form-group">
                            <button class="btn btn-success">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- right section -->
        <div class="col-md-4">
            <div class="col-md-12" style="padding:15px;">
                <h3 style="border-bottom:3px solid #2b99ca; padding-bottom:5px;">
                    <span style="padding:6px 12px; background:#2b99ca;">LETEST NEWS</span>
                </h3>
                @foreach ($letest->take(10) as $l)
                <div class="col-md-12" style="border-bottom:1px solid #ccc; padding-bottom:10px; margin-bottom:10px;">
                    <div class="col-md-4">
                        <div class="row">
                            <a href="{{url('article')}}/{{$l->slug}}">
                                <img src="{{url('public/posts')}}/{{$l->image}}" width="100%" style="margin-left:-15px;" />
                            </a>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="row" style="padding-left:10px;">
                            <h4><a href="{{url('article')}}/{{$l->slug}}">{{$l->title}}</a></h4>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>


            @foreach ($letest->take(10) as $l)
            <div class="col-md-12" style="border-bottom:1px solid #ccc; padding-bottom:10px; margin-bottom:10px;">
                <div class="col-md-4">
                    <div class="row">
                        <a href="{{url('article')}}/{{$l->slug}}">
                            <img src="{{url('public/posts')}}/{{$l->image}}" width="100%" style="margin-left:-15px;" />
                        </a>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="row" style="padding-left:10px;">
                        <h4><a href="{{url('article')}}/{{$l->slug}}">{{$l->title}}</a></h4>
                    </div>
                </div>
            </div>
            @endforeach

            @if ($sidebarTop)
                    <div class="col-sm-12 sidebar-adv">
                        <a href="{{$sidebarTop->url}}">
                            <img src="{{url('public/advertisements')}}/{{$sidebarTop->image}}" width="100%" alt="{{$sidebarTop->title}}"/>
                        </a>
                    </div>
                @endif

                @if ($sidebarBottom)
                    <div class="col-sm-12 sidebar-adv">
                        <a href="{{$sidebarBottom->url}}">
                            <img src="{{url('public/advertisements')}}/{{$sidebarBottom->image}}" width="100%" alt="{{$sidebarBottom->title}}"/>
                        </a>
                    </div>
                @endif
        </div>
    </div>
</div>
@stop
