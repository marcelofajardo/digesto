@php
    $brand = filament()->getBrandName();
@endphp

<a
    {{ $attributes->class([
        'text-xl font-bold tracking-tight',
        // Clases añadidas para centrar el texto y tomar todo el ancho
        'w-full',
        'text-center',
        'mx-auto',

        // Estilos de color por defecto (puedes ajustarlos)
        'text-gray-950 dark:text-white'
    ]) }}
    href="{{ filament()->getUrl() }}"
>
    {{ $brand }}
</a>
