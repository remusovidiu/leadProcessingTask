@extends('layouts.app')

@section('content')
<div class="jumbotron d-flex justify-content-center align-items-center flex-column border border-light rounded-10" style="margin-left:30px;margin-right:30px;">
    <div class="form-group row d-flex justify-content-center align-items-center flex-row ">
        <div class="flex-md-row m-4 ">
            <form method="POST" action="{{ route('categorize') }}">
                @csrf
                <input type="hidden" class="form-check-input" name="category" value="1">
                <input type="hidden" class="form-check-input" name="idEmail" value="{{$email[0]->id}}">
                <button type="submit" class="btn btn-secondary btn-lg search-btn">
                    Positive replay
                </button>
            </form>
        </div>

        <div class="flex-md-row m-4">
            <form method="POST" action="{{ route('categorize') }}">
                @csrf
                <input type="hidden" class="form-check-input" name="category" value="2">
                <input type="hidden" class="form-check-input" name="idEmail" value="{{$email[0]->id}}">
                <button type="submit" class="btn btn-secondary btn-lg search-btn">
                    Neutral replay
                </button>
            </form>
        </div>

        <div class="flex-md-row m-4">
            <form method="POST" action="{{ route('deleteEmail') }}">
                @csrf
                <input type="hidden" class="form-check-input" name="category" value="3">
                <input type="hidden" class="form-check-input" name="idEmail" value="{{$email[0]->id}}">
                <button type="submit" class="btn btn-secondary btn-lg search-btn">
                    Not a lead
                </button>
            </form>
        </div>
    </div>
    <div id="startTimerModalBtn" class="border border-dark rounded">
        <p class="text-center font-weight-bold p-2" style="font-size:20px">{{$email[0]->body}}</p>
    </div>
</div>

<div class="modal fade" id="sessionExpiredModal" tabindex="-1" role="dialog" aria-labelledby="sessionExpiredModal" aria-hidden="true" data-keyboard="false" data-backdrop="static">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header row justify-content-center" style="border-bottom:none">
        <h5 class="modal-title" id="exampleModalLongTitle">Session expired</h5>      
      </div>
      <div class="modal-body row justify-content-center">
        <p>Page will be refreshed because session has expired</p>
      </div>
      <div class="modal-footer row justify-content-center" style="border-top:none">        
        <button type="button" id="reloadPageBtn" data-id="{{$email[0]->id}}" class="btn btn-primary lg-2">OK</button>
      </div>
    </div>
  </div>
</div>

@endsection