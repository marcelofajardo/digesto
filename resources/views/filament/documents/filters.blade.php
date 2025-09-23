<div class="p-4 bg-white rounded shadow mb-4">
    <form wire:submit.prevent="render" class="flex flex-wrap gap-4">

        {{-- Año --}}
        <div>
            <label class="block text-sm font-medium">Año</label>
            <input type="number" wire:model.defer="anio"
                   class="border rounded px-2 py-1 w-32">
        </div>

        {{-- Tipo --}}
        <div>
            <label class="block text-sm font-medium">Tipo</label>
            <select wire:model="type_id" class="border rounded px-2 py-1">
                <option value="">-- Todos --</option>
                @foreach($types as $id => $nombre)
                    <option value="{{ $id }}">{{ $nombre }}</option>
                @endforeach
            </select>
        </div>

        {{-- Departamento --}}
        <div>
            <label class="block text-sm font-medium">Departamento</label>
            <select wire:model="department_id" class="border rounded px-2 py-1">
                <option value="">-- Todos --</option>
                @foreach($departments as $id => $name)
                    <option value="{{ $id }}">{{ $name }}</option>
                @endforeach
            </select>
        </div>

        {{-- Categoría dependiente --}}
        <div>
            <label class="block text-sm font-medium">Categoría</label>
            <select wire:model="category_id" class="border rounded px-2 py-1"
                @if(empty($categories)) disabled @endif>
                <option value="">-- Todas --</option>
                @foreach($categories as $id => $name)
                    <option value="{{ $id }}">{{ $name }}</option>
                @endforeach
            </select>
        </div>

        {{-- Botones --}}
        <div class="flex items-end gap-2">
            <button type="submit"
                    class="px-3 py-1 bg-blue-600 text-white rounded">
                Buscar
            </button>
            <button type="button" wire:click="resetFilters"
                    class="px-3 py-1 bg-gray-400 text-white rounded">
                Limpiar
            </button>
        </div>
    </form>
</div>
