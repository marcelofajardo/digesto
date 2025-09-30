<x-filament-panels::page.simple>
    {{-- Logo personalizado solo para login --}}
    <x-slot name="logo">
        <img src="{{ asset('images/logo-login.svg') }}"
             alt="Login Logo"
             class="h-16 mx-auto">
    </x-slot>

    {{-- Renderiza el formulario de login automáticamente --}}
    {{ $this->form }}

    {{-- Renderiza las acciones del formulario (botón de login, etc.) --}}
    {{ $this->form->getCachedActions() }}
</x-filament-panels::page.simple>
