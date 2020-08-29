@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            @include('../components/alert')
            <div class="card">
                <div class="card-header">Bine ai revenit {{ Auth::user()->name }}! Te rugam sa selectezi statusul:</div>

                <div class="card-body">

                    <form method="POST" action="{{ route('setStatusUser') }}">
                        @csrf
                        <div class="form-group row">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                    <label class="form-check-label" style="font-size:20px">
                                        <input style="zoom:1.3" type="radio" class="form-check-input" name="status" value="1">Available
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label" style="font-size:20px">
                                        <input style="zoom:1.3" type="radio" class="form-check-input" name="status" value="0">Away
                                    </label>
                                </div>
                            </div>
                        </div><!--  -->
                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button id="startTimerModalBtn" type="submit" class="btn btn-primary">
                                    Spor la treaba!
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection