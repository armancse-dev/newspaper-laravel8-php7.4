@extends('frontend.master')

@section('content')

<div class="wrapper">
  @if (count($featured) > 0)
  <div class="row">
    @foreach ($featured as $key=>$f)
    @if ($key == 0)
      <div class="col-md-6">
        <div class="relative">
            <a href="{{url('article')}}/{{$f->slug}}">
                <img src="{{url('public/posts')}}/{{$f->image}}" width="100%" />
                <span class="caption">{{$f->title}}</span>
            </a>
        </div>
    	</div>
    @endif
    @endforeach

    	<div class="col-md-6">
    		<div class="row">
                @foreach ($featured as $key=>$f)
                @if ($key > 0 && $key < 3)
        		<div class="col-md-6">
        	    	<div class="relative">
                        <a href="{{url('article')}}/{{$f->slug}}">
                            <img src="{{url('public/posts')}}/{{$f->image}}" width="100%" />
                            <span class="caption">{{$f->title}}</span>
                        </a>
                    </div>
        	    </div>
                @endif
                @endforeach
        	</div>
        	<div class="row" style="margin-top:30px;">
                @foreach ($featured as $key=>$f)
                @if ($key > 3 && $key < 6)
        		<div class="col-md-6">
        	    	<div class="relative">
                        <a href="{{url('article')}}/{{$f->slug}}">
                            <img src="{{url('public/posts')}}/{{$f->image}}" width="100%" />
                            <span class="caption">{{$f->title}}</span>
                        </a>
                    </div>
        	    </div>
                @endif
                @endforeach

  </div>
