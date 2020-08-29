@extends('layouts.admin')

@section('body')

@include('../components/alert')
<div class="table-responsive">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>#id</th>
                <th>Timestamp</th>
                <th>Resolved by</th>
                <th>Category</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>

            @foreach($emails as $email)
            <tr>
                <td>{{$email->id}}</td>
                <td>{{$email->updated_at}}</td>
                <td>{{$email->user()->get()[0]->name}}</td>
                <td>{{$email->category()->get()[0]->name}}</td>
                <td><a href="{{ route('admin-edit',['id' => $email->id ])}}" class="btn btn-primary">Edit</a></td>
                <td>
                    <form action="{{ route('admin-update-status',['id' => $email->id ])}}" method="post">

                        {{csrf_field()}}
                        <button id="startTimerModalBtn" type="submit" class="btn btn-primary">
                            Back to pool
                        </button>
                    </form>
                </td>

            </tr>

            @endforeach





        </tbody>
    </table>

</div>
@endsection