@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Verfique o seu email') }}</div>

                <div class="card-body">
                    @if (session('resent'))
                        <div class="alert alert-success" role="alert">
                            {{ __('A fresh verification link has been sent to your email address.') }}
                        </div>
                    @endif

                    {{ __('Antes de prosseguir, por favor verifique o seu e-mail para continuar.') }}
                    {{ __('Se não recebeu o e-mail') }},
                    {!! Form::open(['route' => 'verification.resend', 'class' => 'd-inline', 'role' => 'form', 'method' => 'POST']) !!}
                        {!! Form::submit(__('click aqui para re enviar'), ['class' => 'btn btn-link p-0 m-0 align-baseline']) !!}.
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
