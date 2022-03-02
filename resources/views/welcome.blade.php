@extends('layouts.app')
@section('content')

<div class="container">
    @isset($category)
    <h2 class="text-center my-3">Article Category: {{ $category->name }}</h2>
    @endisset
    @isset($tag)
    <h2 class="text-center my-3">Article Tag: {{ $tag->name }}</h2>
    @endisset
    @if (!isset($tag) && !isset($category))
    <h2 class="text-center my-3">All Article</h2>
    @endif

    <div class="row">
        <div class="col-md-8 offset-md-2">
            <form class="form" method="get" action="{{ route('search') }}">
                <div class="input-group mb-4">
                    <input type="text" name="search" class="form-control" id="search" placeholder="Searching">
                    <div class="input-group-append">
                        <input type="submit" class="btn btn-primary btn-xs" value="Search">
                    </div>
                </div>
            </form>
        </div>
        @foreach ($posts as $item)
        <div class="col-md-4 mb-3">
            <div class="card">
                <img src="{{ asset('storage/'.$item->cover) }}" class="card-img-top" alt="...">
                <div class="card-body">
                    <a href="{{ route('show', $item->slug) }}" class="text-dark">
                        <h3 class="card-title">{{ $item->title }}</h3> 
                    </a>
                    <h6 class="text-dark">{{ $item->meta_desc }}</h6>
                </div>
                <div class="card-footer">
                    <div class="d-flex mx-auto">
                        @foreach ($item->tags as $tags)
                        <a style="text-decoration: none" href="{{ route('tag', $tags->slug) }}"><span class="badge badge-secondary mr-1">{{ $tags->name }}</span> </a>
                        @endforeach
                        <small class="text-muted ml-auto">{{ Carbon\Carbon::parse($item->created_at)->diffForHumans()}}</small>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
    <div class="col-md-2 offset-md-10">
        {{ $posts->links() }} 
    </div>   
</div>
@endsection