@extends('layouts.app')
@section('content')

<div class="container">

@isset($category)
<h1 class="text-center my-3">Article Category: {{ $category->name }}</h1>
@endisset
@isset($tag)
<h1 class="text-center my-3">Article Tag: {{ $tag->name }}</h1>
@endisset
@if (!isset($tag) && !isset($category))
<h1 class="text-center my-3">All Article</h1>
@endif

    <div class="row">
        @foreach ($posts as $item)
        <div class="col-md-4 col-sm-12 mb-3">
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
                        <a href="{{ route('tag', $tags->slug) }}"><span class="badge badge-secondary mr-1">{{ $tags->name }}</span> </a>
                        @endforeach
                        <small class="text-muted ml-auto">{{ Carbon\Carbon::parse($item->created_at)->diffForHumans()}}</small>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
        {{-- Current Page: {{ $posts->currentPage() }}<br>
        Jumlah Data: {{ $posts->total() }}<br>
        Data perhalaman: {{ $posts->perPage() }}<br> --}}
        <br>
        {{ $posts->links() }}
       
</div>
@endsection