</div>

	</div>
    @endif


    <div class="row" style="margin-top:30px;">
    	<div class="col-md-8">
        <div class="col-md-12" style="border:1px solid #ccc; padding:15px 15px 30px 0px;">
        	<div class="col-md-12">
        		<h3 style="border-bottom:3px solid #81d742; padding-bottom:5px;"><span style="padding:6px 12px; background:#81d742;">News</span></h3>
        	</div>
        	<div class="col-md-6">
                @foreach ($general as $key=>$g)
                @if ($key == 0)
                <a href="{{url('article')}}/{{$g->slug}}"><img src="{{url('public/posts')}}/{{$g->image}}" width="100%" style="margin-bottom:15px;" /></a>
                <h3><a href="{{url('article')}}/{{$g->slug}}">{{$g->title}}</a></h3>
        		<p align="justify">{!! substr($g->description,0,300)!!}</p>Read more &raquo; <a href="{{url('article')}}/{{$g->slug}}{{$g->title}}"></a>
                @endif
                @endforeach
            </div>
            <div class="col-md-6">
                @foreach ($general as $key=>$g)
                @if ($key > 0 && $key < 6)
            	<div class="row" style="border-bottom:1px solid #ccc; padding-bottom:10px; margin-bottom:10px;">
	            	<div class="col-md-4">
                    	<div class="row">
    	            		<a href="{{url('article')}}/{{$g->slug}}"><img src="{{url('public/posts')}}/{{$g->image}}" width="100%" /></a>
        	        	</div>
                    </div>
            	    <div class="col-md-8">
                    	<div class="row">
                			<h4><a href="{{url('article')}}/{{$g->slug}}">{{$g->title}}</a></h4>
                		</div>
                    </div>
                    @endif
                    @endforeach
                </div>
            </div>
        </div>

	        <div class="col-md-12 image-gallery" style="border:1px solid #ccc; padding:15px 15px 30px 15px; margin-top:30px; margin-bottom:30px;">
    	    	<h3 style="border-bottom:3px solid #81d742; padding-bottom:5px;"><span style="padding:6px 12px; background:#81d742;">BUSINESS</span></h3>

                <div class="flex">
                    @foreach ($business->take(5) as $b)
                    <div>
                    <a href="{{url('article')}}/{{$b->slug}}"><img src="{{url('public/posts')}}/{{$b->image}}" /></a>
                    </div>
                    @endforeach
                </div>

	        </div>

        <div class="row">
        	<div class="col-md-6">
            <div class="col-md-12" style="border:1px solid #ccc; padding-bottom:30px;">
            	<div class="col-md-12" style="border-bottom:1px solid #ccc; padding:20px 10px; margin-bottom:10px;">
                <h3 style="border-bottom:3px solid #b952c8; padding-bottom:5px;"><span style="padding:6px 12px; background:#b952c8;">SPORTS</span></h3>
                    @foreach ($sports as $key=>$s)
                    @if ($key == 0)
                    <a href="{{url('article')}}/{{$s->slug}}">
                        <img src="{{url('public/posts')}}/{{$s->image}}" width="100%" style="margin-bottom:15px;" />
                    </a>
                    <h3><a href="{{url('article')}}/{{$s->slug}}">{{$s->title}}</a></h3>
                    <p align="justify">{!! substr($s->description,0,300)!!}</p>
                    Read more &raquo;
                    <a href="{{url('article')}}/{{$g->slug}}{{$g->title}}"></a>
                    @endif
                    @endforeach
            	</div>

                @foreach ($sports as $key=>$s)
                @if ($key > 0 && $key < 5)
                <div class="col-md-12" style="border-bottom:1px solid #ccc; padding-bottom:10px; margin-bottom:10px;">
	            	<div class="col-md-4">
                    	<div class="row fashion">
    	            		<a href="{{url('article')}}/{{$s->slug}}"><img src="{{url('public/posts')}}/{{$s->image}}" width="100%" /></a>
        	        	</div>
                    </div>
            	    <div class="col-md-8">
                    	<div class="row">
                			<h4><a href="{{url('article')}}/{{$s->slug}}">{{$s->title}}</a></h4>
                		</div>
                    </div>
                </div>
                @endif
                @endforeach

            </div></div>

        	<div class="col-md-6">

            <div class="col-md-12" style="border:1px solid #ccc; padding-bottom:30px;">
            	<div class="col-md-12" style="border-bottom:1px solid #ccc; padding:20px 10px; margin-bottom:10px;">
                <h3 style="border-bottom:3px solid #d95757; padding-bottom:5px;"><span style="padding:6px 12px; background:#d95757;">TECHNOLOGY</span></h3>
                @foreach ($technology as $key=>$t)
                @if ($key == 0)
                <a href="{{url('article')}}/{{$t->slug}}">
                    <img src="{{url('public/posts')}}/{{$t->image}}" width="100%" style="margin-bottom:15px;" />
                </a>
                <h3><a href="{{url('article')}}/{{$t->slug}}">{{$t->title}}</a></h3>
                <p align="justify">{!! substr($t->description,0,300)!!}</p>
                Read more &raquo;
                <a href="{{url('article')}}/{{$t->slug}}{{$t->title}}"></a>
                @endif
                @endforeach
            	</div>

                @foreach ($technology as $key=>$t)
                @if ($key > 0 && $key < 5)
                <div class="col-md-12" style="border-bottom:1px solid #ccc; padding-bottom:10px; margin-bottom:10px;">
	            	<div class="col-md-4">
                    	<div class="row fashion">
    	            		<a href="{{url('article')}}/{{$t->slug}}"><img src="{{url('public/posts')}}/{{$t->image}}" width="100%" /></a>
        	        	</div>
                    </div>
            	    <div class="col-md-8">
                    	<div class="row" style="padding-left:0px;">
                			<h4><a href="{{url('article')}}/{{$t->slug}}">{{$t->title}}</a></h4>
                		</div>
                    </div>
                </div>

                @endif
                @endforeach

            </div></div>

        <div class="col-md-12">
        	<div class="col-md-12" style="border:1px solid #ccc; padding:15px 15px 30px 0px; margin-top:30px;">
			    <div class="col-md-12">
                <h3 style="border-bottom:3px solid #81d742; padding-bottom:5px;"><span style="padding:6px 12px; background:#81d742;">HEALTH</span></h3>
                </div>
                <div class="col-md-6">
                    @foreach ($health as $key=>$h)
                    @if ($key == 0)
                    <a href="{{url('article')}}/{{$h->slug}}">
                        <img src="{{url('public/posts')}}/{{$h->image}}" width="100%" style="margin-bottom:15px;" />
                    </a>
                    <h3><a href="{{url('article')}}/{{$h->slug}}">{{$h->title}}</a></h3>
                    <p align="justify">{!! substr($h->description,0,300)!!}</p>
                    Read more &raquo;
                    <a href="{{url('article')}}/{{$h->slug}}{{$h->title}}"></a>
                    @endif
                    @endforeach
                </div>
                <div class="col-md-6">
                    @foreach ($health as $key=>$h)
                    @if ($key > 0 && $key < 5)
                    <div class="row" style="border-bottom:1px solid #ccc; padding-bottom:10px; margin-bottom:10px;">
                        <div class="col-md-4">
                            <div class="row">
                                <a href="{{url('article')}}/{{$h->slug}}"><img src="{{url('public/posts')}}/{{$h->image}}" width="100%" /></a>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="row" style="padding-left:10px;">
                                <h4><a href="{{url('article')}}/{{$h->slug}}">{{$h->title}}</a></h4>
                            </div>
                        </div>
                    </div>
                    @endif
                    @endforeach
                </div>
            </div>
		</div>

        <div class="col-md-12 image-gallery" style="border:1px solid #ccc; padding:15px 15px 30px 15px; margin-top:30px; margin-bottom:30px;">
            <h3 style="border-bottom:3px solid #81d742; padding-bottom:5px;"><span style="padding:6px 12px; background:#81d742;">Travel</span></h3>

            <div class="flex">
                @foreach ($travel->take(5) as $tr)
                <div>
                <a href="{{url('article')}}/{{$tr->slug}}"><img src="{{url('public/posts')}}/{{$tr->image}}" /></a>
                </div>
                @endforeach
            </div>

        </div>

        <div class="col-md-12">
        	<div class="col-md-12" style="border:1px solid #ccc; padding:15px 15px 30px 0px; margin-top:30px;">
			    <div class="col-md-12">
                <h3 style="border-bottom:3px solid #81d742; padding-bottom:5px;"><span style="padding:6px 12px; background:#81d742;">Entertainmaint</span></h3>
                </div>
                <div class="col-md-6">
                    @foreach ($entertainment as $key=>$ent)
                    @if ($key == 0)
                    <a href="{{url('article')}}/{{$ent->slug}}">
                        <img src="{{url('public/posts')}}/{{$ent->image}}" width="100%" style="margin-bottom:15px;" />
                    </a>
                    <h3><a href="{{url('article')}}/{{$ent->slug}}">{{$ent->title}}</a></h3>
                    <p align="justify">{!! substr($ent->description,0,300)!!}</p>
                    Read more &raquo;
                    <a href="{{url('article')}}/{{$ent->slug}}{{$ent->title}}"></a>
                    @endif
                    @endforeach
                </div>
                <div class="col-md-6">
                    @foreach ($entertainment as $key=>$ent)
                    @if ($key > 0 && $key < 5)
                    <div class="row" style="border-bottom:1px solid #ccc; padding-bottom:10px; margin-bottom:10px;">
                        <div class="col-md-4">
                            <div class="row">
                                <a href="{{url('article')}}/{{$ent->slug}}"><img src="{{url('public/posts')}}/{{$ent->image}}" width="100%" /></a>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="row" style="padding-left:10px;">
                                <h4><a href="{{url('article')}}/{{$ent->slug}}">{{$ent->title}}</a></h4>
                            </div>
                        </div>
                    </div>
                    @endif
                    @endforeach
                </div>
            </div>
		</div>
        </div>
        </div>


        <div class="col-md-4">
          <div class="col-md-12" style="border:1px solid #ccc; padding:15px;">
			      <h3 style="border-bottom:3px solid #2b99ca; padding-bottom:5px;">
              <span style="padding:6px 12px; background:#2b99ca;">Politics</span>
            </h3>
            @foreach ($politics->take(10) as $pol)
              <div class="col-md-12" style="border-bottom:1px solid #ccc; padding-bottom:10px; margin-bottom:10px;">
                <div class="col-md-4">
                  <div class="row">
                      <a href="{{url('article')}}/{{$pol->slug}}">
                        <img src="{{url('public/posts')}}/{{$pol->image}}" width="100%" style="margin-left:-15px;" />
                      </a>
                  </div>
                </div>
                <div class="col-md-8">
                  <div class="row" style="padding-left:10px;">
                    <h4>
                      <a href="{{url('article')}}/{{$pol->slug}}">{{$pol->title}}</a>
                    </h4>
                  </div>
                </div>
              </div>
            @endforeach
          </div>

          <div class="col-md-12" style="border:1px solid #ccc; padding:15px 15px 60px 15px; margin-top:30px;">
          	<div class="col-md-12" style="border-bottom:1px solid #ccc; padding:0px 10px 20px 10px; margin-bottom:10px;">
           		<h3 style="border-bottom:3px solid #2b99ca; padding-bottom:5px;"><span style="padding:6px 12px; background:#2b99ca;">Style</span></h3>
              @foreach ($style as $sty)
              @if ($key == 0)
                <a href="{{url('article')}}/{{$sty->slug}}">
                  <img src="{{url('public/posts')}}/{{$$sty->image}}" width="100%" style="margin-bottom:15px;" />
                </a>
                {!! substr($sty->description,0,300) !!}
                <a href="{{url('article')}}/{{$sty->slug}}">Read more &raquo;</a>
              @endif
              @endforeach
            </div>

            @foreach ($style as $sty)
            @if ($key > 0 && $key < 10)
            <div class="col-md-12" style="border-bottom:1px solid #ccc; padding-bottom:10px; margin-bottom:10px;">
            <div class="col-md-4">
              <div class="row">
                <a href="{{url('article')}}/{{$sty->slug}}"><img src="{{url('public/posts')}}/{{$sty->image}}" width="100%" style="margin-bottom:15px;" /></a>
              </div>
            </div>
            <div class="col-md-8">
              <div class="row" style="padding-left:0px;">
                <h4><a href="{{url('article')}}/{{$sty->slug}}">{{$sty->title}}</a></h4>
              </div>
            </div>
          </div>
          @endif
          @endforeach
        </div>

      </div>
  </div>
</div>

@stop
