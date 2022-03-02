@extends('layouts.app')
@section('content')

    <div class="container">
        <div class="row">
            <div class="table-responsive">
                <button type="button" class="btn btn-primary my-3" data-toggle="modal" data-target="#addModal">
                    Add User
                </button>
                @if (session('success'))
                <div class="alert alert-success alert-dismissible fade show my-1" role="alert">
                        {{ session('success') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div> 
                @endif
                <table class="table table-bordered table-hover mb-0" id="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">role</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($users as $key => $item)
                            <tr>
                                <td scope="row">{{ ++$key }}</td>
                                <td>{{ $item->name }}</td>
                                <td>{{ $item->email }}</td>
                                <td>{{ $item->role }}</td>
                                <td>
                                    <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#editModal-{{ $item->id }}">
                                        Edit
                                    </button>
                                    <form action="{{ route('users.destroy',[$item->id]) }}" method="post" class="d-inline" onsubmit="return confirm('Delete this data permanently?')">
                                    @csrf
                                        <input type="hidden" name="_method" value="DELETE">
                                        <input type="submit" value="Delete" class="btn btn-danger btn-sm">
                                    </form>
                                </td>
                            </tr>
                            <!-- Edit Modal -->
                            <div class="modal" id="editModal-{{ $item->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Edit User</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="col-3">
                                                @if (session('error'))
                                                <div class="alert alert-danger alert-dismissible fade show my-1" role="alert">
                                                    {{ session('error') }}
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div> 
                                                @endif
                                            </div>
                                            <form action="{{ route('users.update', $item->id) }}" method="post">
                                                <input type="hidden" name="_method" value="PUT">
                                                @csrf
                                                <div class="form-group">
                                                    <label for="name">Name</label>
                                                    <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" value="{{old('name') ? old('name') : $item->name}}" id="name" >
                                                    @error('name')
                                                    <div class="invalid-feedback">
                                                        {{ $message }}    
                                                    </div>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="email">Email</label>
                                                    <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" value="{{old('email') ? old('email') : $item->email}}" id="email" >
                                                    @error('email')
                                                    <div class="invalid-feedback">
                                                        {{ $message }}    
                                                    </div>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="password">Password</label>
                                                    <input type="password" name="password" class="form-control @error('password') is-invalid @enderror" id="password" >
                                                    @error('password')
                                                    <div class="invalid-feedback">
                                                        {{ $message }}    
                                                    </div>
                                                    @enderror
                                                    <small >*don't fill it out if you don't want to change</small>
                                                </div>
                                                <div class="form-group">
                                                    <label for="role">Role</label>
                                                    <select class="form-control" name="role" id="role">
                                                        @foreach($roles as $key => $val)
                                                        @if($key==old('role', $item->role))
                                                        <option value="{{ $key }}" selected>{{ $val }}</option>
                                                        @else
                                                        <option value="{{ $key }}">{{ $val }}</option>
                                                        @endif
                                                        @endforeach
                                                    </select>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- Add Modal -->
    <div class="modal" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Create User</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="col-3">
                        @if (session('error'))
                        <div class="alert alert-danger alert-dismissible fade show my-1" role="alert">
                            {{ session('error') }}
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                        </div> 
                        @endif
                    </div>
                    <form action="{{ route('users.store') }}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" name="name"  class="form-control @error('name') is-invalid @enderror" value="{{ old('name') }}" id="name" >
                            @error('name')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" name="email"  class="form-control @error('email') is-invalid @enderror" value="{{ old('email') }}" id="email" >
                            @error('email')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" name="password"  class="form-control @error('password') is-invalid @enderror" value="{{ old('password') }}" id="password" >
                            @error('password')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="role">Role</label>
                            <select class="form-control" name="role" id="role">
                                @foreach($roles as $key => $val)
                                @if($key==old('role'))
                                <option value="{{ $key }}" selected>{{ $val }}</option>
                                @else
                                <option value="{{ $key }}">{{ $val }}</option>
                                @endif
                                @endforeach
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection