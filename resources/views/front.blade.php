@extends('template.app')

@section('content')

<!-- section -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">

          @foreach ($artikel as $item)
            <!-- post Atas -->
            <div class="col-md-6">
                <div class="post post-thumb">
                    <a class="post-img" href="#"><img src="{{asset('uploads/'.$item->gambar)}}" alt=""  height="350px" width="350px" ></a>
                    <div class="post-body">
                        <div class="post-meta">
                            <a class="post-category cat-2" href="category.html">{{ $item->Kategori->nama_kategori }}</a>
                            <span class="post-date">{{$item->created_at}}</span>
                        </div>
                        <h3 class="post-title"><a href="{{ route('artikel.detail', $item->judul) }}">{{$item->judul}}</a></h3>
                    </div>
                </div>
            </div>
            <!-- /post Atas -->
          @endforeach
        </div>
        <!-- /row -->

        <!-- row -->
        <div class="row">
            <div class="col-md-12">
                <div class="section-title">
                    <h2>Recent Posts</h2>
                </div>
            </div>
            <div class="clearfix visible-md visible-lg"></div>
        </div>
        <!-- /row -->

        <!-- row -->

        <div class="row">

            <div class="col-md-8">
                <div class="row">
                        <div class="clearfix visible-md visible-lg"></div>
                    @foreach ($artikelall as $item)
                    <!-- post Content-->
                    <div class="col-md-6">
                        <div class="post">
                            <a class="post-img" href="blog-post.html"><img src="{{asset('uploads/'.$item->gambar)}}"
                                    alt="" height="250px" width="250px" ></a>
                            <div class="post-body">
                                <div class="post-meta">
                                    <a class="post-category cat-2" href="category.html">{{ $item->Kategori->nama_kategori }}</a>
                                    <span class="post-date">{{$item->created_at}}</span>
                                </div>
                                <h3 class="post-title"><a href="{{ route('artikel.detail', $item->judul) }}">{{$item->judul}}</a></h3>
                            </div>
                        </div>
                    </div>
                    <!-- /post Content -->
                    @endforeach
                    <div class="clearfix visible-md visible-lg"></div>
                </div>
            </div>

            <div class="col-md-4">
                <!-- post widget Terkait -->
                <div class="aside-widget">
                    <div class="section-title">
                        <h2>Most Read</h2>
                    </div>

                      @foreach ($artikelterkait  as $item)
                        <div class="post post-widget">
                            <a class="post-img" href="blog-post.html"><img src="{{asset('uploads/'.$item->gambar)}}"
                                    alt="" height="80px" width="80px" ></a>
                            <div class="post-body">
                                <h3 class="post-title"><a href="{{ route('artikel.detail', $item->judul) }}">{{$item->judul}}</a></h3>
                            </div>
                        </div>
                     @endforeach

                </div>
            </div>
        </div>
        <!-- /row Terkait -->
    </div>
    <!-- /container -->
</div>
<!-- /section -->

@endsection
