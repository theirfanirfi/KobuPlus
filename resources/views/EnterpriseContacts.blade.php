@extends('layouts.masterlayout')
@section('maincontent')
 <div class="card" >
        @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    @if (session('error'))
        <div class="alert alert-danger">
            {{ session('error') }}
        </div>
    @endif
                        
                                <div class="header">
                                        <h4>Enterprise {{$enterprise->b_name}} Contacts</h4>
                                    <div class="col-xs-2" style="float:right;">
                                        <div class="icon-big icon-success text-center">
                                          <a href="{{ URL::to('/home/addContactForm/'.$enterprise->e_id )}}" class="btn btn-success"><i class="ti-plus"></i> Add Contact</a>  
                                        </div>
                                    </div> 
                                   </div>
    
                                
                                            <div class="content" id="changepage" >
                                                <div class="row">
                                                        <div class="col-md-12" style="" >
                                                        
                                                        <table class="table table-striped">
                                    <thead>
                                    
                                    	<th>Name</th>
                                    	<th>Action</th>
                                    </thead>
                                    <tbody>
                                      @foreach($contacts as $c)
                                        <tr>
                                        	
                                        	<td>{{$c->firstname. " ".$c->lastname}}</td>
                                        	<td><a href="{{URL::to('/home/editContact/')}}/{{$c->contact_id}}"><i class="fa fa-pencil"></i></a> | <a href="#" url_to_delete="{{URL::to('/home/deleteContact')}}/{{$c->contact_id}}" back_url="{{URL::to('/home/enterpriseContacts/')}}/{{$c->e_id}}"   onclick="deleteContact(this);"><i style="color;red;" class="fa fa-trash"></i></a></td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>

                                                         
                                                        </div>
                                            </div>
                                     
                            </div>
                            </div>

@endsection